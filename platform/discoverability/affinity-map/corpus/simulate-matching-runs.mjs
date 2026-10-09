#!/usr/bin/env node
// affinity corpus v0.1: simulated matching runs - the per-profile pass
// rates the spec asks for, quality as a number before launch claims.
//
// what a run is: a simulated buyer = a corpus profile. the buyer engages
// with marketplace listings whose titles match any of the profile's
// seed phrases (token-boundary match on the governed phrase vocabulary).
// the engine's cold-start recommendation is the pinned expected top-k.
// a listing passes when it also matches the phrases of at least one
// non-seed expected term. pass rate = passes / engaged, per profile.
//
// honest limits, kept in the artifact, not hidden:
// - only style and wear-context terms have marketplace phrases; the
//   symbol vocabulary carries none, so symbol-layer recommendations are
//   undetectable in titles. a pass rate of 0 against symbol-only
//   expected results means "not measurable yet", not "engine wrong".
// - runs go over the solimet-clean main corpus only (ebay + etsy
//   snapshots); the co-occurrence probes are excluded because their
//   queries bias titles toward the drift edges.
// - unobserved expected terms get facet tracking: the shared facets that
//   drove their score, so a miss can be inspected rather than guessed at.
//
// deterministic: fixed snapshots, fixed phrase vocabulary, canonical
// serialization, no timestamps. rerun is byte-identical.
//
// usage: node platform/discoverability/affinity-map/corpus/simulate-matching-runs.mjs

import fs from "node:fs";
import path from "node:path";
import { fileURLToPath, pathToFileURL } from "node:url";
import { roundTo, sha256File } from "../build-affinity-table.mjs";
import { loadProfiles, computeExpectedTopk, buildFacetContext } from "./pin-expected-topk.mjs";

const CORPUS_DIR = path.dirname(fileURLToPath(import.meta.url));
const MODULE_DIR = path.dirname(CORPUS_DIR);
const REPO_ROOT = path.resolve(MODULE_DIR, "..", "..", "..");
const TABLE_PATH = path.join(MODULE_DIR, "affinity-table.json");
const EVIDENCE_DIR = path.join(REPO_ROOT, "platform", "discoverability", "marketplace-evidence");
const CORPUS_FILES = ["ebay-listings.jsonl", "etsy-listings.jsonl"];
const VOCAB_PATHS = {
  "style-vocabulary": path.join(REPO_ROOT, "offerings", "styles", "style-vocabulary.jsonl"),
  "symbol-vocabulary": path.join(REPO_ROOT, "offerings", "styles", "symbol-vocabulary.jsonl"),
  "wear-context-vocabulary": path.join(REPO_ROOT, "offerings", "styles", "wear-context-vocabulary.jsonl"),
};
const OUTPUT_PATH = path.join(CORPUS_DIR, "simulated-runs.json");

function tokens(s) {
  return (s || "").toLowerCase().split(/[^a-z0-9]+/).filter(Boolean);
}
function loadVocabPhrases() {
  const phraseIndex = []; // [{term, vocabulary, tokens: [[..]], }]
  for (const [vocab, p] of Object.entries(VOCAB_PATHS)) {
    for (const line of fs.readFileSync(p, "utf8").split("\n").filter(Boolean)) {
      const rec = JSON.parse(line);
      const id = rec.style_id ?? rec.symbol_id ?? rec.context_id;
      const phrases = rec.phrases ?? [];
      if (phrases.length > 0) {
        phraseIndex.push({
          term: id,
          vocabulary: vocab,
          phrases: phrases.map((ph) => tokens(ph)),
        });
      }
    }
  }
  return phraseIndex;
}
function matchTerms(titleTokens, phraseIndex) {
  const matched = new Set();
  for (const entry of phraseIndex) {
    for (const ph of entry.phrases) {
      outer: for (let i = 0; i + ph.length <= titleTokens.length; i++) {
        for (let j = 0; j < ph.length; j++) {
          if (titleTokens[i + j] !== ph[j]) continue outer;
        }
        matched.add(entry.term);
        break;
      }
    }
  }
  return matched;
}

