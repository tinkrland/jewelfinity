// recommend-surface queries over CO_OCCURS_WITH (apply after load.cypher
// and load-cooccurrence.cypher; query edges undirected)

// 1. top co-occurrence neighbors of a term, menu mode included
MATCH (:Term {id: 'celestial'})-[c:CO_OCCURS_WITH]-(t:Term)
RETURN t.id, c.count, c.registers, c.exemplar ORDER BY c.count DESC;

// 2. the honest recommendation surface: menu mode excluded
//    (sign-to-sign edges are listing-format artifacts, not affinity)
MATCH (a:Term)-[c:CO_OCCURS_WITH]-(t:Term)
WHERE NOT (a.id STARTS WITH 'sign_' AND t.id STARTS WITH 'sign_')
RETURN a.id, t.id, c.count, c.exemplar ORDER BY c.count DESC;

// 3. corroboration: which structural-prior edges (NEIGHBOR_OF) also
//    appear as marketplace co-titling?
MATCH (a:Term)-[n:NEIGHBOR_OF]->(b:Term)
MATCH (a)-[c:CO_OCCURS_WITH]-(b)
RETURN a.id, b.id, n.score, c.count;

// 4. profile-seeded surface: co-occurring terms beyond the seeds
MATCH (p:Profile)-[:SEEDS]->(s:Term)-[c:CO_OCCURS_WITH]-(t:Term)
WHERE NOT (s.id STARTS WITH 'sign_' AND t.id STARTS WITH 'sign_')
RETURN p.profile_id, s.id, t.id, c.count ORDER BY c.count DESC;
