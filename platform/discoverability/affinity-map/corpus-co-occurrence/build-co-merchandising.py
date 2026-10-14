#!/usr/bin/env python3
"""phase-two, merchandising-act edition: brand collection co-membership.

owner 2026-10-14: latent similarities do not need human endorsement to
prop up - a brand's own merchandising structure is the act. a themed
collection (aweinspired "Tarot", caitlyn "Celestial Jewelry",
evryjewels "Y2K Edit") is the brand asserting its products share a
style. two vocabulary terms whose products sit in the same themed
collection are co-merchandised: brand-asserted, endorsement-free
similarity.

inputs: marketplace-evidence/brand-merchandising-structure/ (23
collection captures, three shopify storefronts, public products.json
endpoints, capture-manifest.json carries urls + sha256s).

outputs: co-merchandising.jsonl (all term pairs with per-collection
support and exemplars) and load-comerchandised.cypher
((:Term)-[:CO_MERCHANDISED_WITH]->(:Term) for pairs with support in
two or more products), applied after load.cypher.

honest limits: one page per collection (cap 250; caitlyn's
celestial/vintage/golden-goddess collections are larger); titles are
brand-catalog language, so term projection is gated by the phrase
vocabulary's coverage of each brand's naming; evryjewels' main theme
axes (y2k, pearl, charm, butterfly, initial, angel number) are
outside the current solimet vocabulary - recorded as a coverage
finding, vocabulary changes stay owner-authorized.
"""
import json, re, hashlib, pathlib, itertools, collections
import importlib.util

ROOT = pathlib.Path(__file__).resolve().parents[4]
EV = ROOT / "platform" / "discoverability" / "marketplace-evidence"
BM = EV / "brand-merchandising-structure"
VOCABS = ROOT / "offerings" / "styles"
OUT = pathlib.Path(__file__).resolve().parent

spec = importlib.util.spec_from_file_location("prs", EV / "symbol-segment" / "process-raw-segments.py")
prs = importlib.util.module_from_spec(spec); spec.loader.exec_module(prs)

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

manifest = json.load(open(BM / "capture-manifest.json"))
collection_products = {}  # brand/handle -> list of (pid, title)
for key in manifest:
    p = BM / (key + ".json")
    d = json.loads(p.read_text())
    prods = []
    seen = set()
    for prod in d.get("products", []):
        if prod["id"] in seen: continue
        seen.add(prod["id"])
        prods.append((str(prod["id"]), prod.get("title") or ""))
    collection_products[key] = prods

pairs = collections.defaultdict(lambda: {
    "support": collections.Counter(), "exemplars": [], "clean": 0, "total": 0})
single = collections.Counter()
scanned = 0
for key, prods in sorted(collection_products.items()):
    brand, handle = key.split("/")
    matched_titles = 0
    for pid, title in prods:
        scanned += 1
        tt = match_terms(tokens(title))
        if not tt: continue
        matched_titles += 1
        clean = prs.solimet_check(title)
        for term in tt: single[term] += 1
        for a, b in itertools.combinations(sorted(tt), 2):
            d = pairs[(a, b)]
            d["support"][key] += 1
            d["total"] += 1
            if clean:
                d["clean"] += 1
                if len(d["exemplars"]) < 3:
                    d["exemplars"].append(f"{brand}/{handle}: {title[:80]}")
    print(f"{key:48} {len(prods):3} products, {matched_titles:3} term-bearing")

input_hash = hashlib.sha256(json.dumps(manifest, sort_keys=True).encode()).hexdigest()

with open(OUT / "co-merchandising.jsonl", "w") as f:
    for (a, b), d in sorted(pairs.items()):
        f.write(json.dumps({
            "term_a": a, "term_b": b, "support": dict(sorted(d["support"].items())),
            "count": d["total"], "clean": d["clean"], "exemplars": d["exemplars"],
            "input_hash": input_hash}, ensure_ascii=False) + "\n")

