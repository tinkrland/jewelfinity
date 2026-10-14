# phase-two, seller-register edition: corpus term co-occurrence

the first co-occurrence relationship family for the falkordb graph
(falkordb confirmed as backend 2026-10-14, per the standing
database-choice-2026-10-12 ruling). this is what the corpus actually
says today, measured honestly - not the behavioral co-saves the spec
eventually wants (no user signals exist yet).

## method

build-co-occurrence.py is deterministic: every committed .solimet.jsonl
gated corpus (20 files; co-occurrence-probes excluded because its
listings are both-term by construction), token-boundary phrase matching
against the governed phrase vocabularies (same matcher as the sim
harness), unordered term pairs per clean title. outputs
co-occurrence.jsonl (all 93 pairs) and load-cooccurrence.cypher
(pairs with count>=3 = 69 edges, applied after load.cypher since terms
must exist first). input_hash pins the exact 20 corpora; rerun after
any corpus change.

## what the register actually says (3,050 titles)

- multi-term co-titling is RARE: 38 of 3,050 titles (1.2%) carry two
  or more vocabulary terms. sellers title to ONE symbol family per
  listing. sparse co-occurrence is the honest baseline, not a failure.
- the dominant mode is the personalization menu: one listing names
  many zodiac signs for buyer choice ("Gold Zodiac Necklace ... Scorpio
  Sagittarius"). 83 of 93 pairs are sign-to-sign or menu-listing pairs.
  these edges are a LISTING FORMAT artifact - a recommend() surface
  must not read them as "libra buyers also like sagittarius".
- the genuine bridges, off-menu:
  - celestial + ceremony_commitment (9 titles, zero query bias):
    moonstone/moon rings in engagement-and-bridal seller language -
    the moon-bridal bridge is real in titles, not just in the priors
  - the witchy tarot cluster: gothic + tarot_hanged_man, celestial +
    gothic, art_deco + gothic - independent corroboration of the
    celestial->gothic drift the probes found on 2026-10-09, now from
    the untaroted tarot-adjacent registers
  - celestial + metal_silver (3, 1 query-biased)
- query_bias on each edge counts titles whose capture query named one
  of the two terms; family-level bias (a "zodiac" query surfacing all
  sign pairs) is NOT captured per-edge - the caveat lives here.

## honest limits

- seller-register co-titling overstates adjacency at the family level
  (keyword stuffing) and understates it at the pair level (1.2%)
- no behavioral signal exists yet: co-saves, co-follows, co-purchases
  remain phase-two future work; when they arrive they load as a
  separate family in the same instance and these edges stay labeled
  by their register
- edges are stored a->b with a<b; query them undirected

## the taste-act family: curator co-endorsement (built 2026-10-14, empty)

per owner "build it when this lands": the classic behavioral family
(co-saves, co-follows) has no signal source yet. what HAS landed is
shopmy curator endorsement - named curators visible on every card of
the 2026-10-14 volume battery. build-co-curation.py parses the 36 raw
captures (segment-based: a card's avatars, count and title belong to
one segment; firecrawl strips some card images to base64 notes, so
image-link attribution alone loses ~113 cards), matches titles to
the phrase vocabularies, and projects curator co-endorsement onto
term pairs.

result, honestly EMPTY at current capture depth:
- 280 products attributed, 247 with named curators (786 avatar names)
- only 20 products carry any vocabulary term (7%) - the curator
  register's brand-catalog titles rarely contain the phrase vocabulary
- 35 distinct curators endorse those 20 products, and NO curator
  endorses two different term-bearing products -> 0 co-curated pairs,
  0 edges (load-cocuration.cypher is an empty skeleton)

the empty result is the finding, for two compounding reasons: cards
display only ~6 avatar names (curator sets are partial, shared counts
would be lower bounds) and search cards sample one query at a time.
the gate to a non-empty family is storefront-level capture - a
curator's FULL product list (shopmy curator storefronts, or ltk
creator product pages behind the auth0 login) - not more search
cards. when that capture exists, rerun the builder.

## the merchandising-act family: brand collection co-membership (2026-10-14)

owner challenge, correct: latent similarities do not need human
endorsement to prop up. a brand's own merchandising structure is the
act: placing a product in a themed collection asserts its style.
captured the structure for the three brand catalogs (public shopify
products.json endpoints; 23 themed collections, 1,374 products,
manifest with urls + sha256s in
marketplace-evidence/brand-merchandising-structure/).

the structure is real and endorsement-free:
- 216 cross-membership products across 23 collection pairs
- biggest: caitlynminimalist celestial x golden-goddess (67 shared
  products - the brand sells the same pieces as both celestial and
  goddess-themed), golden-goddess x vintage (35), aweinspired
  astrology x charms/amulets (43), medusa x snake (3)

what term projection honestly yields:
- brand titles do NOT carry the phrase vocabulary (40 of 1,374
  term-bearing, zero multi-term) - title-keyword extraction cannot
  read brand catalogs at all; merchandising structure is the right
  instrument, which was the point
- after a curated, declared collection->term map (visible in the
  builder; unmapped axes are listed, not guessed), exactly ONE
  cross-term assertion survives: aweinspired merchandises the
  "Tarot Pendant" and "5-Card Spread Tarot Necklace" in BOTH its
  astrology-celestial collections AND its tarot collection -
  celestial x tarot, asserted by the brand itself. recorded at
  family level (tarot cards are phraseless by policy; no card is
  named in the titles); no cypher edge is emitted against a
  non-existent family term
- the real gate is vocabulary COVERAGE: the brands' theme axes -
  goddess/mythic, medusa, serpent/snake, y2k, pearl, charm, butterfly,
  initial, angel number, heart, evil eye - exist as merchandised
  collections with real cross-memberships but have no solimet
  vocabulary terms to project onto. these are extension candidates
  awaiting explicit owner authorization (standing rule), and they
  would make this family dense: e.g. 67-product goddess x celestial
  overlap is a brand-asserted bridge the vocabulary cannot express
