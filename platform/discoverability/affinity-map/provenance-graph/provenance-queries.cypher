// 1. why does the engine think celestial relates to art_deco?
MATCH (a:Term {id:'celestial'})-[n:NEIGHBOR_OF]->(b:Term {id:'art_deco'})
MATCH (a)-[x:SHARES_FACET]->(b)
RETURN n.score, x.facet, x.left, x.right, x.contribution ORDER BY x.contribution DESC;

// 2. why do we believe in sign_pisces at all? full evidence chain
MATCH (e:Evidence)-[s:SUPPORTS]->(t:Term {id:'sign_pisces'})
RETURN e.platform, e.query, e.run_id, e.sha256, s.items ORDER BY e.evidence_id;

// 3. why did celestial-dreamer's blend rank sign_pisces high? seeds + result
MATCH (p:Profile {profile_id:'profile-003-celestial-dreamer'})-[sd:SEEDS]->(st:Term)
OPTIONAL MATCH (p)-[xa:EXPECTED_AFFINITY]->(rt:Term {id:'sign_pisces'})
RETURN st.id, sd.weight, xa.score, xa.rank;

// 4. two-hop neighborhood of celestial (phase-two association shape)
MATCH (a:Term {id:'celestial'})-[:NEIGHBOR_OF]->(b:Term)-[:NEIGHBOR_OF]->(c:Term)
WHERE c.id <> 'celestial' RETURN DISTINCT c.id, count(*) AS paths ORDER BY paths DESC LIMIT 10;

// 5. every term's evidence coverage (honest gaps visible)
MATCH (t:Term) OPTIONAL MATCH (e:Evidence)-[:SUPPORTS]->(t)
RETURN t.id, count(e) AS evidence_edges ORDER BY evidence_edges ASC, t.id;
