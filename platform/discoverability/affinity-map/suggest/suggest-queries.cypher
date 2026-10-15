// falkordb port of suggest() - reference implementation is suggest.mjs
// until the instance is live; weights must match WEIGHTS in suggest.mjs
// families: NEIGHBOR_OF (prior), CO_OCCURS_WITH (seller, menu-filtered),
// CO_MERCHANDISED_WITH (merch), CO_CURATED_WITH (curator), prevalence
// stored as Term.popularity (load-time, sqrt-damped)

// fused suggest for a profile: ranked candidates with per-family evidence
MATCH (p:Profile {profile_id: $pid})-[:SEEDS]->(s:Term)
OPTIONAL MATCH (s)-[n:NEIGHBOR_OF]->(c:Term)
WITH c, toFloat(count(DISTINCT s)) AS seed_count,
     toInteger(sum(n.score) > 0) * apoc.convert.toFloat(sum(n.score)) AS prior_raw
WITH c, CASE WHEN seed_count > 0 THEN prior_raw ELSE 0 END AS prior_e
OPTIONAL MATCH (s2:Term)<-[:SEEDS]-(p)-[:SEEDS]->(s:Term),
     (s)-[co:CO_OCCURS_WITH]-(c)
WHERE NOT (s.id STARTS WITH 'sign_' AND c.id STARTS WITH 'sign_')
WITH c, prior_e, sum(co.count) AS seller_raw
// ... same pattern for CO_MERCHANDISED_WITH / CO_CURATED_WITH,
// normalize by family max, apply WEIGHTS, ORDER BY fused score DESC
RETURN c.id AS term,
       0.55 * prior_e
     + 0.20 * seller_e
     + 0.15 * merch_e
     + 0.025 * curator_e
     + 0.075 * sqrt(c.popularity) AS score
ORDER BY score DESC LIMIT 10;
