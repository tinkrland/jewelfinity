#!/usr/bin/env python3
"""deterministic loader: committed artifacts -> falkordb affinity
provenance graph. emits load.cypher (sorted, stable ids, no wall-clock);
apply with GRAPH.QUERY one statement at a time. rebuildable by design:
MERGE everywhere, rerunning is idempotent."""
import json, pathlib, sys

ROOT = pathlib.Path(__file__).resolve().parents[4]  # jewelfinity/
AM = ROOT / "platform" / "discoverability" / "affinity-map"
EV = ROOT / "platform" / "discoverability" / "marketplace-evidence"

def cy(v):
    if v is None: return "null"
    if isinstance(v, bool): return "true" if v else "false"
    if isinstance(v, (int, float)): return repr(v)
    s = str(v).replace("\\", "\\\\").replace("'", "\\'")
    return f"'{s}'"

def props(d):
    return "{" + ", ".join(f"{k}: {cy(v)}" for k, v in sorted(d.items())) + "}"

# runs that must NEVER support a term, even with items present:
# failed pulls (products 0), empty runs (items 0), and captures
# explicitly excluded by note (solisdivinitytarot sells tarot DECKS,
# not jewelry - "excluded as evidence" in its own provenance note).
NON_EVIDENCE = {
    ("symbol-segment capture 2026-10-09", "solisdivinitytarot.com"),
}

# curated evidence->term support links. declared, not inferred.
# (evidence key -> term ids) edit HERE when curation changes.
SUPPORTS_MAP = {
    "symbol-segment capture 2026-10-09": [
        "celestial", "sign_aries", "sign_taurus", "sign_gemini",
        "sign_cancer", "sign_leo", "sign_virgo", "sign_libra",
        "sign_scorpio", "sign_sagittarius", "sign_capricorn",
        "sign_aquarius", "sign_pisces"],
    "drift-edge co-occurrence probes 2026-10-09": [
        "retro", "mid_century_modernist", "celestial", "art_deco"],
    "ebay-OL5BTOSiu8QiiMBjo": [
        "georgian", "victorian", "art_nouveau", "edwardian", "art_deco",
        "retro", "mid_century_modernist", "brutalist", "organic_modern",
        "celestial", "gothic", "biker", "egyptian_revival"],
    "etsy-1500": [
        "georgian", "victorian", "art_nouveau", "edwardian", "art_deco",
        "retro", "mid_century_modernist", "brutalist", "organic_modern",
        "celestial", "gothic", "biker", "egyptian_revival"],
}
# query-level curation: a run whose query names a style supports that term.
QUERY_TERM_MAP = {
    "everyday necklace": ["everyday_wear"],
    "stackable bangle": ["stacks"],
    "wedding band": ["ceremony_commitment"],
    "anniversary band": ["ceremony_commitment"],
    # ceremony alternatives probed 2026-10-10 (eternity/promise).
    # note: eternity band is stone-dominated (etsy 3/100, ebay 0/60
    # clean) - weak evidence, but what exists is honest.
    "eternity band": ["ceremony_commitment"],
    "promise ring": ["ceremony_commitment"],
    # zodiac queries now map per-query (was capture-level only, so
    # the poshmark zodiac run sat unlinked. fixed 2026-10-10).
    # tarot queries now map to the 20 evidenced major-arcana cards
    # (owner-authorized 2026-10-10; emperor/hierophant absent: zero
    # title evidence in 300 pooled segment titles - honest thinness).
    "zodiac necklace": [
        "sign_aries", "sign_taurus", "sign_gemini", "sign_cancer",
        "sign_leo", "sign_virgo", "sign_libra", "sign_scorpio",
        "sign_sagittarius", "sign_capricorn", "sign_aquarius",
        "sign_pisces"],
    "alchemy necklace": ["metal_mercury"],
    "alchemical symbols necklace": [
        "element_air", "element_earth", "element_fire", "element_water",
        "metal_mercury"],
    "brutalist jewelry": ["brutalist"], "organic modern jewelry": ["organic_modern"],
    "georgian jewelry": ["georgian"], "victorian jewelry": ["victorian"],
    "art nouveau jewelry": ["art_nouveau"], "edwardian jewelry": ["edwardian"],
    "art deco jewelry": ["art_deco"], "retro 1940s jewelry": ["retro"],
    "mid century modern jewelry": ["mid_century_modernist"],
    "tarot jewelry": ["tarot_fool", "tarot_magician", "tarot_high_priestess", "tarot_empress", "tarot_lovers", "tarot_chariot", "tarot_strength", "tarot_hermit", "tarot_wheel_of_fortune", "tarot_justice", "tarot_hanged_man", "tarot_death", "tarot_temperance", "tarot_devil", "tarot_tower", "tarot_star", "tarot_moon", "tarot_sun", "tarot_judgement", "tarot_world"],
    "tarot necklace": ["tarot_fool", "tarot_magician", "tarot_high_priestess", "tarot_empress", "tarot_lovers", "tarot_chariot", "tarot_strength", "tarot_hermit", "tarot_wheel_of_fortune", "tarot_justice", "tarot_hanged_man", "tarot_death", "tarot_temperance", "tarot_devil", "tarot_tower", "tarot_star", "tarot_moon", "tarot_sun", "tarot_judgement", "tarot_world"],
    "major arcana necklace": ["tarot_fool", "tarot_magician", "tarot_high_priestess", "tarot_empress", "tarot_lovers", "tarot_chariot", "tarot_strength", "tarot_hermit", "tarot_wheel_of_fortune", "tarot_justice", "tarot_hanged_man", "tarot_death", "tarot_temperance", "tarot_devil", "tarot_tower", "tarot_star", "tarot_moon", "tarot_sun", "tarot_judgement", "tarot_world"],
    "celestial jewelry": ["celestial"], "gothic jewelry": ["gothic"],
    "biker jewelry": ["biker"], "egyptian revival jewelry": ["egyptian_revival"],
}

