# affinity corpus (draft, awaiting owner authorization)

authored buyer profiles with seeded affinities, versioned like every other
rule profile. this doubles as the simulated-buyer evaluation corpus per the
spec: it is what matching runs against until real signal volume exists.

status: format draft + four seed profiles, 2026-10-08. authored content -
nothing here is live or used by any engine until the owner authorizes the
merge, per the standing gate.

## format rules

- one json file per profile in profiles/, schema affinity-corpus-profile-v1
- every seeded term must exist in a governed vocabulary (style, symbol,
  wear-context); an unknown term is a build error, not a warning
- weights are 0..1, relative within the profile; no learned values, no
  price, no geography, no telemetry
- every profile carries a rationale citing its evidence; marketplace
  evidence cites platform/discoverability/marketplace-evidence/
- expected top-k results are never hand-written: they are computed from
  the seeded affinities against the versioned affinity table, so the
  expected block is pinned per table version by a check script
- profiles never change silently; a profile edit is a version bump

## tooling

- pin-expected-topk.mjs computes and writes expected-top-k.json, pinned to
  the committed table's input/output hashes. run it after any table
  rebuild; it is deterministic and byte-identical on rerun. matching is
  latent similarity affinity: a profile's seeds blend into one latent
  taste vector in the governed facet space, and candidates rank by
  cosine to that position. it is NOT pairwise semantic similarity to
  each seed (owner correction 2026-10-09): a buyer who loves both gothic
  and celestial has a latent midpoint taste, and the engine matches the
  midpoint, not the poles. rankings shifted accordingly: art_deco
  entered scandinavian-modernist's and antique-cluster's expected
  results (retro dropped from scandinavian-modernist's); pisces and
  scorpio rose above leo for celestial-dreamer.
- check-corpus-profiles.mjs validates every profile (schema, fields,
  weight bounds, seed terms against the governed vocabulary, rationale
  evidence citation, filename = profile_id) and verifies the pin is
  fresh and byte-identical to a fresh recomputation. prints the
  expected top-k per profile.
- simulate-matching-runs.mjs runs the per-profile pass-rate eval over
  the solimet-clean marketplace corpus (1724 listings): a listing passes
  when it matches a profile's seed phrases and at least one non-seed
  expected-top-k term's phrases. writes simulated-runs.json, pinned to
  the table hashes and corpus file hashes, with facet tracking for
  unobserved expected terms. deterministic.

## latent-position demo: a taste description that is not a style term

owner example 2026-10-09: "bold silver colored pieces that are a little
more than simple plain that you'll see everywhere but still stackable".
run as an ad-hoc blend (biker 0.5 + brutalist 0.3), the latent vector
lands on retro 0.222, organic_modern 0.158, mid_century_modernist 0.148,
gothic 0.064 - the bold, more-than-plain neighborhood. two honest
limits surfaced:

- "still stackable" cannot enter the blend at all: wear-context
  facet_sources is empty in config, so stacks/everyday have no facet
  representation in the structural prior. context binds at the object
  layer once character records exist, not in cold-start.
- "silver colored" has no material facet either. styles carry form and
  feel (chain_link, skull, chunky), not metal; the only silver in facet
  space is the astro symbol metal_silver, and adding it flips the blend
  to element_air/element_water/sign_cancer 0.28+ - meaning, not
  material. material silver, in practice, rides inside style features.
  the symbol-vs-material distinction is exactly why metal_silver
  phrases must never match bare "silver".

## cold-start pass rates (simulated runs, 2026-10-09)

- gothic-biker: 2/39 engaged pass, rate 0.0513
- antique-cluster: 0/2, rate 0 (n too small to mean anything)
- celestial-dreamer: 0/59, not measurable - all five expected results
  are symbol-layer terms and the symbol vocabulary has no marketplace
  phrases yet
- scandinavian-modernist: 20/160, rate 0.125 (the strongest: skonvirke
  lineage titles co-title with mcm language)

(original 0.1 run; superseded by the 0.2 re-run below)

what the numbers honestly say: the style phrases are buyer-language by
design ("very old looking", "chunky vintage", "witchy"), so seller
titles rarely trigger the engagement gate - 116 solimet-clean titles
literally say "victorian" but only 2 match the authored phrases. the
pass rates therefore measure the buyer-language assumption, not just
the engine. the largest eval gap is the symbol layer: zero phrases,
so celestial's neighbors are invisible in titles.

## re-run after symbol phrases 0.2.0 (2026-10-10)

sign names + "white gold" + "platinum" added to the symbol vocabulary
per owner authorization. table rebuilt (input hash changed, content
identical), 193 checks pass, expected top-k re-pinned (unchanged -
phrases do not participate in affinity scoring). new pass rates:

- gothic-biker: 2/39 (0.0513) - unchanged
- antique-cluster: 0/2 - unchanged
- celestial-dreamer: 0/62 - NOW MEASURABLE (leo/pisces/scorpio
  detectable) but zero overlap: the main corpus holds only 2
  sign-name titles (both gothic-biker listings), and neither
  co-titles with celestial language. sign titles live in the zodiac
  segment captures, deliberately excluded from the sim corpus
  (query-biased). the honest reading: the symbol layer is now
  detectable in principle, and the main corpus does not exercise it.
  exercising it needs either segment-inclusive sims (with the query-
  echo caveat stated) or an unbiased zodiac corpus.
- scandinavian-modernist: 20/160 (0.125) - unchanged

## segment-inclusive sim (2026-10-10, --segment mode)

the harness now has a second mode (`node simulate-matching-runs.mjs
--segment`) that adds every processed segment capture to the main
corpus (4,180 clean listings vs 1,724). QUERY-BIASED by construction:
segment titles were pulled with segment queries, so the pass rates
here answer "is the symbol layer detectable at all", never "what is
the unbiased pass rate". the default main-corpus run stays the
unbiased comparison and is unchanged.

- gothic-biker: 2/80 (0.025) - dilution: same passes over a larger
  engaged pool (segment occult titles engage the gothic seeds)
- antique-cluster: 0/2 - unchanged
- celestial-dreamer: 1/240 (0.0042) - the symbol layer's FIRST
  nonzero pass. the single passing listing is a shein zodiac
  SEO mega-title naming all twelve signs (engaged via seed
  "cancer", passed via expected sign_pisces) - the shein register
  doing exactly what the platform-register notes said it does
- scandinavian-modernist: 21/165 (0.1273) - stable across modes

honest reading: sign phrases are now detectable, but sign names
almost never co-title with celestial or white-gold language -
engagement is common (240), co-occurrence is the rare event. the
buying-language model for symbol-layer engagement may want profiles
seeded on signs themselves (a "zodiac buyer" profile), not celestial
proxies. profiles remain evidence-gated per the standing rule.

segment corpus provenance: raw captures processed by
symbol-segment/process-raw-segments.py (segment-solimet-v1 filter,
committed and deterministic; calibration: etsy-tarot 94, ebay-tarot
89, etsy-zodiac 71 exact matches to recorded counts; mercari-us-tarot
85 vs recorded 88 and shein-tarot 79 vs 80, the earlier inline passes
were not perfectly uniform - the committed gate is the conservative
variant and is now the single source of truth). solisdivinitytarot
(tarot decks), sabrinabi (404), and the two 0-item mercari files are
excluded from the corpus on the same non-evidence principle as the
graph loader.

## open items

- a "zodiac buyer" profile (seeded on signs) is the natural next
  eval step once evidence supports one; profiles stay evidence-gated
- tarot_card records are DONE (v0.2.1, 2026-10-10)
- more profiles only as evidence supports them; thin styles get honest
  thin representation, not padding
