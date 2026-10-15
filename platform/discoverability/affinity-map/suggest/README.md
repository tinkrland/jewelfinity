# suggest(): the consumer-side surface, qloo-style, ours transparent

owner 2026-10-15: "do it" - after reconnaissance on how qloo's taste api
works (hackathon key, recon only, NOT production use; see
marketplace-evidence/../../prior-art-qloo.md lessons and the 2026-10-15
probing), build the small-scale replication.

## what we copied from qloo, what we refused

copied: similarity is COMPUTED AT QUERY TIME from composed signals -
no stored "similar to" edge. signals (seed terms, profile seeds) fuse
across evidence families, each normalized 0-1, popularity a PRIOR
inside the fusion (never a filter). cross-category affinity comes
free because styles, symbols, metals and wear-contexts share one
rank space.

refused: opacity. every ranked row carries its provenance trail -
which family contributed what, and the why (shared facets, exemplar
titles, brand collections). qloo answers "what"; we also answer
"why, show your work" - the deep-understanding positioning lives here.

## inputs (all committed, deterministic)

- prior: affinity-table.json neighbors (structural, facet-based)
- seller: corpus-co-occurrence/co-occurrence.jsonl - MENU-FILTERED:
  sign-to-sign pairs excluded everywhere (listing-format artifact,
  not buyer affinity)
- merch: corpus-co-occurrence/collection-overlaps.jsonl - mapped
  cross-term pairs only (curated, declared map in the builder)
- curator: corpus-co-occurrence/co-curation.jsonl - empty today,
  contributes zero; loads the day storefront captures exist
- popularity: prevalence.jsonl (build-prevalence.py over the same
  20 gated corpora, input_hash pinned; sqrt-damped in fusion)

## weights (DECLARED priors, not learned)

prior 0.55 / seller 0.20 / merch 0.15 / curator 0.025 / popularity
0.075. there is no click data to learn weights from; these encode the
positioning ruling (structural prior is the spine, evidence families
corroborate). evidence composes ADDITIVELY across seeds (sum, capped
at 1) - more supporting seeds = more evidence, like qloo's signal
composition.

## honest limits

- weights are declared, not learned; changing them is a one-line edit
  plus a note here
- tarot cards are phraseless by policy, so their popularity prior is
  0 - they rank on prior + evidence only (visible in every trail)
- curator family is empty; storefront captures are the gate
- profile seeded_affinities carry weights (e.g. celestial 1.0) that
  are read as seeds, not yet as evidence weights - refinement noted,
  not forgotten

## validations (2026-10-15)

- celestial -> silver (moon facet + moonstone co-titles), the
  star/moon/sun tarot cards via prior facets, ceremony_and_commitment
  via the moon-bridal seller bridge (9 titles, zero query bias)
- sign_scorpio -> aries (shared MARS ruler facet), iron (mars's
  planetary metal), water element - NO sign-to-sign seller edges:
  the menu filter holds
- profile-003-celestial-dreamer (celestial, element_water,
  sign_cancer, metal_silver) -> the moon at rank 2: silver's top
  prior neighbor IS the moon tarot card - the cross-vocabulary magic
  qloo sells, except ours shows the facets
