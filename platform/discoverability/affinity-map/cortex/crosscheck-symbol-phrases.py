#!/usr/bin/env python3
"""build-time cross-check of the symbol-vocabulary phrase policy against
snowflake cortex (claude-sonnet-4-5) - advisory only, never part of the
deterministic engine, never a vocabulary change.

v2 (2026-10-12) - fixes over v1:
- v1 globbed symbol-segment/poshmark/ (does not exist - poshmark lives in
  poshmark-wear-symbol-segment/) and missed symbol-segment/shopify/,
  mercari-wear-symbol-segment/, poshmark-wear-symbol-segment/ and
  risk-registers/ entirely. now one recursive glob over all
  *.solimet.jsonl under marketplace-evidence.
- v1 part 2 attacked six bare-phrase words; the 2026-10-11 fix made
  tower/hermit/temperance/fool phraseless (owner authorization, measured
  misfires). those four now have REAL titles to judge, so they moved to
  part 1; part 2 attacks only the two still-bare words (hanged, judgement).
- sampling is stratified: up to 4 tarot-mentioning + 4 non-tarot titles per
  word, so low-yield words (tower: 1 tarot title in 123) still surface their
  positive case.
- v1 main() wrote cortex-symbol-crosscheck-raw.json, clobbering the
  committed historical responses. now date-stamped output, never a clobber.
- titles naming non-jewelry media (poster/print/prop/canvas/book - the
  segment-solimet-v2 list) are skipped, matching the live filter.

usage: SNOWFLAKE_PAT=<pat> python3 crosscheck-symbol-phrases.py
outputs: cortex-crosscheck-raw-YYYY-MM-DD.json + stdout verdicts
"""
import json, os, re, glob, time, urllib.request

HERE = os.path.dirname(os.path.abspath(__file__))
BASE = os.path.normpath(os.path.join(HERE, "..", "..", "marketplace-evidence"))
URL = 'https://qvczrad-tic39786.snowflakecomputing.com/api/v2/cortex/v1/chat/completions'

# phraseless by measurement (2026-10-10 conflated-5 + 2026-10-11 fix four)
CONFLATED = ['sun', 'moon', 'star', 'death', 'devil',
             'fool', 'tower', 'hermit', 'temperance']
# still bare: dormancy measured in both spellings 2026-10-11
BARE = ['hanged', 'judgement']
MEDIA = re.compile(r"\b(poster|print|prop|canvas|book)\b", re.I)

def toks(s):
    return [t for t in re.split(r"[^a-z0-9']+", s.lower()) if t]

def corpus_paths():
    paths = [os.path.join(BASE, f) for f in ('ebay-listings.jsonl', 'etsy-listings.jsonl')]
    paths += sorted(glob.glob(os.path.join(BASE, "**", "*.solimet.jsonl"), recursive=True))
    return [p for p in paths if os.path.exists(p)]

def clean_titles():
    out = []
    for fn in corpus_paths():
        for line in open(fn):
            if not line.strip():
                continue
            try:
                r = json.loads(line)
            except Exception:
                continue
            if r.get('solimet_title_check') is not True:
                continue
            t = r['title']
            if MEDIA.search(t):          # segment-solimet-v2 consistency
                continue
            out.append(t)
    return out

def sample(words, titles):
    out = {}
    for w in words:
        hits = [t for t in titles if w in toks(t)]
        tarot = [t for t in hits if 'tarot' in toks(t)][:4]
        off = [t for t in hits if 'tarot' not in toks(t)][:4]
        out[w] = tarot + off
    return out

def ask(prompt, maxtok=1400):
    pat = os.environ['SNOWFLAKE_PAT']
    body = json.dumps({"model": "claude-sonnet-4-5", "max_completion_tokens": maxtok,
                       "messages": [{"role": "user", "content": prompt}]}).encode()
    req = urllib.request.Request(URL, data=body, headers={
        "Content-Type": "application/json", "Accept": "application/json",
        "Authorization": f"Bearer {pat}"})
    with urllib.request.urlopen(req, timeout=180) as r:
        return json.load(r)['choices'][0]['message']['content']

def main():
    titles = clean_titles()
    print(f"corpus: {len(titles)} solimet-v2-clean titles "
          f"from {len(corpus_paths())} files")
    samples = sample(CONFLATED, titles)
    raw = {"corpus_size": len(titles)}
    for w in CONFLATED:
        ts = samples[w]
        if not ts:
            print(f"{w}: no clean titles, skipped")
            continue
        lines = "\n".join(f"{i+1}. {t}" for i, t in enumerate(ts))
        p = f"""You are cross-checking a marketplace-jewelry vocabulary design decision.
The vocabulary has a tarot-card term for the card "{w}", and it deliberately has NO bare-word
search phrase for it: in listing titles bare "{w}" usually means something else (celestial
register, gothic/occult register, souvenir landmarks, marine animals, TV characters - measured).
Below are REAL solimet-clean jewelry listing titles containing the bare word "{w}".

{lines}

For each title, judge the sense of "{w}": "tarot" (denotes the tarot card), "off" (any other
sense), or "ambiguous". Output JSON only:
{{"{w}": [{{"n": 1, "sense": "tarot|off|ambiguous", "why": "max 12 words"}}]}}
Then: VERDICT: <yes/no> - is the no-bare-phrase policy for "{w}" justified by these titles?"""
        raw[w] = ask(p)
        print(f"{w}: {len(ts)} titles judged")
        time.sleep(1)
    p2 = f"""You are adversarially cross-checking a marketplace-jewelry vocabulary.
Two tarot-card words still carry BARE search phrases, kept because dormancy was measured
(in both spellings, zero occurrences in a 420-title risk-register sample): {', '.join(BARE)}.
Attack them: construct concrete realistic marketplace jewelry listing titles where the bare
word appears but does NOT denote the tarot card. If you cannot construct a plausible one,
that is a pass. Output JSON only: {json.dumps({w: [] for w in BARE})}
Then one line per word: RISK: <word> <low|medium|high> - <one sentence why>."""
    raw['_adversarial'] = ask(p2, maxtok=800)
    stamp = time.strftime('%Y-%m-%d')
    outfn = os.path.join(HERE, f"cortex-crosscheck-raw-{stamp}.json")
    json.dump(raw, open(outfn, 'w'), indent=1)
    print("raw responses saved:", os.path.basename(outfn))

if __name__ == '__main__':
    main()
