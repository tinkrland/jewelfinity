#!/usr/bin/env python3
"""popularity prior for suggest(): per-term prevalence across the committed
gated corpora. deterministic over the same 20 .solimet.jsonl inputs as
build-co-occurrence.py (co-occurrence-probes excluded); token-boundary
phrase matching, same matcher. a term's prevalence is the number of clean
titles carrying it. qloo lesson applied: popularity is a PRIOR inside the
fusion, never a filter."""
import json, re, hashlib, pathlib

ROOT = pathlib.Path(__file__).resolve().parents[4]
EV = ROOT / "platform" / "discoverability" / "marketplace-evidence"
VOCABS = ROOT / "offerings" / "styles"
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

inputs, prevalence = {}, {}
for f in sorted(EV.rglob("*.solimet.jsonl")):
    if "co-occurrence-probes" in f.parts: continue
    inputs[str(f.relative_to(ROOT))] = hashlib.sha256(f.read_bytes()).hexdigest()
    for line in f.read_text().splitlines():
        if not line.strip(): continue
        rec = json.loads(line)
        title = rec.get("title") or ""
        if not rec.get("solimet_title_check"): continue
        for term in match_terms(tokens(title)):
            prevalence[term] = prevalence.get(term, 0) + 1

input_hash = hashlib.sha256(json.dumps(inputs, sort_keys=True).encode()).hexdigest()
with open(OUT / "prevalence.jsonl", "w") as f:
    for term, n in sorted(prevalence.items(), key=lambda kv: (-kv[1], kv[0])):
        f.write(json.dumps({"term": term, "title_count": n, "input_hash": input_hash}) + "\n")
print(f"prevalence.jsonl: {len(prevalence)} terms, {sum(prevalence.values())} term-bearing titles, inputs {len(inputs)}")
print("top:", sorted(prevalence.items(), key=lambda kv: -kv[1])[:6])
