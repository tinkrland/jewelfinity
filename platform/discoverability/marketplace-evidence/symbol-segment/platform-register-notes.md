# symbol language across platforms (2026-10-09)

cross-platform capture for the symbol phrase proposal: the same two
segments (zodiac signs, tarot cards) probed on mercari us and shein, plus
four shopify-hosted DTC catalogs pulled from public products.json
endpoints. run ids in ../provenance.json.

## the finding: three registers, one shared vocabulary

mass and resale marketplaces keyword their titles; DTC brands do not.

- marketplace keyword register (etsy, ebay, mercari us, shein): sign
  and card names appear literally in titles. mercari us zodiac: 97/100
  on-segment, 90 solimet-clean, all twelve signs again (cancer 10,
  libra 9, leo 7). mercari us tarot: 91/100 on-segment, 88 clean
  (moon 16, star 13, sun 11, lovers 6). shein tarot: 80/100 on-segment,
  80 clean, in long SEO essays ("miniature tarot card necklace,
  includes 22 major arcana..."). shein titles are keyword-stuffed to
  the point of prose; count them, do not read them as buyer language.
- resale register (mercari): short, plain, brand-forward ("the empress
  tarot card necklace, nwot", "oak + luna cancer zodiac necklace") -
  and the sign/card names survive it. symbol terms pass through the
  resale chain intact, which is what a phrase layer needs.
- DTC brand register (shopify stores): symbol products get lifestyle
  and pun names. evry jewels (250 products) has exactly one title hit
  for "sign": "it's not me it's my sign necklace" - a zodiac product
  with no zodiac keyword in the title. awe inspired carries real symbol
  language (celestial 23, moon 15, tarot 3 in title+tags). caitlyn
  minimalist keeps symbol words almost entirely out of titles (their
  symbol-adjacent products are moonstone/diamond - outside solimet).

## implications, honestly

- the sign-name and card-name phrases hold across four marketplaces.
  the proposal's phrase evidence is not an etsy artifact.
- title-based matching misses the DTC register entirely: keywords there
  live in tags and URL handles, not titles. if the product ever ranks
  DTC listings, it needs tag/handle awareness, not just title phrases.
  noted for the roadmap; not a vocabulary change.
- solisdivinitytarot sells tarot decks, not jewelry - excluded as
  evidence. sabrinabi's products.json 404s behind redirects; their
  per-card tarot necklaces were corroborated via querit instead
  (search_id in ../querit-2026-10-09/).
- mercari us first two attempts failed on the wrong actor (mercari
  japan, piotrv1001) and a wrong field name (searchQueries -> keywords);
  the automation-lab us actor with {"keywords":[...]} works.


## poshmark added (2026-10-10)

poshmark joins the resale register: short keyworded titles, sign
names in 83 clean zodiac titles, all twelve signs, card names in
90 clean tarot titles, brand-forward ("dark zodiac gemini gold
necklace"). its "alchemical symbols" query surfaces the
occult/goth register (satanic, wiccan, sigil, vegvisir, runes,
chemistry pendants) rather than the etsy DTC element niche -
exactly one element title in 100. mercari us has no alchemical
inventory at all (0 items on both queries). niche-symbol language
is platform-local; the three-registers conclusion holds.