def main():
    # two passes: ALL nodes first, then ALL edges. an edge statement
    # MATCHes both endpoints; if an endpoint is created later the MATCH
    # silently binds nothing and the edge is lost with no error. found by
    # running against live falkordb 2026-10-09 (83 of 162 edges lost).
    out = ["// affinity provenance graph load - deterministic, idempotent"]
    nodes, edges = [], []
    table = json.load(open(AM / "affinity-table.json"))
    prior = {
        "engine_version": table["summary"].get("engine_version", "0.1.0"),
        "table_schema": table["schema"],
        "input_hash": table["determinism"]["input_hash"] if "determinism" in table else table.get("input_hash"),
        "output_hash": table["determinism"]["output_hash"] if "determinism" in table else table.get("output_hash"),
        "built": table["summary"].get("built") or table.get("built") or "",
    }
    out.append(f"CREATE (p:Prior {props(prior)})")
    ih = prior["input_hash"]

    for term in table["terms"]:
        t = {"id": term["term"], "vocabulary": term["vocabulary"], "name": term["name"],
             "version": term.get("version"), "updated": term.get("updated"),
             "norm": term.get("norm"), "facet_count": term.get("facet_count")}
        out.append(f"MERGE (t:Term {{id: {cy(term['term'])}}}) SET t += {props(t)}")
        for fname, facet in sorted(term.get("facets", {}).items()):
            fclass = facet.get("class")
            out.append(f"MERGE (f:Facet {{name: {cy(fname)}, class: {cy(fclass)}}})")
            out.append(f"MATCH (t:Term {{id: {cy(term['term'])}}}), (f:Facet {{name: {cy(fname)}, class: {cy(fclass)}}}) "
                       f"MERGE (t)-[h:HAS_FACET]->(f) SET h += {props({'raw': facet.get('raw'), 'weight': facet.get('weight'), 'sources': (facet.get('sources') or [])})}")
        for rank, nb in enumerate(term.get("neighbors", []), 1):
            e = {"score": nb["score"], "rank": rank, "prior_input_hash": ih}
            out.append(f"MATCH (a:Term {{id: {cy(term['term'])}}}), (b:Term {{id: {cy(nb['term'])}}}) "
                       f"MERGE (a)-[n:NEIGHBOR_OF]->(b) SET n += {props(e)}")
            for sf in nb.get("shared_facets", []):
                s = {"facet": sf["facet"], "left": sf["left"], "right": sf["right"],
                     "left_class": sf.get("left_class"), "right_class": sf.get("right_class"),
                     "contribution": sf.get("contribution"), "prior_input_hash": ih}
                out.append(f"MATCH (a:Term {{id: {cy(term['term'])}}}), (b:Term {{id: {cy(nb['term'])}}}) "
                           f"MERGE (a)-[x:SHARES_FACET {{facet: {cy(sf['facet'])}}}]->(b) SET x += {props(s)}")

    # evidence provenance
    prov = json.load(open(EV / "provenance.json"))
    ev_i = 0
    for capture in prov.get("runs", []):
        if "runs" in capture:
            name = capture.get("name") or f"{capture.get('platform','?')}-{capture.get('items','?')}"
            run_list = capture["runs"]
        else:
            # flat single-run entry (early provenance shape)
            name = f"{capture.get('platform','?')}-{capture.get('run_id') or capture.get('items','?')}"
            run_list = [capture]
        for run in run_list:
            if not isinstance(run, dict): continue
            # a run with zero items is NOT evidence (e.g. mercari alchemy:
            # 0 listings). record it as an Evidence node for transparency,
            # but never let it SUPPORT a term. found 2026-10-10: a 0-item
            # mercari run was SUPPORTS-ing element_* and metal_mercury.
            zero_items = (run.get("items") == 0) or (run.get("products") == 0)
            ev_i += 1
            evid = f"ev-{ev_i:03d}"
            e = {"evidence_id": evid, "kind": "apify_run" if "run_id" in run else (run.get("source") or "unknown"),
                 "platform": run.get("platform"), "query": run.get("query") or run.get("store"),
                 "run_id": run.get("run_id"), "sha256": run.get("sha256"), "items": run.get("items"),
                 "note": run.get("note"), "capture": name}
            out.append(f"MERGE (e:Evidence {{evidence_id: {cy(evid)}}}) SET e += {props(e)}")
            non_evidence = (name, run.get("query") or run.get("store")) in NON_EVIDENCE
            # union (deduped), not OR: a run in a curated capture whose
            # query is also query-mapped supports both lists. found
            # 2026-10-10: the OR short-circuited, so the 5 tarot runs in
            # the symbol-segment capture got celestial/signs but no card
            # terms (capture-level list won before QUERY_TERM_MAP was
            # consulted). the union changes exactly those 5 runs.
            terms = []
            if not (zero_items or non_evidence):
                for t in (SUPPORTS_MAP.get(name, []) + QUERY_TERM_MAP.get(run.get("query"), [])):
                    if t not in terms: terms.append(t)
            for tid in terms:
                out.append(f"MATCH (e:Evidence {{evidence_id: {cy(evid)}}}), (t:Term {{id: {cy(tid)}}}) "
                           f"MERGE (e)-[s:SUPPORTS]->(t) SET s += {props({'items': run.get('items'), 'note': (run.get('note') or '')[:120]})}")

    # profiles + latent blend results
    pin = json.load(open(AM / "corpus/expected-top-k.json"))
    for prof in pin.get("profiles", []):
        pid = prof["profile_id"]
        out.append(f"MERGE (p:Profile {{profile_id: {cy(pid)}}}) SET p += {props({'version': prof.get('profile_version'), 'status': prof.get('status')})}")
        prof_file = json.load(open(AM / "corpus" / "profiles" / prof["file"]))
        seeds = prof_file.get("seeded_affinities") or prof_file.get("seeds") or {}
        for seed, w in sorted(seeds.items()):
            out.append(f"MATCH (p:Profile {{profile_id: {cy(pid)}}}), (t:Term {{id: {cy(seed)}}}) "
                       f"MERGE (p)-[sd:SEEDS]->(t) SET sd += {props({'weight': w})}")
        for rank, exp in enumerate(prof.get("expected_topk", []), 1):
            out.append(f"MATCH (p:Profile {{profile_id: {cy(pid)}}}), (t:Term {{id: {cy(exp['term'])}}}) "
                       f"MERGE (p)-[xa:EXPECTED_AFFINITY]->(t) SET xa += {props({'score': exp['score'], 'rank': rank, 'method': 'latent-blend', 'prior_input_hash': ih})}")

    header, body = out[0], out[1:]
    node_stmts = [l for l in body if not l.startswith("MATCH ")]
    edge_stmts = [l for l in body if l.startswith("MATCH ")]
    print("\n".join([header] + node_stmts + edge_stmts))

if __name__ == "__main__":
    main()
