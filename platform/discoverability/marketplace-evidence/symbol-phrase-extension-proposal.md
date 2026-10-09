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
solimet-clean. correction from the first draft: the ebay zodiac run is
NOT empty - 74/100 titles are on-segment - but the segment there is
dominated by "natural crystal healing" stretch bracelets, stone-heavy
and almost entirely outside solimet. ebay zodiac exists but is not our
market; the sign phrase evidence should come from the etsy segment.
single-word caveats: "cancer" and "leo" can be common words elsewhere,
but in jewelry titles they are the sign.

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

## flagged for a separate decision: tarot (deep-dive added 2026-10-09)

the tarot segment is big, the cleanest in the whole program, and lives
on both platforms. pooled per-card counts over 300 tarot titles
(etsy tarot 100 + etsy major arcana 100 + ebay tarot 100, run ids
below), total/clean:

sun 41/38, moon 33/28, star 29/27, magician 22/17, empress 18/17,
lovers 17/16, priestess 15/15, fool 13/12, world 9/9, strength 9/9,
tower 7/7, wheel 7/7, hermit 5/5, chariot 4/4, temperance 4/4,
death 3/3, hanged 3/3, justice 3/3, judgement 2/2, devil 2/2.

282/300 solimet-clean (94%). ebay tarot is on-segment: 98/100 titles,
89 clean - unlike zodiac, tarot lives on ebay too, and without the
crystal-healing pollution. querit corroborates a real dealer segment
(lavanijewels' dedicated tarot collection, dragonweave sterling tarot
pendants, merryshine wholesale death pendants, search_ids in
querit-2026-10-09/).

options, with the conflation cost now measured:
- (a) new tarot records in the symbol vocabulary (kind: tarot_card).
  every card titles cleanly; the top eight (sun, moon, star, magician,
  empress, lovers, priestess, fool) each carry 13+ title hits. the
  honest fit. recommended, if tarot belongs in the product at all.
- (b) tarot phrases attached to existing celestial motifs (moon, star,
  sun cards). the cost is now concrete: 29 of the 300 tarot titles
  carry both card and celestial-object language, so a shared phrase
  layer double-fires and the two segments cannot be told apart in the
  eval. not recommended.
- (c) defer. leaves the cleanest segment on the table.

## cross-platform corroboration (added 2026-10-09, mercari us + shein + shopify DTC)

mercari us repeats both segments: zodiac 97/100 on-segment, 90 clean,
all twelve signs again; tarot 91/100 on-segment, 88 clean. shein's
tarot titles are SEO essays but still card-named, 80/80 clean. the
sign-name and card-name phrases are therefore not an etsy artifact.
one honest caveat from the shopify DTC catalogs (evry jewels, awe
inspired, caitlyn minimalist): brands name symbol products with
lifestyle puns, not keywords - title phrases will never see that
register. details in symbol-segment/platform-register-notes.md.

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
