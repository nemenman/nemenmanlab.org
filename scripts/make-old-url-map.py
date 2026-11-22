"""Build src/data/old-urls.json: old wiki page title -> new site path.

Run locally (needs the gitignored sources/ crawl); the JSON output is committed and
used at build time by scripts/write-redirects.mjs and the 404 page.

    python3 -I scripts/make-old-url-map.py
"""
import json, os, re, sys

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
meta = json.load(open(os.path.join(ROOT, "sources/oldwiki/pagemeta.json")))
archive_map_path = os.path.join(ROOT, "notes/archive-redirects.json")
archive = json.load(open(archive_map_path)) if os.path.exists(archive_map_path) else {}

MAIN = {
    "Ilya Nemenman": "/", "INemenman": "/", "Main Page": "/",
    "Lab Members": "/people/", "Personal Pages": "/people/#ilya-nemenman",
    "Professional": "/people/#ilya-nemenman", "Presentations": "/people/#ilya-nemenman",
    "Conference Organization": "/people/#ilya-nemenman",
    "Projects": "/research/", "Research Interests": "/research/",
    "Publications": "/publications/", "Ph. D. Thesis": "/publications/", "Publications about our research": "/press/",
    "Teaching": "/teaching/",
    "Smart Thoughts From Smart People": "/smart-thoughts/",
    "News": "/news/",
    "Open positions": "/join/", "FAQ": "/join/", "Postdoctoral position in theoretical biophysics": "/join/",
    "About our work": "/press/",
}
RESEARCH = re.compile(r"^(Information processing in biological systems|Stochastic dynamics on biological networks|Visual neural computation|"
                      r"Learning, adaptation, and adaptive behaviors|Entropy Estimation|Entropy estimation methods|Reverse engineering cellular networks|"
                      r"Reverse-engineering algorithms benchmarks|Simpler methods for High Throughput Data analysis|Diagnostics using microarray data|"
                      r"RBC Metabolic Network|Relational networks|E\. coli chemoreceptor.*|Michaelis-Menten reaction.*|Stochastic path integral|"
                      r"Stochasticity in regulatory networks|The Berry phase in stochastic kinetics|Tools and approximations for stochastic analysis|"
                      r"Information Bottleneck Method|Nemenman-filtering|P53 regulation|Establishing causality)$")
PAPER = re.compile(r"^[A-Z][\w\-' ]+( et al\.?,?| and [A-Z][\w\-']+,|,) ?(\d{4}[a-z]?)?$|^Nemenman and Wiggins$|^Nemenman et al\.$")

out, unmapped = {}, []
for title, m in meta.items():
    if m["ns"] not in (0, 14):
        continue
    if title in archive:
        out[title] = archive[title]
    elif title in MAIN:
        out[title] = MAIN[title]
    elif title.startswith("Group Picture"):
        out[title] = "/photos/#y" + title.split()[-1]
    elif RESEARCH.match(title):
        out[title] = "/research/"
    elif PAPER.match(title):
        out[title] = "/publications/"
    elif title.startswith("Category:"):
        out[title] = "/teaching/" if re.search(r"Teaching|Physics|212", title) else "/"
    elif re.match(r"^(Physics \d|CNS Clinic|Computational Neuroscience Methods Clinic|Installing Octave)", title):
        out[title] = "/archive/"  # course page not (yet) in the archive map
        unmapped.append(title)
    elif re.match(r"^(Individuality in|Locomotion|Behavioral Analysis|Decoding Spike|Deep Lab Cut|Studies in sensorimotor)", title):
        out[title] = "/archive/"
        unmapped.append(title)
    else:
        out[title] = "/"
        unmapped.append(title)

os.makedirs(os.path.join(ROOT, "src/data"), exist_ok=True)
json.dump(dict(sorted(out.items())), open(os.path.join(ROOT, "src/data/old-urls.json"), "w"), indent=0, ensure_ascii=False)
print(f"{len(out)} titles mapped ({len(archive)} from the archive map); fell back to a section or home: {len(unmapped)}")
for t in unmapped:
    print("  ", t, "->", out[t])
