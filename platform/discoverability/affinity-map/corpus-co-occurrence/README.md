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
