#!/usr/bin/env python3
"""segment-solimet v3 (v2 + moissanite/spinel stone words; v2 was v1 + non-jewelry media words): process raw segment captures into solimet-checked
jsonl for the segment-inclusive sim corpus.

the raw .json captures (apify/actor dumps) predate the processed jsonl
convention. this script is the deterministic pass that gives them
`solimet_title_check` and a uniform record shape, so the sim harness
can load them alongside the main corpus.

calibration (2026-10-10): reproduces the recorded clean counts exactly
for etsy-tarot (94), ebay-tarot (89), etsy-zodiac (71); mercari-us-tarot
85 vs recorded 88 and shein-tarot 79 vs recorded 80 - the earlier
inline passes were not perfectly uniform; this gate is the conservative
variant (title names a stone/plastic/non-jewelry term -> flagged).

usage: python3 process-raw-segments.py   (writes *.solimet.jsonl)
"""
import json, re, os, hashlib

HERE = os.path.dirname(os.path.abspath(__file__))
PROV = os.path.join(HERE, "..", "provenance.json")

STONE = ["diamond", "diamonds", "cz", "cubic zirconia", "zircon", "zirconia",
    "crystal", "crystals", "gemstone", "gemstones", "gem stone", "opal",
    "opals", "pearl", "pearls", "moonstone", "emerald", "emeralds",
    "amethyst", "topaz", "sapphire", "sapphires", "ruby", "rubies",
    "birthstone", "birthstones", "rhinestone", "rhinestones", "quartz",
    "onyx", "turquoise", "agate", "jade", "lapis", "malachite", "obsidian",
    "tourmaline", "citrine", "garnet", "garnets", "aquamarine", "peridot",
    "carnelian", "jasper", "amber", "stone", "stones", "gem", "gems",
    # segment-solimet v3 (2026-10-12): moissanite/spinel were missing - the
    # wear-battery regate showed 122 moissanite-set bands (eternity/anniversary/
    # wedding/promise) passing as solimet-clean. both are stones, zero
    # collision risk on metal-only titles.
    "moissanite", "spinel"]
PLASTIC = ["resin", "acrylic", "plastic", "polymer", "clay"]
NON_JEWELRY = ["t-shirt", "tee shirt", "shoe charm", "gift card", "sticker",
    # segment-solimet-v2 (2026-10-11): non-jewelry MEDIA register, added after
    # the risk-register measurement showed posters/prints/props pass the v1
    # metal-only filter (cortex-crosscheck-report-2026-10-11-measured.md).
    # collision-tested against the entire existing corpus first: these five
    # words flag ZERO existing clean titles (no paw-print charms, no book
    # chains in corpus). bookmark deliberately NOT added: metal bookmark
    # charms are legit accessories and there is no measured evidence for it.
    "poster", "print", "prop", "canvas", "book",
    "ring box"]
PATS = [re.compile(r"\b" + re.escape(t) + r"\b", re.I)
        for t in STONE + PLASTIC + NON_JEWELRY]

def solimet_check(title):
    return not any(p.search(title.lower()) for p in PATS)

# raw file -> (platform, query, title field)
# excluded deliberately: solisdivinitytarot (tarot DECKS, non-jewelry),
# sabrinabi (404 html), mercari-tarot.json / mercari-zodiac.json (0 items).
SOURCES = {
    "ebay-tarot.json": ("ebay", "tarot necklace", "title"),
    "ebay-zodiac.json": ("ebay", "zodiac jewelry", "title"),
    "etsy-arcana.json": ("etsy", "major arcana necklace", "name"),
    "etsy-celestial.json": ("etsy", "celestial jewelry", "name"),
    "etsy-tarot.json": ("etsy", "tarot jewelry", "name"),
    "etsy-whitegold.json": ("etsy", "white gold necklace", "name"),
    "etsy-zodiac.json": ("etsy", "zodiac necklace", "name"),
    "mercari-us-tarot.json": ("mercari-us", "tarot necklace", "title"),
    "mercari-us-zodiac.json": ("mercari-us", "zodiac necklace", "title"),
    "shein-tarot.json": ("shein", "tarot jewelry", "goods_name"),
    # poshmark raws recovered 2026-10-12 from apify datasets (run ids and
    # per-run sha256 in provenance.json "poshmark-mercari capture
    # 2026-10-10"); the v1-processed .jsonl versions predate segment-solimet
    # v2 and are superseded by these v2-gated outputs.
    "poshmark/poshmark-tarot.json": ("poshmark", "tarot necklace", "title"),
    "poshmark/poshmark-celestial.json": ("poshmark", "celestial jewelry", "title"),
    "poshmark/poshmark-zodiac.json": ("poshmark", "zodiac necklace", "title"),
}