def cy(v):
    if isinstance(v, (int, float)): return repr(v)
    s = str(v).replace("\\", "\\\\").replace("'", "\\'")
    return f"'{s}'"
def props(d):
    return "{" + ", ".join(f"{k}: {cy(v)}" for k, v in sorted(d.items())) + "}"

stmts = []
for (a, b), d in sorted(pairs.items()):
    if d["total"] < 2: continue
    colls = ", ".join(sorted(d["support"]))
    stmts.append(
        f"MATCH (a:Term {{id: '{a}'}}), (b:Term {{id: '{b}'}}) "
        f"MERGE (a)-[:CO_MERCHANDISED_WITH {props({'count': d['total'], 'clean': d['clean'], 'collections': colls, 'input_hash': input_hash})}]->(b)")
with open(OUT / "load-comerchandised.cypher", "w") as f:
    f.write("// phase-two merchandising-act family: brand collection co-membership\n")
    f.write(f"// input_hash {input_hash}\n// apply after load.cypher\n")
    for s in stmts: f.write(s + ";\n")

print(f"\nscanned {scanned} products; terms seen: {len(single)}; pairs: {len(pairs)}; edges (count>=2): {len(stmts)}")
for (a, b), d in sorted(pairs.items(), key=lambda kv: -kv[1]["total"])[:12]:
    print(f"  {d['total']:4} {a} + {b}  [{', '.join(sorted(d['support'])[:2])}]")

# --- merchandising structure: cross-collection co-membership (brand taxonomy)
# the endorsement-free similarity structure itself. the brand asserting a
# product belongs to two themed collections is the latent-similarity act;
# term projection below is gated by the vocabulary's coverage of the
# brands' theme axes.
COLLECTION_TERM_MAP = {  # curated, declared, not inferred (visible here)
  "aweinspired/astrology-celestial": "celestial",
  "aweinspired/astrology-celestial-charms-amulets": "celestial",
  "aweinspired/triple-moon": "celestial",
  "aweinspired/tarot": "tarot_family",          # family-level: cards unnamed
  "caitlynminimalist/celestial": "celestial",
  # NOT mapped (honest): vintage/vintage-finds = era-conflated; golden-goddess,
  # goddesses, medusa, hearts, the-snake-collection, y2k, pearl, butterfly,
  # charms, initial, angel-number = theme axes OUTSIDE the solimet vocabulary
}
p2c = collections.defaultdict(set)
p2colls_title = {}
for key in collection_products:
    for pid, title in collection_products[key]:
        p2c[(key.split("/")[0], pid)].add(key)
        p2colls_title[(key.split("/")[0], pid)] = title
overlaps = []
for (brand, pid), colls in p2c.items():
    if len(colls) < 2: continue
    for a, b in itertools.combinations(sorted(colls), 2):
        overlaps.append((a, b, brand, pid))
ov_count = collections.Counter((a, b) for a, b, _, _ in overlaps)
with open(OUT / "collection-overlaps.jsonl", "w") as f:
    for (a, b), n in sorted(ov_count.items()):
        ex = [t for (aa, bb, br, pid), t in [] ][:0]
        f.write(json.dumps({
            "collection_a": a, "collection_b": b, "brand": a.split("/")[0],
            "shared_products": n,
            "term_a": COLLECTION_TERM_MAP.get(a),
            "term_b": COLLECTION_TERM_MAP.get(b),
            "input_hash": input_hash}, ensure_ascii=False) + "\n")
print(f"collection-overlaps.jsonl: {len(ov_count)} collection pairs, "
      f"{sum(ov_count.values())} cross-membership products")
mapped = [(a, b, n) for (a, b), n in sorted(ov_count.items())
          if COLLECTION_TERM_MAP.get(a) and COLLECTION_TERM_MAP.get(b)
          and COLLECTION_TERM_MAP[a] != COLLECTION_TERM_MAP[b]]
print(f"cross-TERM edges available after the curated map: {len(mapped)}")
for m in mapped: print("   ", m)
