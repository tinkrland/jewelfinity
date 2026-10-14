# creator-commerce evidence: ltk, shopmy, and the curator register

checked 2026-10-14, owner request ("look at ltk and stuff too"). this
extends the evidence batteries from the seller register (ebay, etsy,
poshmark, mercari, shein, depop - sellers titling their own listings)
to the creator-commerce register: products as curated by creators.
it is part of the repo's visual data curation and style analysis
research (named 2026-10-14).

## what the register adds

a curator naming a product is a different titling voice from a seller
titling a listing: brand-forward, category-first, less keyword-stuffed.
the corpus question is whether affinity phrase evidence (zodiac, tarot,
celestial, everyday, stackable) exists in the curated register with
different phrase shapes than the marketplace register.

## ltk (liketoknow.it): blocked for now, assessment recorded

ltk is the largest independent creator-affiliate rail (~$4b annual
creator-driven sales, ~200k creators, ~7k retail brands), but it is
app-gated for evidence capture:

- the public web (shopltk.com/explore/...) renders profile and
  collection shells only; post and product data loads behind the app
  (verified in a live browser: collection pages render headers, no
  product cards; /explore/<handle>/products is 404; shop routes 404)
- the one apify actor (ahmed_jasarevic/ltk-creator-scraper, $5/1k)
  exposes no input contract: test runs with a placeholder and a real
  creator handle ({"usernames": [...]}) both succeeded with 0 items;
  the actor's 30-day public runs all show empty datasets
- re-check candidates: a documented input contract for the actor, or
  the app api being reverse-engineered. brand-side entry (ltk connect,
  ~$12k/yr self-serve) is a paid door, not a capture path

## shopmy: public, captured

shopmy is the capturable member of the layer. the consumer search
(shopmy.us/shop?query=...) and storefronts are public web; the
product api exists at apiv3.shopmy.us/api/... but is session-gated.
capture used a live browser session (browserbase), anonymous, one
search page per query, products as rendered on first load (~12 cards
per query; no scroll pagination captured).

battery: `shopmy-search-2026-10-14/`, 7 queries x ~12 cards: jewelry,
tarot necklace, zodiac necklace, celestial jewelry, gold necklace,
everyday necklace, stackable rings. per-query raw text
(`shopmy-*.raw.txt`, verbatim page text of the product grid) plus the
parsed, solimet-v3-gated `shopmy-creator-search.solimet.jsonl`.

## capture honesty notes

- the raw page text interleaves a per-card curator count with
  count-before-card and count-after-card both plausible, so the parsed
  jsonl keeps only the unambiguous fields (brand, category, title,
  price) and drops the counts; the raw text is the artifact
- first-load only, ~12 cards per query: this is a depth probe of the
  register, not a volume battery like the 100-per-query marketplace
  runs. scaling needs either scroll pagination in the live browser
  (slow) or a session-gated api route (unauthorized)
- urls are the search pages; there are no apify run ids for this
  battery (method is browserbase, recorded in provenance.json)
- this register is NOT wired into the segment sim corpus (the sim
  harness globs the segment dirs only); including it is a corpus
  decision awaiting owner authorization

## first read of the register (7 queries, 84 cards)

- the curated register carries the same symbol vocabulary as the
  marketplace register: tarot, zodiac, celestial titles all present
  (the sun tarot necklace, zodiac necklaces at nine brands, moon and
  star station necklaces)
- brand-name-first titles ("zodiac necklace" as the literal title at
  lele sadoughi, rixo, kozakh, prya, agapee, corace, baublebar) - the
  phrase evidence is thinner per title, the brand is the differentiator
- fine-jewelry skew: the v3 gate flags a large share (diamond, pearl,
  sapphire, lapis, turquoise, moissanite appear in card titles); exact
  clean counts in the .solimet.jsonl
- resale is its own sub-register (the realreal's pre-owned cards read
  like appraisals: "14k emerald & diamond station necklace")

## volume battery (2026-10-14, firecrawl)

owner provided a firecrawl key; `shopmy-search-2026-10-14-vol/` scales the
probe to 36 queries x 12 cards = 396 cards, 383 unique products, gated to
`shopmy-creator-search-vol.solimet.jsonl` (279 clean, 70.5%).

- the public search grid caps at ~12 cards per query with no scroll
  pagination (verified in a live browser), so volume comes from query
  breadth, not depth
- shopmy search is exact-phrase substring: "arrow necklace", "star
  necklace" and "lotus jewelry" return zero curated products - real
  vocabulary-coverage gaps in this register (marketplaces carry
  thousands for the same phrases)
- capture method is firecrawl v2 scrape of the same public search
  pages the depth probe used (markdown, waitFor 6000, anonymous);
  raw markdown per query carries the product ids and urls
