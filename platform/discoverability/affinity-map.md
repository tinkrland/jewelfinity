# affinity-map: deterministic taste-intelligence engine

status: drafted specification. the cold-start structural half is
implemented as [affinity-map/](affinity-map/) v0.1: the structural
affinity table computed from the governed vocabulary alone.
profile-to-character matching, decay, the corpus, and creator affinity
are not implemented yet.

affinity-map computes affinity between buyer affinity profiles and object
character records. it is a pure engine: deterministic, explainable, and free
of learned components. it never decides anything. the discoverability policy
layer consumes its output and makes every eligibility, ranking, and surfacing
call. same split as paracraft and tessa: the engine computes, the platform
acts.

this document refines the required-changes item in the discoverability
readme ("define explicit ranking signals") by separating signal math from
ranking policy. it sits alongside capture (engagement events,
[buyers/engagement.md](../buyers/engagement.md)) and policy (this directory),
between them.

## 1. boundaries

inputs:

- the signal log: likes, list adds, wishlist saves, follows.
- release character records, derived from release records.
- the governed aesthetic vocabulary.
- the authored affinity corpus.

outputs:

- candidate results with explanation objects.

never sees:

- price. policy sees price; two-way pricing makes price a creator choice,
  not a property of the design.
- buyer geography. it is structurally absent from the platform, so it
  cannot leak.
- engagement telemetry. umami stays operations-only and never feeds
  affinity or ranking.

profiles are derived, private, and invisible to everyone, including the
profiled buyer. same treatment as in-house trust levels.

## 2. data model

### object character record

derived from the release record, versioned. the studio-to-platform
interface is the release; affinity-map reads release data only and never
touches studio internals.

- structural facets, typed straight from paracraft state: family
  (form), declared ops, metal, and the measured bands below.
- physical axes (added 2026-10-10, owner-authorized per
  affinity-map/physical-axes-proposal.md): form, silhouette, scale
  (mm), visual weight band, finish, structure, detail density band.
  measured on the object, never authored. style axes are impressions
  (machine-labeled via `axis_kinds` in the style vocabulary) and are
  joined - not replaced - by these bands at match time.
- semantic facets: governed vocabulary terms, collections.
- creator identity and price are not part of character.

### buyer affinity profile

a derived view, recomputable from the signal log.

- person-to-vocabulary affinities. follows carry the explicit weight; this
  is the only declaration channel, per the implicit-first ruling.
- person-to-object affinities. wishlist saves are trust-weighted as
  specced; likes carry lower weight.
- person-to-creator affinities.
- the blend may carry physical bands (visual weight, detail density,
  scale, structure), bound at the object layer - where wear context
  already binds. "bold silver, a little more than plain, stackable"
  is expressible there as heavy-ish weight + low-to-medium detail
  density + small-to-medium scale + linked/layered structure.
- every facet carries provenance: which signals contributed it and when.

### affinity corpus

authored profiles with seeded affinities, versioned like rule profiles.
it doubles as the simulated-buyer evaluation corpus, and it is the only
thing matching runs against until real signal volume exists. the corpus
format and first profiles are not authored yet.

## 3. storage

day one the signal graph is genuinely relational. follows, likes, saves,
and release-to-facet edges are simple typed relations, and content-based
matching is joins plus vector math, not traversal. postgres tables are the
primary store for signals and character records.

falkordb stays the chosen backend pairing and, per owner direction
2026-10-09, also holds the affinity provenance graph: the why-layer.
every structural affinity edge carries its per-facet contribution rows
(which facets, which intensities, which classes made the engine think
two terms relate); every term carries the evidence provenance that
justifies it (runs, queries, run ids, hashes, item counts); profiles
carry their seeds and expected affinities. "why does the engine think
x relates to y" is a graph query, not a documentation dig. the
provenance-graph/ prototype (schema, deterministic loader, query set)
defines it; committed artifacts stay primary truth and the graph stays
derived and rebuildable. the phase-two co-occurrence features - co-saves,
co-follows, neighborhood queries, the multi-hop association graph - load
into the same instance as a separate relationship family. falkordb never
holds primary truth, so it can be dropped and rebuilt without losing
anything.

positioning, same ruling: this is a deep-understanding engine first.
recommendations are a surface on top of the affinity understanding -
affinity-related, never a product-push layer for marketing.

either way, no store computes the affinity math. scoring runs in-process
over loaded facet vectors. the core is a pure function over its inputs,
the same pattern as the themailtell classification core.

## 4. algorithm

- profile and character are sparse facet vectors over the governed
  vocabulary plus typed structural facets.
- the score is weighted facet overlap with deterministic recency decay.
  weights and decay rates live in versioned config, not code, and never
  in a model.
- no embeddings, no learned similarity, no llm anywhere in the path. a
  learned model cannot survive the audit requirement; a weighted overlap
  can, byte for byte.
- each result carries an explanation object: the contributing facets and
  their weights. these feed the hash-chained ranking decision logs
  directly, so "why this surfaced" is a citable artifact.

## 5. determinism and audit

- same inputs produce identical outputs. input hash and output hash are
  recorded per computation; corpus version, vocabulary version, and
  config version are pinned to each run.
- the signal log is append-only; profiles are always recomputable from
  it. no profile is ever authoritative state.
- external taste services never appear in runtime. any third-party study
  (public docs, patents, black-box probes) informs corpus and output
  design only, on the study side of a clean-room wall, and its
  observation log never enters the runtime path.

## 6. evaluation

- labeled corpus, expected top-k results, per-profile pass rates,
  false-positive tracking by facet. the same eval-harness shape as the
  paracraft benchmark: quality as a number before launch claims.
- cold-start is measured against the corpus, which is exactly the problem
  the corpus exists to answer.

## 7. non-goals

- no demographic conditioning. geography and age do not exist in
  profiles.
- no price in character.
- no passive or telemetry signals, no cross-site identity of any kind.
- no co-occurrence features until volume justifies them.

## open items

- author the corpus profile format and the first profiles.
- pick decay window semantics: fixed half-life vs sliding window. both
  are deterministic and defensible.
- decide whether creator affinity influences object ranking at all in
  v1, or waits for phase two.
