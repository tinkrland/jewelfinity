# prior art: qloo (taste ai), reviewed 2026-10-09

owner asked for inspiration from qloo.com (https://qloo.com, accessed
2026-10-09; docs.qloo.com; press: match group, michelin, gartner 2026
"set diamond" placement). this is conceptual prior art only - no code,
no data, no dependency. affinity-map stays authored, deterministic,
single-vertical.

## what qloo is

a commercial "cultural ai": a cross-domain cultural graph (600m+
entities, 30t+ co-occurrences, 14+ years of ontology maturation) with
a taste-intelligence layer on top. capabilities: entity enrichment,
taste intelligence, cross-domain recommendations "from one signal or
many", locality intelligence, agent grounding, on-device inference.

## where the spec and qloo agree (validation)

- "privacy as a system boundary, not a policy layer": inference from
  entities, relationships, context, with no identity graph, no direct
  identifiers, stateless per-request inference, anonymized learning.
  the spec's "profiles are derived, private, and invisible" plus the
  no-telemetry, no-cross-site rules are the same line drawn in the
  same place.
- "modeling both the intrinsic character of things and people's
  affinities between them" - this is object character records plus
  buyer affinity profiles, stated in their marketing language.
- explainability from structure: "every result can be explained: which
  entities, which attributes, which affinities" - the determinism
  block's philosophy, independently arrived at.
- their "taste context" surface ("select items to connect tastes to
  explore the cultural qualities of a combination and the additional
  affinities it points toward") is the latent blend, as a product.
  the corpus latent-position demo is the same interaction: pick a few
  seeds, see the predicted neighborhood.

## what to take from it (concepts only)

- "from one signal or many" is the right cold-start framing: the
  profile blend must degrade gracefully from a single follow (weight
  1.0, one direction) to a full seed set. it already does; say so in
  the spec's words, not qloo's.
- co-occurrence as the phase-two feature source: their 30t
  co-occurrences are the industrial-scale version of the spec's
  co-saves/co-follows signal layer. the authored structural prior is
  the cold-start stand-in for exactly what their corpus provides
  warm.
- neighborhood/similarity as the API surface: entity-to-entity
  similarity and "additional affinities it points toward" are the two
  read primitives the affinity table already exposes (neighbor lists,
  expected top-k). worth keeping the interface that shape.

## honest differences

- qloo is learned over a cross-domain corpus (music, film, dining,
  retail, travel); affinity-map is authored and deterministic, one
  vertical, no learned components, evidence-gated vocabulary.
- qloo's determinism claim is about explainable structured output over
  learned models; the engine here is deterministic end to end.
- scale: 600m entities vs 13 styles + 37 symbols + 4 contexts. the
  comparison is about the shape of the thinking, not the size.
