# marketplace evidence

dated snapshots of marketplace listing language (ebay, etsy), captured 2026-10-08
via apify runs recorded in `provenance.json`. this is evidence input, not
vocabulary authority: nothing here changes a vocabulary record without a
reviewed citation, per the repo's evidence rules.

what it is for:

- phrase evidence: how sellers and buyers actually title pieces per style,
  with counts, in `phrase-frequencies.jsonl`
- confusable evidence: listings that stack multiple style terms in one title
  (e.g. "mid century modern ... retro") measure the marketplace confusion
  the confusable_with edges describe
- solimet relevance: queries were filtered against stone and plastic terms
  at capture time; `solimet_title_check` is the deterministic offline filter
  on titles. both passes are documented in provenance.json

honest findings from this snapshot, kept here so they are not relearned:

- brutalist and organic modern are nearly absent from ebay's solimet space
  (1 and 3 title matches in 852 listings); brutalist lives on etsy (handmade
  silver modernist work), organic modern does not map cleanly to any etsy
  search term ("organic" pulls bridal texture and polymer clay, not the
  scandinavian modernist lineage)
- etsy's egyptian revival space is largely scarab-set costume jewelry, not
  solimet; ebay's is gothic-biker anubis steel. same term, two markets,
  neither one revival-era metalwork
- ebay "georgian jewelry" surfaces georgian-style trinket/proposal boxes
  (furniture, not jewelry); the title-matching here does not filter these
  out automatically

datasets on apify expire after 7 days on the free plan; these files are the
durable record. input hashes per file are in provenance.json so any later
rebuild can be checked against them.
