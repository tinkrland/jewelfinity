# symbol phrase-extension proposal (review doc, no vocabulary changes)

drafted 2026-10-09 for the owner's review, same gate as the style phrase
proposal: nothing below is authored until explicitly authorized. all
counts pooled over 2,752 recorded titles (852 ebay + 1,500 etsy main
corpus + 500 symbol-segment capture, run ids in provenance.json; 300
drift probes excluded to avoid query echo). "clean" = solimet title
filter.

## context

the simulated matching runs showed the symbol layer carries zero
marketplace phrases, so celestial-dreamer's expected results (element_air,
metal_gold, sign_leo, sign_pisces, sign_scorpio) are invisible in titles.
this proposal closes what is honestly closable.

## proposed: phrases field on symbol records (vocabulary 0.1.0 -> 0.2.0)

the symbol vocabulary has no phrases field; adding it is a schema change
requiring authorization. candidates below, evidence counts (total/clean):

### zodiac signs - phrase: the bare sign name

all twelve signs title cleanly and unambiguously in jewelry titles:
aries 5/5, taurus 5/3, gemini 5/4, cancer 7/4, leo 10/6, virgo 10/8,
libra 10/9, scorpio 8/6, sagittarius 7/6, capricorn 4/4, aquarius 5/5,
pisces 11/8. "zodiac" itself: 101/70. the etsy zodiac segment is 71%
solimet-clean; ebay returned nothing usable for the same query (empty
titles, run f1w0zi... - segment lives on etsy). single-word caveats:
"cancer" and "leo" can be common words elsewhere, but in jewelry titles
they are the sign.

### element records - no honest title language

"water sign": 1 occurrence. "earth sign", "air sign", "fire sign": zero.
elements are undetectable in titles; recommend no phrases now. element
engagement will flow through sign terms once signs are phraseable (the
table already links them: element_air scores 0.208 against celestial).

### metal_silver - phrase candidates: "white gold" (and the owner's note)

"white gold": 84/35 - specific enough to match (bigram, excludes plain
gold/rose gold). the owner's standing observation: silver girlies love
white gold and platinum too, so this phrase belongs with silver as the
cool-metal marker. bare "silver" stays unusable: it is the material word
in "sterling silver" and would match ~90% of listings.

### metal_platinum - phrase: "platinum"

15/4 - thin but real, and the word is specific. the etsy white-gold
segment shows almost no platinum titles (0/100), so this phrase will
fire rarely; honest expectation.

### metal_gold - no honest phrase

bare "gold" is a material descriptor in nearly every listing (gold
tone, gold plated, rose gold). no phrase candidate; gold's symbol
detection would ride on sun/celestial language, which belongs to the
celestial style record, not this vocabulary.

## flagged for a separate decision: tarot

the tarot segment is big and very solimet-friendly: "tarot" 103/97,
"tarot card" 71/70, "major arcana" 22/22, 94% solimet-clean capture.
card title counts from the capture: sun 20, moon 15, star 13, lovers 9,
empress 9, magician 7, fool 6, priestess 5, hermit 3. querit corroborates
a real dealer segment (lavanijewels' dedicated tarot collection,
dragonweave sterling tarot pendants, search_ids in querit-2026-10-09/).

options, not decisions:
- (a) new tarot records in the symbol vocabulary (kind: tarot_card) -
  the honest fit, but it is a vocabulary extension, new records, and
  needs its own evidence pass per card
- (b) tarot phrases attached to existing celestial motifs (the moon,
  star, sun cards) - cheaper, but conflates card symbolism with
  celestial objects
- (c) defer tarot entirely until the phrase layer proves out

## what this unlocks

with signs phraseable, celestial-dreamer's expected top-k becomes 3/5
measurable (leo, pisces, scorpio); element_air and metal_gold stay
invisible until element/gold language exists, if ever. after any
authorized change: rebuild table, re-pin expected top-k, re-run the
simulated matching runs for the new pass rates.

## provenance

etsy zodiac run 5rW00Wz1q2pKgGV7c, ebay zodiac run f1w0ziLuzdg4mDDv
(empty titles, unusable), etsy tarot run PnyAYpCpTlw4GRS6P, etsy
celestial run qdjbTeYbKmrEo0IBC, etsy white-gold run XvGKHmBq4jOmhGMoq;
querit passes for tarot and zodiac markets under querit-2026-10-09/.
queries echo in titles; the counts above are segment-shape evidence,
not independent corpus counts.
