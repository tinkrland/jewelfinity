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

## open items (next session)

- corpus profile check script: term existence, weight bounds, computed
  expected top-k pinned against the current table version, per-profile
  pass rates
- more profiles only as evidence supports them; thin styles get honest
  thin representation, not padding
