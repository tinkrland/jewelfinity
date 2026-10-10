#!/usr/bin/env python3
"""build-time cross-check of the 0.2 symbol-vocabulary phrase policy,
run against Snowflake Cortex (claude-sonnet-4-5) - advisory only, never
part of the deterministic engine, never a vocabulary change.

part 1: real corpus titles containing the conflated bare words
(sun, moon, star, death, devil) are judged sense-by-sense - does the
bare word denote the tarot card or the off-tarot register? this
second-opinions the phraseless policy.

part 2: adversarial counterexample enumeration for the six phrased
card words (fool, tower, hermit, temperance, hanged, judgement) -
all six have ZERO occurrences in the current clean corpus, so no
real titles exist to judge; cortex is asked to construct plausible
off-tarot listing titles to stress the "unambiguous" claim
prospectively.

usage: SNOWFLAKE_PAT=<pat> python3 crosscheck-symbol-phrases.py
"""
import json, os, re, glob, time, urllib.request

BASE = '/app/tmp-jwl/platform/discoverability/marketplace-evidence'
URL = 'https://qvczrad-tic39786.snowflakecomputing.com/api/v2/cortex/v1/chat/completions'
CONFLATED = ['sun', 'moon', 'star', 'death', 'devil']
PHRASED = ['fool', 'tower', 'hermit', 'temperance', 'hanged', 'judgement']

def toks(s):
    return [t for t in re.split(r"[^a-z0-9']+", s.lower()) if t]

def sample(words):
    files = ['ebay-listings.jsonl', 'etsy-listings.jsonl']
    seg = sorted(glob.glob('symbol-segment/*.jsonl')) + \
          sorted(glob.glob('symbol-segment/poshmark/*.jsonl')) + \
          sorted(glob.glob('wear-symbol-segment/*.jsonl'))
    paths = [os.path.join(BASE, f) for f in files] + [os.path.join(BASE, f) for f in seg]
    out = {}
    for w in words:
        hits = []
        for fn in paths:
            for line in open(fn):
                if not line.strip():
                    continue
                try:
                    r = json.loads(line)
                except Exception:
                    continue
                if r.get('solimet_title_check') is not True:
                    continue
                if w in toks(r['title']):
                    hits.append(r['title'])
                if len(hits) >= 8:
                    break
            if len(hits) >= 8:
                break
        out[w] = hits
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
    samples = sample(CONFLATED)
    raw = {}
    for w in CONFLATED:
        lines = "\n".join(f"{i+1}. {t}" for i, t in enumerate(samples[w]))
        p = f"""You are cross-checking a marketplace-jewelry vocabulary design decision.
The vocabulary has a tarot-card term for the card "{w}", and it deliberately has NO bare-word
search phrase for it, because in listing titles bare "{w}" usually means something else
(celestial/decorative sun-moon-star register, or gothic-occult register), not the tarot card.
Below are REAL solimet (metal-only) jewelry listing titles containing the bare word "{w}".

{lines}

For each title, judge the sense of "{w}" in that title:
- "tarot": denotes the tarot card specifically (e.g. "The Sun tarot card necklace")
- "off": any other sense (celestial/moon-sun-star decorative, gothic/occult character, band name, etc.)
- "ambiguous": genuinely cannot be told apart
Output JSON only: {{"{w}": [{{"n": 1, "sense": "tarot|off|ambiguous", "why": "max 12 words"}}]}}
Then one line of verdict: given these titles, is the no-bare-phrase policy for "{w}" justified?
Verdict line format: VERDICT: <yes/no> - <one sentence>."""
        raw[w] = ask(p)
        print(f"{w} done")
        time.sleep(1)
    p2 = """You are adversarially cross-checking a marketplace-jewelry vocabulary.
Six tarot-card words were given BARE search phrases because a 300-title corpus scan found
zero off-tarot uses: fool, tower, hermit, temperance, hanged, judgement.
The corpus is small; your job is to attack the claim. For EACH word, list concrete realistic
marketplace jewelry listing titles (invent them, they are hypothetical) where the bare word
appears but does NOT denote the tarot card. If you cannot construct a plausible one for a
word, say so - that is a pass. Output JSON only:
{"fool": ["counterexample title", ...], "tower": [...], "hermit": [...], "temperance": [...], "hanged": [...], "judgement": [...]}
Then one line per word: RISK: <word> <low|medium|high> - <one sentence why>."""
    raw['_adversarial'] = ask(p2, maxtok=1600)
    json.dump(raw, open('cortex-symbol-crosscheck-raw.json', 'w'), indent=1)
    print("raw responses saved: cortex-symbol-crosscheck-raw.json")

if __name__ == '__main__':
    main()