# v1-processed .jsonl captures (solimet_title_check computed inline BEFORE
# the v2 media words, no filter field): re-gate their titles under v2.
# solimet_check is a pure function of the title, so re-gating the recorded
# titles is exactly what processing the raws would produce. source/query/
# run_id are preserved from the v1 records.
REGATE = [
    ("../wear-symbol-segment/ebay-alchemical-symbols-necklace.jsonl", "ebay", "alchemical symbols necklace"),
    ("../wear-symbol-segment/ebay-alchemy-necklace.jsonl", "ebay", "alchemy necklace"),
    ("../wear-symbol-segment/ebay-anniversary-band.jsonl", "ebay", "anniversary band"),
    ("../wear-symbol-segment/ebay-eternity-band.jsonl", "ebay", "eternity band"),
    ("../wear-symbol-segment/ebay-everyday-necklace.jsonl", "ebay", "everyday necklace"),
    ("../wear-symbol-segment/ebay-promise-ring.jsonl", "ebay", "promise ring"),
    ("../wear-symbol-segment/ebay-stackable-bangle.jsonl", "ebay", "stackable bangle"),
    ("../wear-symbol-segment/ebay-wedding-band.jsonl", "ebay", "wedding band"),
    ("../wear-symbol-segment/etsy-alchemical-symbols-necklace.jsonl", "etsy", "alchemical symbols necklace"),
    ("../wear-symbol-segment/etsy-alchemy-necklace.jsonl", "etsy", "alchemy necklace"),
    ("../wear-symbol-segment/etsy-anniversary-band.jsonl", "etsy", "anniversary band"),
    ("../wear-symbol-segment/etsy-eternity-band.jsonl", "etsy", "eternity band"),
    ("../wear-symbol-segment/etsy-everyday-necklace.jsonl", "etsy", "everyday necklace"),
    ("../wear-symbol-segment/etsy-promise-ring.jsonl", "etsy", "promise ring"),
    ("../wear-symbol-segment/etsy-stackable-bangle.jsonl", "etsy", "stackable bangle"),
    ("../wear-symbol-segment/etsy-wedding-band.jsonl", "etsy", "wedding band"),
    ("../wear-symbol-segment/depop-everyday-necklace.jsonl", "depop", "everyday necklace"),
    ("../wear-symbol-segment/mercari-alchemical-symbols-necklace.jsonl", "mercari-us", "alchemical symbols necklace"),
    ("../wear-symbol-segment/mercari-alchemy-necklace.jsonl", "mercari-us", "alchemy necklace"),
    ("../wear-symbol-segment/mercari-anniversary-band.jsonl", "mercari-us", "anniversary band"),
    ("../wear-symbol-segment/mercari-everyday-necklace.jsonl", "mercari-us", "everyday necklace"),
    ("../wear-symbol-segment/mercari-stackable-bangle.jsonl", "mercari-us", "stackable bangle"),
    ("../wear-symbol-segment/mercari-wedding-band.jsonl", "mercari-us", "wedding band"),
    ("shein-zodiac-necklace.jsonl", "shein", "zodiac necklace"),
    ("../wear-symbol-segment/poshmark-everyday-necklace.jsonl", "poshmark", "everyday necklace"),
    ("../wear-symbol-segment/poshmark-stackable-bangle.jsonl", "poshmark", "stackable bangle"),
    ("../wear-symbol-segment/poshmark-wedding-band.jsonl", "poshmark", "wedding band"),
    ("../wear-symbol-segment/poshmark-anniversary-band.jsonl", "poshmark", "anniversary band"),
    ("../wear-symbol-segment/poshmark-alchemy-necklace.jsonl", "poshmark", "alchemy necklace"),
    ("../wear-symbol-segment/poshmark-alchemical-symbols-necklace.jsonl", "poshmark", "alchemical symbols necklace"),
]

