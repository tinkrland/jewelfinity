# poshmark + mercari us battery (2026-10-10)

15 runs, 100 items each requested (mercari actor returns first
page, 25 items, capped). corpus rows in symbol-segment/poshmark/
and wear-symbol-segment/ with poshmark-/mercari- prefixes, run ids
and sha256 in ../provenance.json under "poshmark-mercari capture
2026-10-10".

## poshmark (9 queries, 100 items each)

- symbol register: zodiac 90/100 clean, sign names in 83 clean
  titles, all twelve. tarot 94/100 clean, card names in 90.
  celestial 67/100 clean (rings and watches dilute the query).
  poshmark titles like the resale register: short, keyworded,
  brand-forward ("dark zodiac gemini gold necklace", "the world
  gold tone tarot necklace").
- wear register: everyday 85/100 clean, "everyday" in 49 titles.
  stackable 91/100, stack* in 97. wedding 79/100, wedding in 91.
  anniversary 27/100 clean - stone-set dominates, same as etsy.
  alchemy 79/100, alchemical-symbols 98/100 clean.
- the poshmark "alchemical symbols" segment is NOT the etsy DTC
  element niche. its language is the resale/occult register:
  satanic, wiccan, sigil, leviathan, tetragrammaton, vegvisir,
  runes, "chemistry"/periodic-table pendants, alchemy-of-england
  brand names. exactly one element title ("alchemical aether
  element silver sigil necklace"). the element-name register is
  etsy-alchemical specific, not platform-general.

## mercari us (6 wear queries, 25 items each)

- everyday necklace: 19/25 clean but ZERO "everyday" in titles -
  mercari search matched descriptions, not titles. resale titles
  describe the object, not the wear context.
- stackable bangle: 23/25 clean, stack* in 15. wedding band:
  21/25 clean, wedding in 20. anniversary band: 8/25.
- alchemy necklace and alchemical symbols necklace: 0 items each.
  the alchemical/occult niche is absent from mercari resale
  inventory entirely. niche-symbol coverage is platform-local:
  etsy yes (DTC + handmade), poshmark yes (occult register),
  mercari no.

## battery totals

poshmark 710 clean of 900 items; mercari us 71 clean of 125.
every phrase family the wear-context proposal needs titles on at
least one mass platform. nothing here changes a vocabulary or the
committed table.
