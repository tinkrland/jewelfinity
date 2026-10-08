# phrase-extension proposal (review draft, 2026-10-08)

built from the marketplace-evidence snapshot (852 ebay + 500 etsy listings,
provenance.json in this folder). nothing here changes a vocabulary record;
each candidate is evidence-carrying marketplace language, for a yes/no read.

## candidates

| style | candidate | evidence count (ebay) | notes |
|---|---|---|---|
| victorian | victorian mourning | 4/58 | mourning jewelry is an era-authentic category term; caveat: much mourning jewelry is hairwork or stone-set, so the phrase describes the era more than the solimet segment |
| victorian | edwardian co-title | 21/58 | not a phrase add; co-title evidence (21/58) reinforcing the computed antique cluster; recorded, no action |
| art_deco | filigree | 12/113 | metalwork term, fully solimet-compatible, era-carrying in marketplace titles |
| retro | bow | 7/60 | already an authored facet-adjacent term; marketplace titles confirm bow as the era marker seller-language |
| celestial | crescent moon | 23/102 | direct facet-corroborating seller language |
| celestial | moon star | 20/102 | direct facet-corroborating seller language |
| celestial | sun moon | 14/102 | sun-moon co-listings; also a third corroboration of the sun/sunburst bridge question |
| mid_century_modernist | mcm | 19/79 | the abbreviation is the dominant buyer/seller query term; candidate as query alias rather than phrases field |
| gothic | gothic biker | 27/151 & 27/104 combined | already covered by the confusable edge; recorded as measured marketplace evidence for that edge |
| biker | stainless steel | 51/104 | material seller-language; likely already implied by the metal facets; candidate only if phrases field is meant to carry material language too |

sample listing urls:
- victorian / victorian mourning: https://www.ebay.com/itm/189037581022, https://www.ebay.com/itm/306666586063
- art_deco / filigree: https://www.ebay.com/itm/358688962138, https://www.ebay.com/itm/317781383543
- retro / bow: https://www.ebay.com/itm/226648372880, https://www.ebay.com/itm/226648376621
- celestial / crescent moon: https://www.ebay.com/itm/178490668915, https://www.ebay.com/itm/314548776383
- celestial / moon star: https://www.ebay.com/itm/158376637558, https://www.ebay.com/itm/407239911979
- celestial / sun moon: https://www.ebay.com/itm/318943146560, https://www.ebay.com/itm/407239911979
- mid_century_modernist / mcm: https://www.ebay.com/itm/377529497678, https://www.ebay.com/itm/137742087749
- biker / stainless steel: https://www.ebay.com/itm/204331891606, https://www.ebay.com/itm/188990165646

## non-candidates, kept so they are not re-proposed

- victorian "cameo" (6): cameo is shell/stone material, outside solimet
- art_deco "czech glass" (7) / "rhinestone" (19): stone-adjacent, outside solimet
- retro "simulated pearls" (4): simulated stones are still stone-look, borderline for the solimet brand
- gothic "halloween costume" (6): real market positioning, but couples the style to costume; owner call
- georgian "linen/velvet/proposal/trinket" and art_nouveau "fairy/nymph/shawl/casket": box-and-casket contamination, not jewelry
- ebay "anubis" for egyptian_revival: that is the gothic-biker steel world, not revival-era metalwork

## organic_modern notes amendment (draft text)

proposed addition to the notes field on the next vocabulary bump:

> marketplace home confirmed 2026-10-08: the style answers to "skonvirke jewelry"
> and "scandinavian modern jewelry" on etsy (georg jensen fish brooch, holger
> fischer c1905 danish skonvirke, 830s silver; 80-90% solimet-clean), not to its
> own name ("organic" pulls bridal texture and polymer clay). evidence:
> platform/discoverability/marketplace-evidence/etsy-listings.jsonl, run ids
> vrwweozPhnz5ehXfk and 8AVThCBBSoijw3NLS in provenance.json

## standing art_deco sun question

unchanged and awaiting owner go: add sun facet 0.5 to art_deco (sunburst stays
0.7). now corroborated three ways: merriam-webster (sunburst = jeweled brooch
representing a sun), the awedeco deco-sunburst dealer article, and celestial
corpus counts (sun 30/102 titles, sun moon co-listings 14/102). the edge
celestial-art_deco flips to confirmed rank ~0.105; edwardian drops out of
art_deco top-5 (side effect previously reviewed and accepted as a possibility).
