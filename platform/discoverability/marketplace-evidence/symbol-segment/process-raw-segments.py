#!/usr/bin/env python3
"""segment-solimet v1: process raw segment captures into solimet-checked
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
    "carnelian", "jasper", "amber", "stone", "stones", "gem", "gems"]
PLASTIC = ["resin", "acrylic", "plastic", "polymer", "clay"]
NON_JEWELRY = ["t-shirt", "tee shirt", "shoe charm", "gift card", "sticker",
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
}
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
                "filter": "segment-solimet-v1", "raw_sha256_12": sha,
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
                "filter": "segment-solimet-v1",
            })
        dest = os.path.join(HERE, fn.replace(".json", ".solimet.jsonl"))
        with open(dest, "w") as f:
            for rec in out:
                f.write(json.dumps(rec, ensure_ascii=False) + "\n")
        clean = sum(1 for r in out if r["solimet_title_check"])
        print(f"{fn:28} -> {len(out):>3} items, {clean:>3} clean  (brand catalog)")
        total += len(out)
    print(f"total processed: {total}")

if __name__ == "__main__":
    main()