function main() {
  const table = JSON.parse(fs.readFileSync(TABLE_PATH, "utf8"));
  const profiles = loadProfiles();
  const phraseIndex = loadVocabPhrases();
  const listings = [];
  for (const f of CORPUS_FILES) {
    const full = path.join(EVIDENCE_DIR, f);
    for (const line of fs.readFileSync(full, "utf8").split("\n").filter(Boolean)) {
      const r = JSON.parse(line);
      if (r.solimet_title_check === true) listings.push({ file: f, title: r.title });
    }
  }
  const expected = new Map(
    profiles.map(({ profile }) => [profile.profile_id, computeExpectedTopk(buildFacetContext(), profile)]),
  );

  const results = profiles.map(({ profile }) => {
    const seeds = Object.keys(profile.seeded_affinities);
    const seedTerms = new Set(seeds);
    const expectedTopk = expected.get(profile.profile_id);
    const expectedTerms = expectedTopk.map((e) => e.term);
    const seedEntries = phraseIndex.filter((p) => seedTerms.has(p.term));
    const detectableSeeds = seedEntries.map((p) => p.term);
    const detectableExpected = phraseIndex.filter((p) => expectedTerms.includes(p.term)).map((p) => p.term);

    let engaged = 0;
    const passes = 0;
    const passListings = [];
    const expectedHits = new Map(detectableExpected.map((t) => [t, 0]));
    for (const listing of listings) {
      const tt = tokens(listing.title);
      const matched = matchTerms(tt, phraseIndex);
      const seedHit = [...seedTerms].some((s) => matched.has(s));
      if (!seedHit) continue;
      engaged++;
      const other = [...matched].filter((t) => !seedTerms.has(t));
      const hit = other.filter((t) => expectedTerms.includes(t));
      for (const t of hit) expectedHits.set(t, expectedHits.get(t) + 1);
      if (hit.length > 0) passListings.push(1);
    }
    const passed = passListings.length;

    // facet tracking for unobserved expected terms
    const unobserved = expectedTopk
      .filter((e) => !(expectedHits.get(e.term) > 0))
      .map((e) => {
        const drivenBy = [];
        for (const term of table.terms) {
          if (!seedTerms.has(term.term)) continue;
          const nb = term.neighbors.find((n) => n.term === e.term);
          if (nb) {
            for (const f of nb.shared_facets) {
              drivenBy.push({ seed: term.term, facet: f.facet, contribution: f.contribution });
            }
          }
        }
        drivenBy.sort((a, b) => b.contribution - a.contribution || (a.seed + a.facet).localeCompare(b.seed + b.facet));
        return { term: e.term, score: e.score, detectable_in_titles: detectableExpected.includes(e.term), driven_by_facets: drivenBy.slice(0, 5) };
      });

    const notes = [];
    if (detectableSeeds.length < seeds.length) {
      notes.push(
        `seeds without marketplace phrases (undetectable engagement): ${seeds.filter((s) => !detectableSeeds.includes(s)).join(", ")}`,
      );
    }
    if (expectedTerms.some((t) => !detectableExpected.includes(t))) {
      notes.push(
        `expected results without marketplace phrases (undetectable): ${expectedTerms.filter((t) => !detectableExpected.includes(t)).join(", ")}; a zero pass rate against them means not measurable yet, not engine-wrong`,
      );
    }
    if (engaged === 0) notes.push("no engaged listings in the solimet-clean corpus");

    return {
      profile_id: profile.profile_id,
      profile_version: profile.version,
      status: profile.status,
      seeds,
      detectable_seeds: detectableSeeds,
      engaged,
      passed,
      pass_rate: engaged > 0 ? roundTo(passed / engaged, 4) : null,
      expected_topk: expectedTopk.map((e) => ({
        term: e.term,
        detectable_in_titles: detectableExpected.includes(e.term),
        engaged_listings_matching: expectedHits.get(e.term) ?? 0,
      })),
      unobserved_expected: unobserved,
      notes,
    };
  });

  const artifact = {
    schema: "corpus-simulated-runs-v1",
    description:
      "per-profile simulated matching runs over the solimet-clean marketplace corpus. a listing passes when it matches a profile's seed phrases and at least one non-seed expected-top-k term's phrases. pass rate = passed / engaged.",
    pinned_to: {
      table_input_hash: table.determinism.input_hash,
      table_output_hash: table.determinism.output_hash,
      corpus_files: Object.fromEntries(CORPUS_FILES.map((f) => [f, sha256File(path.join(EVIDENCE_DIR, f))])),
      solimet_only: true,
      probes_excluded: "co-occurrence probes excluded: their queries bias titles toward the drift edges",
    },
    corpus_size: listings.length,
    runs: results,
  };
  fs.writeFileSync(OUTPUT_PATH, `${JSON.stringify(artifact, null, 2)}\n`);
  for (const r of results) {
    process.stdout.write(
      `${r.profile_id} (${r.status}): engaged ${r.engaged}, passed ${r.passed}, pass rate ${r.pass_rate ?? "n/a"}; unobserved: ${r.unobserved_expected.map((u) => u.term).join(", ") || "none"}\n`,
    );
  }
  process.stdout.write(`simulated runs written: ${path.relative(process.cwd(), OUTPUT_PATH)} (corpus ${listings.length} solimet-clean listings)\n`);
}

if (process.argv[1] && import.meta.url === pathToFileURL(process.argv[1]).href) {
  main();
}