def regate():
    total = 0
    for fn, platform, query in REGATE:
        src = os.path.normpath(os.path.join(HERE, fn))
        if not os.path.exists(src):
            print(f"{fn:52} MISSING, skipped"); continue
        sha = hashlib.sha256(open(src, "rb").read()).hexdigest()[:12]
        out = []
        for line in open(src):
            if not line.strip(): continue
            r = json.loads(line)
            if not isinstance(r, dict): continue
            t = r.get("title") or ""
            if not t.strip(): continue
            out.append({
                "source": r.get("source") or platform, "query": r.get("query") or query,
                "run_id": r.get("run_id"), "title": t,
                "solimet_title_check": solimet_check(t),
                "filter": "segment-solimet-v3", "raw_sha256_12": sha,
            })
        dest = src.replace(".jsonl", ".solimet.jsonl")
        with open(dest, "w") as f:
            for rec in out:
                f.write(json.dumps(rec, ensure_ascii=False) + "\n")
        clean = sum(1 for r in out if r["solimet_title_check"])
        v1clean = sum(1 for l in open(src) if l.strip() and json.loads(l).get("solimet_title_check") is True)
        print(f"{os.path.basename(fn):44} -> {len(out):>3} items, v1 clean {v1clean:>3} -> v2 clean {clean:>3}")
        total += len(out)
    print(f"regated: {total}")
# shopify DTC catalogs: nested products; include the jewelry register even
# though it will not fire phrases (documented register: lifestyle puns).
SHOPIFY = {
    "shopify/aweinspired.json": ("aweinspired", "brand catalog"),
    "shopify/caitlynminimalist.json": ("caitlynminimalist", "brand catalog"),
    "shopify/evryjewels.json": ("evryjewels", "brand catalog"),
}

def run_id_for(platform, query):
    prov = json.load(open(PROV))
    for cap in prov.get("runs", []):
        runs = cap.get("runs") if isinstance(cap, dict) and cap.get("runs") else [cap]
        for r in runs:
            if isinstance(r, dict) and r.get("platform") == platform and r.get("query") == query and r.get("run_id"):
                return r["run_id"]
    return None

def main():
    total = 0
    for fn, (platform, query, tfield) in SOURCES.items():
        raw = json.load(open(os.path.join(HERE, fn)))
        rid = run_id_for(platform, query)
        sha = hashlib.sha256(open(os.path.join(HERE, fn), "rb").read()).hexdigest()[:12]
        out = []
        for r in raw:
            if not isinstance(r, dict):
                continue
            t = r.get(tfield) or ""
            if not t.strip():
                continue
            out.append({
                "source": platform, "query": query, "run_id": rid,
                "title": t, "solimet_title_check": solimet_check(t),
                "filter": "segment-solimet-v3", "raw_sha256_12": sha,
            })
        dest = os.path.join(HERE, fn.replace(".json", ".solimet.jsonl"))
        with open(dest, "w") as f:
            for rec in out:
                f.write(json.dumps(rec, ensure_ascii=False) + "\n")
        clean = sum(1 for r in out if r["solimet_title_check"])
        print(f"{fn:28} -> {len(out):>3} items, {clean:>3} clean  (run {rid})")
        total += len(out)
    for fn, (platform, query) in SHOPIFY.items():
        raw = json.load(open(os.path.join(HERE, fn)))
        prods = raw.get("products", raw) if isinstance(raw, dict) else raw
        out = []
        for r in prods:
            if not isinstance(r, dict):
                continue
            t = r.get("title") or r.get("name") or ""
            if not t.strip():
                continue
            out.append({
                "source": platform, "query": query, "run_id": None,
                "title": t, "solimet_title_check": solimet_check(t),
                "filter": "segment-solimet-v3",
            })
        dest = os.path.join(HERE, fn.replace(".json", ".solimet.jsonl"))
        with open(dest, "w") as f:
            for rec in out:
                f.write(json.dumps(rec, ensure_ascii=False) + "\n")
        clean = sum(1 for r in out if r["solimet_title_check"])
        print(f"{fn:28} -> {len(out):>3} items, {clean:>3} clean  (brand catalog)")
        total += len(out)
    print(f"total processed: {total}")
    regate()

if __name__ == "__main__":
    main()
