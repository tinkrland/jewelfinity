# cortex re-validation after the phrase fix (2026-10-12)

post-fix rerun of crosscheck-symbol-phrases.py (v2 - see its docstring
for the six defects fixed) against the CURRENT vocabulary state: nine
phraseless card words judged on stratified real titles (up to 4
tarot-mentioning + 4 off-tarot each), plus adversarial attack on the
two still-bare words. corpus: 3328 solimet-v2-clean titles from 16
files (v1 of the script reached about 7 files; dead glob
symbol-segment/poshmark/, missing shopify/mercari/poshmark wear
segments/risk-registers). raw responses: cortex-crosscheck-raw-2026-10-12.json.

## phraseless nine - all verdicts YES on stratified samples

| word | sample senses | verdict |
|---|---|---|
| sun | 4 tarot / 4 off | yes |
| moon | 2 tarot / 5 off / 1 ambiguous | yes |
| star | 3 tarot / 5 off | yes |
| death | 4 tarot / 2 off | yes |
| devil | 4 tarot / 3 off | yes |
| fool | 4 tarot / 4 off | yes |
| tower | 4 tarot / 4 off | yes |
| hermit | 4 tarot / 4 off | yes |
| temperance | 4 tarot / 4 off | yes |

the stratified sample is a stronger test than the 2026-10-10 run: each
word's tarot-positive titles ARE present in the corpus and ARE caught
by the co-titling mechanism (they all say "tarot"), while the off-tarot
titles in each sample are exactly the bare-word misfires the removed
phrases would have caused. the fix is validated on both sides.

## still-bare two - adversarial counterexamples (hypothetical only)

cortex constructed counterexamples for both:
- hanged: "hanged" as a suspended/dangling participle ("Hanged Charm
  Bracelet with Dangling Hearts"). note several of its own examples
  name stones/crystals and would be solimet-filtered anyway.
- judgement: quality-claim phrasing ("Beyond Judgement", "Defies
  Judgement GIA Certified") - strained register, no measured instance.

disposition: these are INVENTED titles; the register measurement
(2026-10-11) found zero occurrences in 420 sampled titles and both
spellings. measured dormancy stands; risk stays documented as
hypothetical; phrases stay bare; revisit when registers resample. no
vocabulary change proposed by this rerun.
