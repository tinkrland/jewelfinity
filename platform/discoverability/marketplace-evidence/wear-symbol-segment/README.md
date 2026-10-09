# wear-context and metal-symbol segment capture (2026-10-09)

six etsy runs, 100 items each, automation-lab/etsy-scraper, evidence for
the terms the why-graph showed with no evidence edges: wear contexts
(everyday_wear, stacks, ceremony_commitment) and metal-symbols
(metal_* terms used symbolically, not materially).

solimet-clean totals (exclusion convention from the corpus
acquisitions; word-boundary scans on clean titles only):

- everyday necklace: 72/100 clean. "everyday" in 28 clean titles.
- stackable bangle: 82/100 clean. stack* in 83 clean titles (the
  query itself biases; presence is language, not demand).
- wedding band: 41/100 clean. "wedding" in 47 clean titles; the other
  59 are stone-set bands, filtered out as expected.
- anniversary band: 10/100 clean - stone-set dominates this query.
- alchemy necklace: 68/100 clean. alchem* in 72, mercury in 2.
- alchemical symbols necklace: 81/100 clean. alchem* in 72 of the
  combined alchemy runs; "seven planetary metals" appears once.

findings:

1. wear-context phrases are real, strong seller language. everyday,
   stack*, wedding all title reliably. everyday_wear, stacks and
   ceremony_commitment earn their evidence edges; a wear-context
   vocabulary (phrases: everyday, stack/stackable, wedding, bridal)
   is supported by the corpus. proposal only - applying it is an
   owner decision.
2. metal-as-symbol is a real niche: the alchemical segment (86
   combined alchem* hits) exists with sellers using "alchemy" and
   "alchemical symbols"; mercury appears by name. the metal_* terms
   can be evidenced as symbol-segment phrases (alchemy, alchemical,
   mercury) rather than material words.
3. elements DO title - inside the alchemical niche. 34 solimet-clean
  titles carry element words, all from the alchemical-symbols query,
  as explicit symbol products: "Air Element Symbol Silver Necklace",
  "Alchemy Elements Necklace, Four Elements Pendant, Fire Water Air
  Earth". this revises "elements never title": in mainstream segment
  queries they never do, but the alchemical/occult symbol niche names
  all four by product type. element_* terms earn a niche evidence
  edge with this capture.
4. anniversary band is a weak query (10% clean): ceremony evidence
   should ride on wedding/bridal phrases instead.

corpus rows: one jsonl per query, solimet_title_check on every row,
sha256 and run ids in provenance.json under
"wear-symbol segment capture 2026-10-09".
