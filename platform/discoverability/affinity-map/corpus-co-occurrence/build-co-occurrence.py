#!/usr/bin/env python3
"""phase-two, seller-register edition: corpus term co-occurrence.

reads every committed .solimet.jsonl gated corpus (marketplace-evidence,
minus the targeted co-occurrence-probes, which are both-term by
construction), token-boundary matches titles against the governed
phrase vocabularies (same matcher as the sim harness), and emits:

  co-occurrence.jsonl      every term pair co-titled in a clean title,
                           with counts, register/platform split,
                           exemplars and the query-bias share
  load-cooccurrence.cypher  MERGE statements for pairs with count>=3,
                           (:Term)-[:CO_OCCURS_WITH]->(:Term), the
                           separate relationship family per schema.md
  provenance.json entry is written by hand in ../marketplace-evidence

deterministic: sorted inputs, sorted pairs, no wall-clock, no network.
co-titling overstates adjacency (seller keyword stuffing) - the
honest guard is the query_bias share: how many of the pair's titles
came from a query naming one of the two terms.
"""
import json, re, hashlib, pathlib, itertools, collections

ROOT = pathlib.Path(__file__).resolve().parents[4]  # jewelfinity/
EV = ROOT / "platform" / "discoverability" / "marketplace-evidence"
VOCABS = ROOT / "offerings" / "styles"
OUT = pathlib.Path(__file__).resolve().parent

# probes are targeted both-term evidence, excluded (documented in README)
EXCLUDE_DIRS = {"co-occurrence-probes", "querit-2026-10-09", "querit-citations-2026-10-10"}

def register_for(p):
    parts = p.relative_to(EV).parts
    if parts[0] == "creator-commerce": return "creator-commerce"
    if parts[0] == "risk-registers": return "risk-register"
    if parts[0].startswith(("wear", "poshmark-wear", "mercari-wear")): return "wear"
    return "marketplace"

def platform_for(p):
    name = p.name.lower()
    for plat in ("ebay","etsy","mercari","poshmark","shein","shopify","shopmy"):
        if plat in name: return plat
    return "mixed"

def tokens(s):
    return [t for t in re.split(r"[^a-z0-9]+", (s or "").lower()) if t]

# --- phrase index (same shape as the sim harness)
phrase_index = []  # (term, vocabulary, phrase_tokens list)
for vf in sorted(VOCABS.glob("*-vocabulary.jsonl")):
    for line in vf.read_text().splitlines():
        if not line.strip(): continue
        rec = json.loads(line)
        tid = rec.get("style_id") or rec.get("symbol_id") or rec.get("context_id")
        for ph in rec.get("phrases") or []:
            phrase_index.append((tid, rec["vocabulary"], tokens(ph)))

def match_terms(title_tokens):
    matched = set()
    for term, vocab, ph in phrase_index:
        n = len(ph)
        for i in range(len(title_tokens) - n + 1):
            if title_tokens[i:i+n] == ph:
                matched.add(term); break
    return matched

# --- pass 1: corpus scan
inputs = []
for p in sorted(EV.rglob("*.solimet.jsonl")):
    if any(d in EXCLUDE_DIRS for d in p.relative_to(EV).parts): continue
    inputs.append(p)

pairs = collections.defaultdict(lambda: {
    "count": 0, "registers": collections.Counter(), "platforms": collections.Counter(),
    "exemplars": [], "query_bias": 0})
single = collections.Counter()
titles_scanned = 0
titles_multi = 0

for p in inputs:
    reg, plat = register_for(p), platform_for(p)
    for line in p.read_text().splitlines():
        if not line.strip(): continue
        rec = json.loads(line)
        title = rec.get("title") or ""
        tt = tokens(title)
        if not tt: continue
        titles_scanned += 1
        matched = match_terms(tt)
        for term in matched: single[term] += 1
        if len(matched) < 2: continue
        titles_multi += 1
        q = tokens(rec.get("query") or "")
        qset = set(q)
        for a, b in itertools.combinations(sorted(matched), 2):
            d = pairs[(a, b)]
            d["count"] += 1
            d["registers"][reg] += 1
            d["platforms"][plat] += 1
            if len(d["exemplars"]) < 3 and title not in d["exemplars"]:
                d["exemplars"].append(title)
            # query names one of the two terms?
            ph_words = set()
            for term, vocab, ph in phrase_index:
                if term in (a, b): ph_words.update(ph)
            if ph_words & qset: d["query_bias"] += 1

input_hashes = {str(p.relative_to(ROOT)): hashlib.sha256(p.read_bytes()).hexdigest()
                for p in inputs}
input_hash = hashlib.sha256(json.dumps(input_hashes, sort_keys=True).encode()).hexdigest()

# --- outputs
with open(OUT / "co-occurrence.jsonl", "w") as f:
    for (a, b), d in sorted(pairs.items()):
        f.write(json.dumps({
            "term_a": a, "term_b": b, "count": d["count"],
            "registers": dict(sorted(d["registers"].items())),
            "platforms": dict(sorted(d["platforms"].items())),
            "query_bias": d["query_bias"], "exemplars": d["exemplars"],
            "input_hash": input_hash}, ensure_ascii=False) + "\n")

def cy(v):
    if v is None: return "null"
    if isinstance(v, bool): return "true" if v else "false"
    if isinstance(v, (int, float)): return repr(v)
    s = str(v).replace("\\", "\\\\").replace("'", "\\'")
    return f"'{s}'"

def props(d):
    return "{" + ", ".join(f"{k}: {cy(v)}" for k, v in sorted(d.items())) + "}"

stmts = []
for (a, b), d in sorted(pairs.items()):
    if d["count"] < 3: continue
    stmts.append(
        f"MATCH (a:Term {{id: '{a}'}}), (b:Term {{id: '{b}'}}) "
        f"MERGE (a)-[:CO_OCCURS_WITH {props({'count': d['count'], 'registers': ','.join(sorted(d['registers'])), 'platforms': ','.join(sorted(d['platforms'])), 'query_bias': d['query_bias'], 'exemplar': d['exemplars'][0], 'prior_input_hash': input_hash})}]->(b)")
with open(OUT / "load-cooccurrence.cypher", "w") as f:
    f.write("// phase-two seller-register co-occurrence, separate relationship family\n")
    f.write(f"// input_hash {input_hash}\n")
    f.write("// apply after load.cypher (terms must exist)\n")
    for s in stmts: f.write(s + ";\n")

print(f"titles scanned: {titles_scanned}, multi-term titles: {titles_multi}")
print(f"distinct pairs: {len(pairs)}, pairs with count>=3 (graph edges): {len(stmts)}")
print(f"terms seen at all: {len(single)}")
top = sorted(pairs.items(), key=lambda kv: -kv[1]['count'])[:12]
for (a,b), d in top:
    print(f"  {d['count']:4}  {a} + {b}  (bias {d['query_bias']}) {d['exemplars'][0][:60]}")
