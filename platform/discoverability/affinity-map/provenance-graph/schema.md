# affinity provenance graph (falkordb)

owner direction 2026-10-09: falkordb under the hood holds "how the
thinking even is" - the reason for every affinity, the provenance of
what makes the engine think one thing relates to another. the engine
is a deep-understanding engine first: affinity for understanding,
recommendations as a surface on top, never a marketing push. the
  consumer surface EXISTS now: ../suggest/suggest.mjs (2026-10-15) -
  query-time fused ranking over this graph's families, qloo-style,
  with a provenance trail on every row; suggest-queries.cypher is the
  falkordb port.

falkordb here is the WHY layer. the committed artifacts remain primary
truth (vocabularies, affinity-table.json, marketplace evidence,
provenance.json); the graph is derived and rebuildable from them, same
rule as the spec's phase-two signal graph. drop it, reload it, lose
nothing.

## node types

- (:Term {id, vocabulary, name, version, updated, norm, facet_count})
- (:Facet {name, class})
- (:Profile {profile_id, version, status})
- (:Evidence {evidence_id, kind, platform, query, run_id, sha256,
  items, note, captured})   // from marketplace-evidence/provenance.json
- (:Prior {engine_version, table_schema, input_hash, output_hash,
  built})                    // one node per committed table instance

## edge types

- (:Term)-[:HAS_FACET {raw, weight, intensity}]->(:Facet)
  what a term IS: its facet composition.
- (:Term)-[:NEIGHBOR_OF {score, rank, norms, prior_input_hash}]->(:Term)
  the structural prior's affinity edges.
- (:Term)-[:SHARES_FACET {facet, left, right, left_class, right_class,
  contribution, prior_input_hash}]->(:Term)
  the WHY of each affinity edge: per-facet contribution rows, exactly
  as the table build computed them. this is "what makes us think it".
- (:Evidence)-[:SUPPORTS {items, note}]->(:Term)
  evidence provenance: which scraped runs, searches, and catalog pulls
  stand behind a term. curation map lives in the loader and is visible
  there; links are declared, not inferred.
- (:Profile)-[:SEEDS {weight}]->(:Term)
- (:Profile)-[:EXPECTED_AFFINITY {score, rank, method}]->(:Term)
  the latent blend's expected top-k, pinned to the prior by
  prior_input_hash on both edges.

## the questions it answers (openCypher, provenance-queries.cypher)

1. why does the engine think celestial relates to art_deco?
   -> the NEIGHBOR_OF edge, then every SHARES_FACET row beneath it,
      with each facet's contribution, in contribution order.
2. why do we believe in sign_pisces at all?
   -> SUPPORTS edges: the mercari/etsy/shein/ebay runs, queries, run
      ids, sha256s, item counts.
3. why did celestial-dreamer's latent blend rank sign_pisces second?
   -> SEEDS + the blend's facet composition + EXPECTED_AFFINITY.
4. what neighborhood does a term reach in two hops?
   -> the phase-two association graph shape, already queryable.

## honest limits

- not yet run live: this sandbox has no docker/redis, so the graph is
  authored (schema + deterministic loader + query set) and validated
  structurally, not executed. run against a real instance:
  docker run -p 6379:6379 falkordb/falkordb, then GRAPH.QUERY.
- SUPPORTS links are curated in the loader's map, not inferred from
  query text. wrong or missing links are a curation bug, fixable there.
- the phase-two seller-register co-occurrence family ARRIVED
  2026-10-14: [../corpus-co-occurrence/](../corpus-co-occurrence/),
  (:Term)-[:CO_OCCURS_WITH]->(:Term), 69 edges from 3,050 clean titles,
  applied after load.cypher via load-cooccurrence.cypher. menu-mode
  (zodiac sign pairs) dominates and must not be read as buyer affinity;
  the honest recommend() surface is query 2 in co-occurrence-queries.
  behavioral co-occurrence (co-saves, co-follows) remains future work
  and will load as a further family in the same instance. the first
  taste-act family - shopmy curator co-endorsement,
  (:Term)-[:CO_CURATED_WITH]->(:Term) - is BUILT (build-co-curation.py)
  but empty at search-card depth: 0 co-curated term pairs from 247
  curator-attributed products. gate to non-empty: storefront-level
  capture of curators' full product lists. a THIRD family exists now:
  merchandising-act co-membership (build-co-merchandising.py,
  brand-merchandising-structure/) - 216 cross-collection products over
  23 themed collections, one brand-asserted cross-term bridge
  (celestial x tarot, aweinspired, family level), the rest gated by
  vocabulary coverage of the brand theme axes (goddess, snake, y2k,
  pearl, charm, etc. - extension candidates, owner-authorized).
