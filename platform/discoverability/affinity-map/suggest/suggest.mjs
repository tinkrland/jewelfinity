#!/usr/bin/env node
// suggest(): the consumer-side surface, built qloo-style, 2026-10-15.
//
// what we copied from how qloo works: similarity is COMPUTED AT QUERY
// TIME from composed signals - it is not a stored edge. signals (seed
// terms, profile seeds) are fused across evidence families, each
// normalized 0-1, weighted, with popularity as a PRIOR inside the fusion
// (never a filter). what we refuse to copy: opacity. every ranked row
// carries its provenance trail - which families contributed, with what
// values, and the why (shared facets, exemplar titles, collections).
//
// families read (all committed, deterministic artifacts):
//   prior      affinity-table.json neighbors (structural, facet-based)
//   seller     corpus-co-occurrence/co-occurrence.jsonl, menu-filtered:
//              sign<->sign pairs are excluded everywhere (listing-format
//              artifact, not buyer affinity - see that README)
//   merch       corpus-co-occurrence/collection-overlaps.jsonl, mapped
//              cross-term pairs only (curated collection map, declared)
//   curator     corpus-co-occurrence/co-curation.jsonl (empty today,
//              contributes zero until storefront captures exist)
//   popularity suggest/prevalence.jsonl (sqrt-damped)
//
// weights are DECLARED priors, not learned - there is no click data to
// learn from. change them in one place, below, and say why in the README.
import { readFileSync } from "node:fs";
import { dirname, join } from "node:path";
import { fileURLToPath } from "node:url";

const HERE = dirname(fileURLToPath(import.meta.url));
const AM = join(HERE, "..");

const WEIGHTS = {
  prior: 0.55,      // the governed structural prior stays the spine
  seller: 0.20,     // marketplace co-titling, menu-filtered
  merch: 0.15,      // brand merchandising acts
  curator: 0.025,   // shopmy curator co-endorsement (empty today)
  popularity: 0.075 // qloo lesson: popularity as prior, sqrt-damped
};

const readJsonl = (p) => readFileSync(p, "utf8").split("\n").filter(Boolean).map(JSON.parse);
const table = JSON.parse(readFileSync(join(AM, "affinity-table.json"), "utf8"));
const seller = readJsonl(join(AM, "corpus-co-occurrence", "co-occurrence.jsonl"));
const merch = readJsonl(join(AM, "corpus-co-occurrence", "collection-overlaps.jsonl"));
const curator = readJsonl(join(AM, "corpus-co-occurrence", "co-curation.jsonl"));
const prevalence = Object.fromEntries(
  readJsonl(join(HERE, "prevalence.jsonl")).map(r => [r.term, r.title_count]));

const NAMES = Object.fromEntries(table.terms.map(t => [t.term, t.name]));
const norm = (v, max) => max > 0 ? Math.min(1, v / max) : 0;
const MAX = {
  seller: Math.max(...seller.map(r => r.count), 1),
  merch: Math.max(...merch.map(r => r.shared_products), 1),
  curator: Math.max(...curator.map(r => r.shared_count || 0), 1),
  prev: Math.max(...Object.values(prevalence), 1)
};
const isSign = (t) => t.startsWith("sign_");
const menuPair = (a, b) => isSign(a) && isSign(b);

// index families by unordered pair key
const pairIndex = (rows, val, filt) => {
  const m = new Map();
  for (const r of rows) {
    const [a, b] = [r.term_a, r.term_b].filter(Boolean);
    if (filt && !filt(r, a, b)) continue;
    const k = [a, b].sort().join("|");
    if (!m.has(k)) m.set(k, { rows: [] });
    m.get(k).rows.push(r);
  }
  return m;
};
const SELLER = pairIndex(seller, null, (r, a, b) => !menuPair(a, b));
const MERCH = pairIndex(merch, null, (r, a, b) => a && b && a !== b);
const CURATOR = pairIndex(curator, null, (r, a, b) => a && b);

const PRIOR = new Map(); // neighbor -> [{from, score, shared}]
for (const t of table.terms)
  for (const n of t.neighbors || [])
    (PRIOR.get(n.term) || PRIOR.set(n.term, []).get(n.term))
      .push({ from: t.term, score: n.score, shared: n.shared_facets || [] });

