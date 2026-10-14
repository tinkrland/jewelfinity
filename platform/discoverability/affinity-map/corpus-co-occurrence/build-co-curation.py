#!/usr/bin/env python3
"""phase-two, taste-act edition: curator co-endorsement family.

the behavioral data for the classic co-saves/co-follows family does not
exist yet (no end-user signals). what HAS landed is shopmy curator
endorsement: the 2026-10-14 volume battery's raw captures carry, per
product card, the named curators visible on the public card (up to six
avatar names plus a total count). a curator curating a product is a
taste act. two terms co-curated by the same curator is the first
human-behavior co-occurrence signal in the corpus.

inputs: the 36 raw firecrawl markdown captures in
marketplace-evidence/creator-commerce/shopmy-search-2026-10-14-vol/
titles matched to the governed phrase vocabularies (same matcher as
build-co-occurrence.py).

outputs: co-curation.jsonl (all term pairs with shared-curator counts
and exemplar curators) and load-cocuration.cypher
((:Term)-[:CO_CURATED_WITH]->(:Term) for pairs with >=2 shared
curators), applied after load.cypher.

honest limits: only the visible avatar names are captured (cards cap
display, so per-product curator sets are partial -> shared-curator
counts are LOWER BOUNDS); the battery is query-sampled, so the product
set is not the curators' full shops; display names, not account ids.
"""
import json, re, hashlib, pathlib, itertools, collections

ROOT = pathlib.Path(__file__).resolve().parents[4]
VOCABS = ROOT / "offerings" / "styles"
RAW = ROOT / "platform" / "discoverability" / "marketplace-evidence" / "creator-commerce" / "shopmy-search-2026-10-14-vol"
OUT = pathlib.Path(__file__).resolve().parent

def tokens(s):
    return [t for t in re.split(r"[^a-z0-9]+", (s or "").lower()) if t]

phrase_index = []
for vf in sorted(VOCABS.glob("*-vocabulary.jsonl")):
    for line in vf.read_text().splitlines():
        if not line.strip(): continue
        rec = json.loads(line)
        tid = rec.get("style_id") or rec.get("symbol_id") or rec.get("context_id")
        for ph in rec.get("phrases") or []:
            phrase_index.append((tid, tokens(ph)))

def match_terms(tt):
    matched = set()
    for term, ph in phrase_index:
        n = len(ph)
        for i in range(len(tt) - n + 1):
            if tt[i:i+n] == ph:
                matched.add(term); break
    return matched

prod_img = re.compile(r'^\[!\[([^\]]*)\]\(https://static\.shopmy\.us/uploads/[^)]*\)\]\(https://shopmy\.us/shop/product/(\d+)')
avatar = re.compile(r'^!\[([^\]]+)\]\(https://static\.shopmy\.us/uploads/img-user')
cnt = re.compile(r'^(\d+) curators$')
title_link = re.compile(r'^\[([^\]]+)\]\(https://shopmy\.us/shop/product/(\d+)')

# product_id -> {title, curators(set), curator_count, queries(set)}
products = collections.defaultdict(lambda: {"title": None, "curators": set(), "curator_count": 0, "queries": set()})
files = sorted(RAW.glob("shopmy-*.raw.md"))
for p in files:
    q = p.name.replace("shopmy-", "").replace(".raw.md", "").replace("-", " ")
    lines = [l.strip() for l in p.read_text().splitlines() if l.strip()]
    # segments: a card's content runs from one product image link to the
    # next; cards whose image was stripped by firecrawl still carry their
    # avatars + count + title link inside the segment
    segs, cur = [], []
    for l in lines:
        if prod_img.match(l):
            segs.append(cur); cur = [l]
        else:
            cur.append(l)
    segs.append(cur)
    for seg in segs:
        pid, title, avatars, count = None, None, set(), 0
        for l in seg:
            m = prod_img.match(l)
            if m: pid = m.group(2); continue
            a = avatar.match(l)
            if a: avatars.add(a.group(1)); continue
            c = cnt.match(l)
            if c: count = int(c.group(1)); continue
            t = title_link.match(l)
            if t and not l.startswith("[![" ):
                pid, title = t.group(2), t.group(1)
        if pid and title:
            d = products[pid]
            d["title"] = d["title"] or title
            d["curators"] |= avatars
            d["curator_count"] = max(d["curator_count"], count)
            d["queries"].add(q)

# term map
product_terms = {}
for pid, d in products.items():
    if d["title"]:
        tt = match_terms(tokens(d["title"]))
        if tt: product_terms[pid] = tt

# curator -> terms
curator_terms = collections.defaultdict(set)
for pid, terms in product_terms.items():
    for cur in products[pid]["curators"]:
        curator_terms[cur].update(terms)

pairs = collections.defaultdict(lambda: {"shared": set(), "products": set()})
for cur, terms in curator_terms.items():
    for a, b in itertools.combinations(sorted(terms), 2):
        pairs[(a, b)]["shared"].add(cur)

# exemplar products per pair (a product whose title matched both terms)
for pid, terms in product_terms.items():
    for a, b in itertools.combinations(sorted(terms), 2):
        if (a, b) in pairs:
            pairs[(a, b)]["products"].add(products[pid]["title"][:90])

input_hash = hashlib.sha256(json.dumps(
    {f.name: hashlib.sha256(f.read_bytes()).hexdigest() for f in files}, sort_keys=True).encode()).hexdigest()

with open(OUT / "co-curation.jsonl", "w") as f:
    for (a, b), d in sorted(pairs.items()):
        f.write(json.dumps({
            "term_a": a, "term_b": b, "shared_curators": sorted(d["shared"]),
            "shared_count": len(d["shared"]), "exemplars": sorted(d["products"])[:3],
            "input_hash": input_hash}, ensure_ascii=False) + "\n")

def cy(v):
    if isinstance(v, (int, float)): return repr(v)
    s = str(v).replace("\\", "\\\\").replace("'", "\\'")
    return f"'{s}'"
def props(d):
    return "{" + ", ".join(f"{k}: {cy(v)}" for k, v in sorted(d.items())) + "}"

stmts = []
for (a, b), d in sorted(pairs.items()):
    if len(d["shared"]) < 2: continue
    stmts.append(
        f"MATCH (a:Term {{id: '{a}'}}), (b:Term {{id: '{b}'}}) "
        f"MERGE (a)-[:CO_CURATED_WITH {props({'shared_curators': len(d['shared']), 'curators': ', '.join(sorted(d['shared'])[:5]), 'input_hash': input_hash})}]->(b)")
with open(OUT / "load-cocuration.cypher", "w") as f:
    f.write("// phase-two taste-act family: shopmy curator co-endorsement\n")
    f.write(f"// input_hash {input_hash}\n// apply after load.cypher\n")
    for s in stmts: f.write(s + ";\n")

print(f"products: {len(products)}, with named curators: {sum(1 for d in products.values() if d['curators'])}, "
      f"with vocab terms: {len(product_terms)}")
print(f"distinct curators endorsing term-bearing products: {len(curator_terms)}")
print(f"term pairs co-curated: {len(pairs)} (edges with >=2 shared curators: {len(stmts)})")
for (a, b), d in sorted(pairs.items(), key=lambda kv: -len(kv[1]["shared"]))[:10]:
    print(f"  {len(d['shared'])}  {a} + {b}   {', '.join(sorted(d['shared'])[:3])}")
