#!/usr/bin/env node
// affinity corpus v0.1: pin the computed expected top-k for every profile.
//
// the expected results are never hand-written. this script computes each
// profile's expected top-k from its seeded affinities against the
// committed affinity table and writes corpus/expected-top-k.json, pinned
// to the table's input/output hashes so check-corpus-profiles.mjs can
// detect a stale pin after any table rebuild.
//
// scoring: this is latent similarity affinity matching, NOT pairwise
// semantic similarity to each seed. a profile's seeds blend into one
// latent taste vector in the governed facet space (each seed's unit
// direction weighted by the profile's affinity weight), and every
// candidate term ranks by cosine affinity to that latent position. the
// distinction is the point: a buyer who loves both gothic and celestial
// has a latent midpoint taste, not two separate affinities, and the
// engine matches the midpoint, not the poles. term-to-term scores in
// the committed table remain the structural prior; this script performs
// the profile-side blend deterministically from the same vocabularies
// and config. candidates exclude the profile's own seeds. top-k after
// the table's own top_k setting. deterministic: no timestamps, canonical
// serialization, byte-identical on rerun.
//
// usage: node platform/discoverability/affinity-map/corpus/pin-expected-topk.mjs

import fs from "node:fs";
import path from "node:path";
import { fileURLToPath, pathToFileURL } from "node:url";
import fs_extra from "node:fs";
import { roundTo, readInputs, extractFacets, facetNorm, scorePair } from "../build-affinity-table.mjs";

const CORPUS_DIR = path.dirname(fileURLToPath(import.meta.url));
const MODULE_DIR = path.dirname(CORPUS_DIR);
const CONFIG_PATH = path.join(MODULE_DIR, "config.json");
const TABLE_PATH = path.join(MODULE_DIR, "affinity-table.json");
const PROFILES_DIR = path.join(CORPUS_DIR, "profiles");
const OUTPUT_PATH = path.join(CORPUS_DIR, "expected-top-k.json");

export function loadProfiles() {
  return fs
    .readdirSync(PROFILES_DIR)
    .filter((f) => f.endsWith(".json"))
    .map((f) => {
      const profile = JSON.parse(fs.readFileSync(path.join(PROFILES_DIR, f), "utf8"));
      return { file: f, profile };
    })
    .sort((a, b) => a.profile.profile_id.localeCompare(b.profile.profile_id));
}

// build the facet-space context once: term -> facet map, computed the
// same way the table build does it, from the same vocabularies + config.
export function buildFacetContext() {
  const config = JSON.parse(fs_extra.readFileSync(CONFIG_PATH, "utf8"));
  const vocabInputs = readInputs(config);
  const terms = new Map();
  for (const input of vocabInputs) {
    for (const record of input.records) {
      const id = record.style_id ?? record.symbol_id ?? record.context_id;
      const facets = extractFacets(record, config);
      if (facets.size === 0) continue;
      terms.set(id, { facets, norm: facetNorm(facets), vocabulary: input.vocabulary });
    }
  }
  return { config, terms, topK: config.scoring?.top_k ?? 10 };
}

// cosine between a weighted facet blend and a term's facet vector,
// using the same per-facet class weighting as the table (scorePair's
// component scale: sqrt(weight) * raw).
function blendCosine(blendFacets, term) {
  const { dot } = scorePair(blendFacets, term.facets);
  let blendNormSq = 0;
  for (const f of blendFacets.values()) blendNormSq += f.weight * f.raw * f.raw;
  const blendNorm = Math.sqrt(blendNormSq);
  return blendNorm === 0 || term.norm === 0 ? 0 : dot / (blendNorm * term.norm);
}

export function computeExpectedTopk(ctx, profile, decimals = 9) {
  const seeds = Object.entries(profile.seeded_affinities);
  const seedTerms = new Set(seeds.map(([t]) => t));
  // latent taste vector: sum of seed unit directions, weighted by the
  // profile's affinity weights. intensity lives in the weights, not in
  // the style vectors themselves.
  const blend = new Map();
  for (const [seed, weight] of seeds) {
    const entry = ctx.terms.get(seed);
    if (!entry) throw new Error(`seed term "${seed}" not found in facet context`);
    for (const [name, facet] of entry.facets) {
      const unit = (Math.sqrt(facet.weight) * facet.raw) / entry.norm;
      const existing = blend.get(name);
      if (existing) {
        existing.raw += weight * unit;
      } else {
        blend.set(name, { raw: weight * unit, weight: 1, class: facet.class });
      }
    }
  }
  const scored = [];
  for (const [id, entry] of ctx.terms) {
    if (seedTerms.has(id)) continue;
    const score = roundTo(blendCosine(blend, entry), decimals);
    if (score > 0) scored.push({ term: id, vocabulary: entry.vocabulary, score });
  }
  scored.sort((a, b) => b.score - a.score || a.term.localeCompare(b.term));
  return scored.slice(0, ctx.topK);
}

function main() {
  const table = JSON.parse(fs.readFileSync(TABLE_PATH, "utf8"));
  const ctx = buildFacetContext();
  const profiles = loadProfiles();
  const pin = {
    schema: "corpus-expected-topk-v1",
    description:
      "computed expected top-k results per corpus profile, derived deterministically from the seeded affinities and the committed affinity table. never hand-written; regenerate with pin-expected-topk.mjs after any table rebuild.",
    pinned_to: {
      engine: table.engine,
      table_schema: table.schema,
      input_hash: table.determinism.input_hash,
      output_hash: table.determinism.output_hash,
    },
    method:
      "latent similarity affinity matching: expected score = cosine between the profile's latent taste vector (sum of seed unit facet directions weighted by the profile's affinity weights) and each candidate term's facet vector. not pairwise semantic similarity to the seeds. candidates exclude the profile's own seeds; k = config scoring.top_k.",
    profiles: profiles.map(({ file, profile }) => ({
      profile_id: profile.profile_id,
      profile_version: profile.version,
      status: profile.status,
      file,
      expected_topk: computeExpectedTopk(ctx, profile),
    })),
  };
  fs.writeFileSync(OUTPUT_PATH, `${JSON.stringify(pin, null, 2)}\n`);
  for (const p of pin.profiles) {
    process.stdout.write(
      `${p.profile_id} (${p.profile_version}, ${p.status}): ${p.expected_topk.length} expected results, top: ${p.expected_topk
        .slice(0, 3)
        .map((e) => `${e.term} ${e.score}`)
        .join(", ")}\n`,
    );
  }
  process.stdout.write(`pin written: ${path.relative(process.cwd(), OUTPUT_PATH)}\n`);
}

if (process.argv[1] && import.meta.url === pathToFileURL(process.argv[1]).href) {
  main();
}
