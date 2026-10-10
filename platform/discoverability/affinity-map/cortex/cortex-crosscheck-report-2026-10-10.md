# cortex cross-check: symbol-vocabulary phrase policy (2026-10-10)

advisory build-time cross-check run on Snowflake Cortex
(claude-sonnet-4-5, REST, 6 calls). it is a second opinion on the
0.2 phrase policy, NOT evidence and NOT a vocabulary change - the
evidence standard stays the corpus scans. no vocabulary, table, or
config was modified by this pass. reproducible via
crosscheck-symbol-phrases.py; raw model responses verbatim in
cortex-symbol-crosscheck-raw.json. inference paid by the owner's
snowflake credits.

## part 1: conflated words judged on REAL corpus titles

sample: up to 8 real solimet-clean titles per word, drawn in fixed
file order from the main corpus + all segment captures (29 titles
total across the five words).

| word | sample | off-tarot | tarot-card | cortex verdict on phraseless policy |
|---|---|---|---|---|
| sun | 8 | 7 | 1 | YES - bare word overwhelmingly celestial/decorative |
| moon | 8 | 8 | 0 | YES - zero tarot senses; bare moon = false positives |
| star | 8 | 7 | 1 | YES - bare star = celestial/decorative |
| death | 2 | 2 | 0 | YES - gothic aesthetic/music genre, not the card |
| devil | 3 | 3 | 0 | YES - gothic/occult motifs, not the card |

**5/5 independent confirmation.** 27 of 29 real titles are off-tarot -
the conflations documented in the 0.2 phrase policy are real and
measured, not assumed. the two tarot-card titles ("The Sun/Star tarot
card" style) are exactly the cases the compound evidence path (card
term supported via co-titling with "tarot") handles.

## part 2: adversarial attack on the six phrased card words

context: all six (fool, tower, hermit, temperance, hanged, judgement)
have ZERO occurrences in the entire clean corpus - the corpus scan
found zero off-tarot uses because it never met the word at all. the
phrases are dormant today: nothing fires them, so they cannot produce
false positives in current data. cortex was asked to construct
plausible off-tarot listing titles to stress the claim prospectively.

| word | cortex risk | counterexamples it constructed |
|---|---|---|
| fool | high | "fool's gold" pyrite pieces (stone-filtered anyway, but solimet-clean novelty/pun cases exist: April Fool's brooches, "Nobody's Fool" engraved bracelets) |
| tower | medium-high | the entire landmark-souvenir register: Eiffel Tower, Tower Bridge, Pisa, CN Tower charms - a real, popular, solimet-clean category |
| hermit | medium | hermit crab beach/ocean charms |
| hanged | medium | "wall-hanged" display pieces, "hanged chain tassel" style wording |
| judgement | medium | inspirational-engraving register ("No Judgement", "Without Judgement") - a growing category |
| temperance | low | could not construct one - pass |

## honest reading

- the phraseless policy for sun/moon/star/death/devil is confirmed by
  an independent model on real titles. nothing to change.
- the six bare phrases are safe TODAY (zero fires, zero false
  positives - dormant) but three carry prospective risk in registers
  the corpus has never sampled: souvenir-travel (tower), pun/quote
  engraving (fool, judgement), marine (hermit). the "unambiguous
  across the whole corpus" claim is true of this corpus and only this
  corpus - cortex attack shows it does not generalize.
- no action taken. options if the owner wants one later (vocabulary
  changes need explicit authorization): compound the phrases
  ("the fool tarot", "tower tarot"), or add a souvenir/inspirational
  corpus segment first and re-measure. the measurement-first rule says
  the second option is the honest order.
