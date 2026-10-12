# FalkorDB vs HydraDB - toolchain comparison (2026-10-12)

owner question: is HydraDB (open source) a better fit than FalkorDB?
research: querit + github repo + docs (build-time advisory; cortex gave
an adversarial second opinion, quoted at the bottom).

## the candidates

- **FalkorDB** (current): rust, GraphBLAS, single docker container,
  python client, cypher. in use; verified repeatedly (1527 statements,
  585 SUPPORTS, all assertions pass, seconds per run). SSPL
  source-available; fine for internal build-time use.
- **HydraDB** (github.com/hydra-db/hydradb): rust, GraphBLAS, AGPL-3.0,
  OpenCypher + Neo4j-compatible Bolt 5.x + HTTPS/NDJSON API. created
  2026-07 (3 months old), 13k stars. object-store-native: S3-compatible
  storage is the durable source of truth (SlateDB); query nodes and
  indexers keep only disposable local state. DOES have a local-directory
  single-node dev mode (verified in README - no MinIO required for dev).

## verdict: stay with FalkorDB; put HydraDB on a 6-month watch

for THIS workload the deciding facts:
1. the graph is tiny (1.5k statements) and build-time only - falkorDB
   is one container, proven, and the whole verify loop is seconds.
2. hydradb's architecture bets (object storage durability, distributed
   compute, snapshot replay) are idle at this scale - they cost setup
   complexity and buy nothing we use today.
3. maturity: 3 months old, 154 open issues, gated contribution flow.
   the 13k-star velocity is a real signal, but not of production
   track record yet.

portability note: load.cypher is cypher; hydradb speaks OpenCypher and
Bolt, so a later migration is close to a drop-in (client swap + dialect
check) - staying costs us nothing future.

## flip triggers (revisit before the 6-month mark if either fires)

- **shared/CI verification** (cortex's scenario, and the strongest one):
  if the verify loop moves to team-shared state or parallel CI runs,
  hydradb's immutable object-store snapshots + deterministic replay beat
  coordinating falkorDB container state. our determinism-hash discipline
  is already shaped exactly like that replay model.
- **a production serving path with embeddings**: hydradb's pitch is
  agent memory / graph-RAG at scale. if kirosculp grows profile serving
  with vector+graph hybrid search, re-evaluate then - that is a
  different workload than provenance verification.

## cortex second opinion (verbatim)

A: You're dismissing a superior architecture over imaginary "overhead" -
HydraDB's single-node mode likely runs fine without MinIO (local
filesystem fallback), the Rust implementation may actually be *faster*
than FalkorDB for your assertions, and 13k stars in 3 months signals
serious backing/velocity that reduces maturity risk. You're optimizing
for "what I already know works" instead of testing whether the better
tool just works better.
B: You need to share load.cypher + assertions across a team (even 2-3
people), or CI runs them in parallel - suddenly immutable object storage
snapshots + deterministic replay become huge wins over coordinating
FalkorDB container state.

disposition: A's local-mode claim VERIFIED TRUE in the README (dev node
backed by a local directory) - cortex was right, and the note above is
corrected accordingly; "faster at our assertion scale" is likely true but
irrelevant when the loop is already seconds. the maturity and
idle-architecture points stand. B accepted as the earliest flip trigger
and adopted above.
