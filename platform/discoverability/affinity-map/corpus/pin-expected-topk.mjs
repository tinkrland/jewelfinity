#!/usr/bin/env node
// affinity corpus v0.1: pin the computed expected top-k for every profile.
//
// the expected results are never hand-written. this script computes each
// profile's expected top-k from its seeded affinities against the
// committed affinity table and writes corpus/expected-top-k.json, pinned
// to the table's input/output hashes so check-corpus-profiles.mjs can
// detect a stale pin after any table rebuild.
//
// scoring: for a profile with seeds {s1: w1, ...}, a candidate term's
// expected score is the weighted average of the table's similarity
// scores sim(seed, candidate), normalized by the total seed weight.
// candidates are all table terms except the profile's own seeds. a seed
// pair below the table's min_score contributes zero. top-k after the
// table's own top_k setting. deterministic: no timestamps, canonical
// serialization, byte-identical on rerun.
//
// usage: node platform/discoverability/affinity-map/corpus/pin-expected-topk.mjs

import fs from "node:fs";
import path from "node:path";
import { fileURLToPath, pathToFileURL } from "node:url";
import { roundTo } from "../build-affinity-table.mjs";

const CORPUS_DIR = path.dirname(fileURLToPath(import.meta.url));
const MODULE_DIR = path.dirname(CORPUS_DIR);
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

export function computeExpectedTopk(table, profile, decimals = 9) {
  const seeds = Object.entries(profile.seeded_affinities);
  const totalWeight = seeds.reduce((sum, [, w]) => sum + w, 0);
  const seedTerms = new Set(seeds.map(([t]) => t));
  const sim = new Map();
  for (const term of table.terms) {
    sim.set(term.term, new Map(term.neighbors.map((n) => [n.term, n.score])));
  }
  const scored = [];
  for (const term of table.terms) {
    if (seedTerms.has(term.term)) continue;
    let score = 0;
    for (const [seed, weight] of seeds) {
      score += weight * (sim.get(seed)?.get(term.term) ?? 0);
    }
    score = roundTo(score / totalWeight, decimals);
    if (score > 0) scored.push({ term: term.term, vocabulary: term.vocabulary, score });
  }
  scored.sort((a, b) => b.score - a.score || a.term.localeCompare(b.term));
  return scored.slice(0, table.summary.top_k);
}

function main() {
  const table = JSON.parse(fs.readFileSync(TABLE_PATH, "utf8"));
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
      "expected score = sum over seeds of (seed weight x table similarity) / total seed weight; candidates exclude the profile's own seeds; pairs below the table min_score contribute zero; k = table summary.top_k.",
    profiles: profiles.map(({ file, profile }) => ({
      profile_id: profile.profile_id,
      profile_version: profile.version,
      status: profile.status,
      file,
      expected_topk: computeExpectedTopk(table, profile),
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
