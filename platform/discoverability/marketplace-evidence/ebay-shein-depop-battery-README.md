# ebay + shein + depop + etsy ceremony battery (2026-10-10)

16 runs + 1 shein probe, capture "ebay-shein-depop-etsy battery
2026-10-10" in provenance.json. ebay actor automation-lab/ebay-scraper
caps at ~60 items/query despite maxProductsPerSearch 100; etsy sort
must be most_relevant (validation rejects "relevance"); shein wear
queries failed on all 7 attempts (0 items, only the zodiac probe run
returned 100).

## ebay wear-context set (60/query)

the mass-auction register is stone-heavy: everyday 43/60 clean,
stackable 33/60, wedding 23/60, anniversary 12/60. phrases still
title on the clean subset (everyday 13, stack* 14, wedding 29,
promise 17). alchemy 53/60 and alchemical-symbols 71/76 clean - the
alchemy gothic/occult niche (brand "alchemy gothic", philosopher's
stone, hermetic) is strong on ebay.

## ceremony alternatives (probed: eternity band, promise ring)

eternity band is the WORST solimet category measured to date: etsy
3/100 clean, ebay 0/60 - every eternity band is stone-set (half
eternity = diamond row). promise ring is weak but real: etsy 26/100
clean (promise in 13), ebay 29/60 clean (promise in 17). ceremony
language still rests on wedding + promise; anniversary stays weak.

## depop (zodiac necklace, everyday necklace; titles = first line
of listing description - depop has no title field)

depop is the first RESALE platform that titles wear contexts:
everyday in 27 of 84 clean everyday-necklace titles (vs mercari 0).
and signs in 65 of 86 clean zodiac titles. the gen-z resale
register carries both symbol and wear-context language.

## shein zodiac (100 items, probe-format input)

76/100 clean. sign names in only 2 clean titles - shein titles
say "zodiac" generically ("zodiac necklace gold color zodiac sign
constellation pendant"), unlike the resale registers which name
the sign. wear queries could not be captured (actor returns 0).

## loader map changes (this pass)

"zodiac necklace" is now query-mapped to the 12 sign terms -
previously only capture-level, so the poshmark zodiac run sat
unlinked despite all 12 signs in 83 titles. retroactively linked
(+12). "eternity band" and "promise ring" map to
ceremony_commitment. tarot queries stay deliberately UNMAPPED
(no tarot terms in v0.1; owner's decision pending).

SUPPORTS 414 -> 465. nothing changed a vocabulary or the table.
