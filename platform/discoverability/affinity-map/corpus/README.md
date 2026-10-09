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

## cold-start pass rates (simulated runs, 2026-10-09)

- gothic-biker: 2/39 engaged pass, rate 0.0513
- antique-cluster: 0/2, rate 0 (n too small to mean anything)
- celestial-dreamer: 0/59, not measurable - all five expected results
  are symbol-layer terms and the symbol vocabulary has no marketplace
  phrases yet
- scandinavian-modernist: 20/160, rate 0.125 (the strongest: skonvirke
  lineage titles co-title with mcm language)

what the numbers honestly say: the style phrases are buyer-language by
design ("very old looking", "chunky vintage", "witchy"), so seller
titles rarely trigger the engagement gate - 116 solimet-clean titles
literally say "victorian" but only 2 match the authored phrases. the
pass rates therefore measure the buyer-language assumption, not just
the engine. the largest eval gap is the symbol layer: zero phrases,
so celestial's neighbors are invisible in titles.

## open items

- symbol marketplace phrases: the symbol vocabulary carries none;
  celestial-dreamer's expected results cannot be evaluated until it
  does
- more profiles only as evidence supports them; thin styles get honest
  thin representation, not padding
