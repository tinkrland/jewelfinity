# measured follow-up: risk registers (2026-10-11)

follow-up to cortex-crosscheck-report-2026-10-10: the adversarial pass
flagged prospective phrase risks in never-sampled registers. instead of
acting on hypotheticals, the registers were CAPTURED for real (etsy +
ebay, 6 queries, 420 raw titles, 348 solimet-clean, filter
segment-solimet-v1, provenance in marketplace-evidence/provenance.json)
and the bare-word misfire rates measured deterministically. cortex then
adversarially reviewed the measurement + recommendation (its review is
quoted in full below). advisory only; NO vocabulary change was made -
the recommendation now has measured evidence behind it and waits for
owner authorization.

## measured misfire rates (clean titles)

| word | bare-word hits | also say "tarot" | misfires if phrased bare | register |
|---|---|---|---|---|
| tower | 123 | 1 | 122 | landmark souvenir charms (Eiffel, Pisa, Prudential, Bologna); 95% of the ebay register is solimet-clean |
| hermit | 46 | 0 | 46 | hermit crab marine charms, uniformly |
| temperance | 42 | 9 | 33 | Temperance Brennan TV-prop register + tarot ART PRINTS (media, not jewelry) |
| fool | 31 | 18 | 13 | "Nobody's Fool" movie posters/books (media) + tarot deck jewelry |
| hanged | 0 | 0 | 0 | dormant, confirmed |
| judgement | 0 (both spellings) | 0 | 0 | dormant, confirmed - US "judgment" also absent from the sample |

## what the measurement settled

- yesterday's risk table UNDERSTATED tower (medium-high -> in reality
  122/123 off-tarot) and missed temperance entirely (called LOW; the
  real register is a TV-prop/prints category with 33 measured misfires).
- a second finding the risk table never anticipated: NON-JEWELRY MEDIA
  (posters, prints, books, props) passes the solimet filter - it is
  metal-word-free. the fool and temperance misfire counts are partly
  media, which is a FILTER gap (poster/print/canvas/book should join
  the non-jewelry list) as much as a phrase gap.
- the conflated-5 policy (phraseless + card terms supported via
  co-titling with "tarot") is validated a second time: the registers
  where bare words misfire are real, populous, and solimet-clean.

## revised recommendation (post-adversarial-review)

1. UNIFY tower, hermit, temperance AND fool under the conflated-5
   mechanism: no bare phrase; card terms supported via co-titling with
   "tarot". cortex's review caught that my draft drew a false
   distinction between "compound" (fool) and "conflated treatment"
   (the other three) - the mechanisms are identical, only the measured
   yield differs (fool 18/31, temperance 9/42, tower 1/123, hermit 0/46).
   one mechanism, four measured yields, no thresholds to justify.
2. leave hanged and judgement bare: dormancy confirmed in both
   spellings, zero measured conflicts. keep documented.
3. add poster/print/canvas/book/bookmark to the non-jewelry filter
   list - the media gap is a solimet issue, not a phrase issue.
4. NO vocabulary change without explicit owner authorization. the
   evidence for 1-3 is now measured and on file.

## cortex review (verbatim, 2026-10-11)

A: Temperance logic breaks: 9/42 is 21% tarot hit rate, higher than
fool's 58% (18/31), yet temperance gets stricter treatment (bare
removal) while fool gets compounding. Either reverse the treatments or
explain the threshold. Also: "misfires" framing assumes tarot IS the
error-but if tarot jewelry exists, blocking it is the misfire.
B: Sample bias unchecked: 420 titles across two platforms captures
frequency but not *diversity* of misfire types. Regional/seasonal
jewelry trends (zodiac months, pop culture spikes) won't show. Need
misfire *category* saturation proof, not just count confidence.
C: User search intent invisible: measures *listing* vocabulary, not
*search query* vocabulary. If customers search "tarot fool necklace"
but listings say "tarot card 0 necklace," your filter breaks
discoverability for legitimate inventory.

## disposition of the review

- A (threshold inconsistency): accepted - recommendation 1 now unifies
  all four words under one mechanism. the "blocking tarot is the
  misfire" half is rejected: the conflated-5 mechanism does not block
  tarot listings, it requires the co-titling evidence the 0.2 policy
  already established; a souvenir Eiffel tower listing supporting
  tarot_tower is precisely the false positive being measured.
- B (sample diversity): accepted as a limitation - two platforms, one
  sample, no seasonality control. the register categories themselves
  (souvenir/marine/fan/media) were saturated in-sample: every sampled
  tower misfire is a landmark, every hermit misfire a crab. decisions
  stay revisitable when registers resample.
- C (search-intent invisibility): accepted as a documented limitation -
  listing language is not buyer query language. buyer-query evidence
  cannot come from listings at all; in production it comes from the
  signal log, which is the profile derivation path the spec already
  reserves for it.
