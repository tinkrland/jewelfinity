#!/usr/bin/env node
// affinity corpus v0.1: the check and reader for corpus profiles.
//
// validates every profile in profiles/ (schema, required fields, weight
// bounds, seed terms existing in the governed vocabularies as represented
// in the committed affinity table, rationale present, filename matching
// the profile_id) and verifies the pinned expected top-k in
// expected-top-k.json against a fresh recomputation from the committed
// table, including staleness: the pin must record the committed table's
// input and output hashes. a missing or stale pin fails with a pointer to
// pin-expected-topk.mjs. prints the expected top-k per profile so the
// owner can read what matching should produce for each simulated buyer.
//
// per-profile pass rates against simulated runs are a later eval concern
// and stay an open item.
//
// usage: node platform/discoverability/affinity-map/corpus/check-corpus-profiles.mjs

import fs from "node:fs";
import path from "node:path";
import { fileURLToPath, pathToFileURL } from "node:url";
import { loadProfiles, computeExpectedTopk } from "./pin-expected-topk.mjs";

const CORPUS_DIR = path.dirname(fileURLToPath(import.meta.url));
const MODULE_DIR = path.dirname(CORPUS_DIR);
const TABLE_PATH = path.join(MODULE_DIR, "affinity-table.json");
const PIN_PATH = path.join(CORPUS_DIR, "expected-top-k.json");

const results = [];
function check(name, condition, detail = "") {
  results.push({ name, passed: Boolean(condition), detail });
}

function main() {
  const table = JSON.parse(fs.readFileSync(TABLE_PATH, "utf8"));
  const termIds = new Set(table.terms.map((t) => t.term));
  const profiles = loadProfiles();

  check("at least one profile exists", profiles.length > 0);

  for (const { file, profile } of profiles) {
    const id = profile.profile_id ?? "(no id)";
    check(`${id}: schema is affinity-corpus-profile-v1`, profile.schema === "affinity-corpus-profile-v1");
    check(`${id}: filename stem matches profile_id`, file === `${profile.profile_id}.json`);
    check(`${id}: version present`, typeof profile.version === "string" && profile.version !== "");
    check(`${id}: updated present`, typeof profile.updated === "string" && profile.updated !== "");
    check(`${id}: status is a known value`, ["draft", "authorized"].includes(profile.status));
    check(`${id}: persona present`, typeof profile.persona === "string" && profile.persona !== "");
    check(`${id}: rationale present`, typeof profile.rationale === "string" && profile.rationale.length > 20);
    check(`${id}: rationale cites evidence`, /evidence|marketplace-evidence|affinity-table/.test(profile.rationale));
    check(`${id}: seeded_affinities non-empty`, profile.seeded_affinities && Object.keys(profile.seeded_affinities).length > 0);
    for (const [term, weight] of Object.entries(profile.seeded_affinities ?? {})) {
      check(`${id}: seed term ${term} exists in the governed vocabulary`, termIds.has(term));
      check(`${id}: seed weight for ${term} within [0, 1]`, typeof weight === "number" && weight >= 0 && weight <= 1);
      check(`${id}: seed weight for ${term} is positive`, typeof weight === "number" && weight > 0);
    }
  }

  // the pin: present, fresh for this table version, and byte-identical to
  // a fresh recomputation.
  if (!fs.existsSync(PIN_PATH)) {
    check("expected top-k pin exists", false, "missing: run pin-expected-topk.mjs");
  } else {
    const pin = JSON.parse(fs.readFileSync(PIN_PATH, "utf8"));
    check("pin schema is corpus-expected-topk-v1", pin.schema === "corpus-expected-topk-v1");
    check(
      "pin records the committed table input hash",
      pin.pinned_to?.input_hash === table.determinism.input_hash,
      `pin: ${pin.pinned_to?.input_hash} vs table: ${table.determinism.input_hash}; regenerate with pin-expected-topk.mjs after a table rebuild`,
    );
    check(
      "pin records the committed table output hash",
      pin.pinned_to?.output_hash === table.determinism.output_hash,
      "stale pin: regenerate with pin-expected-topk.mjs",
    );
    const rebuilt = {
      profiles: profiles.map(({ file, profile }) => ({
        profile_id: profile.profile_id,
        profile_version: profile.version,
        status: profile.status,
        file,
        expected_topk: computeExpectedTopk(table, profile),
      })),
    };
    check("pin covers exactly the committed profiles", pin.profiles.length === profiles.length);
    check("pin matches a fresh recomputation byte-identically", JSON.stringify(pin.profiles) === JSON.stringify(rebuilt.profiles));
  }

  const failed = results.filter((r) => !r.passed);
  process.stdout.write(
    profiles
      .map(({ profile }) => {
        const topk = computeExpectedTopk(table, profile);
        return `${profile.profile_id} (${profile.status}) expected top-k: ${topk
          .map((e) => `${e.term} ${e.score}`)
          .join(", ")}`;
      })
      .join("\n") + "\n",
  );
  process.stdout.write(`\nchecks: ${results.length - failed.length} passed, ${failed.length} failed\n`);
  for (const f of failed) {
    process.stdout.write(`  FAILED: ${f.name}${f.detail ? ` (${f.detail})` : ""}\n`);
  }
  if (failed.length > 0) process.exit(1);
}

if (process.argv[1] && import.meta.url === pathToFileURL(process.argv[1]).href) {
  main();
}
