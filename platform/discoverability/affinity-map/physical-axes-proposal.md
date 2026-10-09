# proposal: physical axes for the object character record (draft, not applied)

source: owner-supplied axis table 2026-10-09 (form, silhouette, scale,
visual weight, finish, structure, detail density, style impression).
status: PROPOSAL. nothing here changes a vocabulary, table, or config.
vocabulary changes need explicit authorization per standing rule.

## the principle worth adopting

the table's last row: "style impression: a human judgment, kept
separate from physical facts." this is the missing separation. today
style records mix both in one bag (axes like `dainty`, `raw`, `modern`
are impressions; features like `chain_link`, `heavy_form`, `skull` are a
blend of physical facts and motifs). the cold-start finding from the
latent demo ("bold silver, a little more than plain, still stackable"
could not be expressed) is this gap: the buyer's words are physical
(bold = heavy weight, plain = low detail density, stackable = scale and
structure) and the engine has no slots for them.

## mapping to what exists

| axis | spec today | in vocabulary today | gap |
|---|---|---|---|
| form | "family" (paracraft) | none on styles | new: object-side only |
| silhouette | none | `geometric` (axis), `bold_curves` | partial, unnamed |
| scale | "scale band" | none | measurable mm; paracraft-derived |
| visual weight | "weight band" | `heavy_form`, `chunky`, `dainty` | impressions standing in for a measure |
| finish | "finish" | `oxidized_finish`, `raw_texture` | partial |
| structure | none | `chain_link`, `rope_twist`, `knot` | partial, unnamed |
| detail density | none | `ornate`, `clean` (axes) | impressions standing in for a measure |
| style impression | n/a | all 11 axes | already present, unlabeled |

## three honest findings

1. **scale, finish, and weight are already in the spec as object-record
   fields from paracraft state.** they are measured, not authored. that
   is exactly your "measurable dimensions, not dainty or bold" rule. the
   fix is not to author them into style records, it is to let the
   object side carry them and let the blend meet the buyer there.
2. **style records carry impressions where the table says measures
   belong.** `ornate` and `clean` are detail density by another name;
   `chunky` and `dainty` are weight and scale by another name. they
   work as cold-start proxies. they should stay, labeled as impression,
   and be joined (not replaced) by measured bands once objects exist.
3. **form and silhouette belong to the object, not the style.** a
   hoop is not a style. the 13 styles should not gain a form facet;
   the object record gets form, and style-to-object matching is where
   form constrains the result.

## what this would change if authorized (smallest viable)

- tag every existing style axis with a `kind`: `impression` (all 11
  today). no value changes, no table drift. makes the separation
  machine-readable and lets the why-graph label a WHY row as
  impression-derived or physical-derived.
- add the physical axes to the object character record schema only:
  form, silhouette, scale (mm), visual weight band, finish, structure,
  detail density band. no style vocabulary edits.
- let the profile blend carry physical bands: "bold silver, a little
  more than plain, stackable" becomes heavy-ish weight + low-to-medium
  detail density + small-to-medium scale + linked/layered structure,
  bound at the object layer, which is where config already says wear
  context binds.

## what this does not do

no new facets in `style-vocabulary.jsonl`; no change to the committed
affinity table; no change to cold-start pass rates. those need a
separate authorization and a corpus pass (measured bands would need
listing-level evidence, which solimet titles rarely carry).