function evidence(seeds, candidate) {
  const priorHits = seeds.flatMap(s => (PRIOR.get(candidate) || [])
    .filter(h => h.from === s));
  // additive composition, like every other family: more supporting
  // seeds = more evidence, capped at 1. qloo composes signals; so do we.
  const prior = Math.min(1, priorHits.reduce((a, h) => a + h.score, 0));

  let sellerV = 0, sellerWhy = [];
  for (const s of seeds) {
    const hit = SELLER.get([s, candidate].sort().join("|"));
    if (hit) {
      const r = hit.rows[0];
      sellerV += norm(r.count, MAX.seller);
      sellerWhy.push(`${r.count}x co-titled, ${r.exemplars[0]}`);
    }
  }
  let merchV = 0, merchWhy = [];
  for (const s of seeds) {
    const hit = MERCH.get([s, candidate].sort().join("|"));
    if (hit) {
      const r = hit.rows[0];
      merchV += norm(r.shared_products, MAX.merch);
      merchWhy.push(`${r.brand} merchandises ${r.shared_products} products across ${r.collection_a} x ${r.collection_b}`);
    }
  }
  let curatorV = 0, curatorWhy = [];
  for (const s of seeds) {
    const hit = CURATOR.get([s, candidate].sort().join("|"));
    if (hit) {
      const r = hit.rows[0];
      curatorV += norm(r.shared_count, MAX.curator);
      curatorWhy.push(`${r.shared_count} shared curators`);
    }
  }
  const pop = Math.sqrt(norm(prevalence[candidate] || 0, MAX.prev));
  return { prior, seller: Math.min(1, sellerV), merch: Math.min(1, merchV),
           curator: Math.min(1, curatorV), popularity: pop,
           priorHits, sellerWhy, merchWhy, curatorWhy };
}

function suggest(seeds, topN = 10) {
  const bad = seeds.filter(s => !NAMES[s]);
  if (bad.length) throw new Error(`unknown terms: ${bad.join(", ")}`);
  const all = table.terms.map(t => t.term).filter(t => !seeds.includes(t));
  const scored = all.map(cand => {
    const e = evidence(seeds, cand);
    const score = Object.entries(WEIGHTS)
      .reduce((a, [k, w]) => a + w * e[k], 0);
    const why = [];
    if (e.priorHits.length) {
      const h = e.priorHits.sort((x, y) => y.score - x.score)[0];
      const top = h.shared.slice(0, 2).map(f => f.facet).join(", ");
      why.push(`prior ${h.score.toFixed(3)} via ${h.from}${top ? ` (${top})` : ""}`);
    }
    why.push(...e.sellerWhy.map(s => `seller: ${s}`));
    why.push(...e.merchWhy.map(s => `merch: ${s}`));
    why.push(...e.curatorWhy.map(s => `curator: ${s}`));
    why.push(`popularity ${e.popularity.toFixed(2)} (${prevalence[cand] || 0} titles)`);
    return { term: cand, name: NAMES[cand], score, evidence: e, why };
  });
  return scored.sort((a, b) => b.score - a.score).slice(0, topN);
}

// cli
const argv = process.argv.slice(2);
const seeds = [];
let profile = null, topN = 10, asJson = false;
for (let i = 0; i < argv.length; i++) {
  if (argv[i] === "--seed") seeds.push(argv[++i]);
  else if (argv[i] === "--profile") profile = argv[++i];
  else if (argv[i] === "--top") topN = +argv[++i];
  else if (argv[i] === "--json") asJson = true;
}
if (profile) {
  const path = profile.match(/^\//) ? profile : join(AM, "corpus", "profiles", profile.endsWith(".json") ? profile : `${profile}.json`);
  const p = JSON.parse(readFileSync(path, "utf8"));
  if (p.seeded_affinities) seeds.push(...Object.keys(p.seeded_affinities)); // weights refine later, README
  else if (p.seeds) seeds.push(...p.seeds);
  else throw new Error(`no seeds found in ${path}`);
}
if (!seeds.length) { console.error("usage: suggest.mjs --seed celestial [--profile p-003] [--top 10] [--json]"); process.exit(1); }

const results = suggest(seeds, topN);
if (asJson) console.log(JSON.stringify({ seeds, weights: WEIGHTS, results }, null, 1));
else {
  console.log(`suggest() for [${seeds.join(", ")}]  (weights: ${JSON.stringify(WEIGHTS)})`);
  results.forEach((r, i) => {
    console.log(`\n${i + 1}. ${r.name}  —  ${r.score.toFixed(3)}`);
    r.why.forEach(w => console.log(`     · ${w}`));
  });
}
