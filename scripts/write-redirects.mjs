// After `astro build`: write forwarding pages for the old MediaWiki URLs.
//   /~ilya/index.php/<Wiki_Title>   -> dist/~ilya/index.php/<Wiki_Title>.html
//   /~ilya/index.php?title=<Title>  -> dist/~ilya/index.php/index.html (reads ?title=)
//   /~ilya/                         -> dist/~ilya/index.html
// GitHub Pages cannot send server-side 301s, so each page uses a canonical link,
// a meta refresh, and location.replace(). Anything else falls through to 404.html,
// which uses the same map.
import fs from 'node:fs';
import path from 'node:path';

const dist = path.resolve('dist');
const base = (process.env.SITE_BASE || '/').replace(/\/?$/, '/');
const site = (process.env.SITE_URL || 'https://nemenmanlab.org').replace(/\/$/, '');
const map = JSON.parse(fs.readFileSync('src/data/old-urls.json', 'utf8'));

const abs = (p) => base + p.replace(/^\//, '');
const esc = (s) => s.replace(/&/g, '&amp;').replace(/"/g, '&quot;').replace(/</g, '&lt;');
const page = (to) => `<!doctype html>
<html lang="en"><head><meta charset="utf-8"><title>Page moved · Nemenman Lab</title>
<meta name="robots" content="noindex"><link rel="canonical" href="${esc(site + to)}">
<meta http-equiv="refresh" content="0; url=${esc(to)}">
<script>location.replace(${JSON.stringify(to)} + location.hash)</script></head>
<body><p>This page has moved to <a href="${esc(to)}">${esc(site + to)}</a>.</p></body></html>
`;

const dir = path.join(dist, '~ilya', 'index.php');
fs.mkdirSync(dir, { recursive: true });
let n = 0;
for (const [title, to] of Object.entries(map)) {
  const file = title.replace(/ /g, '_');
  if (file.includes('/')) {
    // Titles with "/" become nested paths, as MediaWiki URLs did.
    fs.mkdirSync(path.join(dir, path.dirname(file)), { recursive: true });
  }
  fs.writeFileSync(path.join(dir, `${file}.html`), page(abs(to)));
  n++;
}
// ?title= form and the bare entry points.
const qs = `<!doctype html><html lang="en"><head><meta charset="utf-8"><title>Page moved · Nemenman Lab</title><meta name="robots" content="noindex">
<script>
var M=${JSON.stringify(Object.fromEntries(Object.entries(map).map(([k, v]) => [k, abs(v)])))};
var t=(new URLSearchParams(location.search).get('title')||'').replace(/_/g,' ');
location.replace(M[t]||${JSON.stringify(abs('/'))});
</script></head><body><p>Redirecting to the <a href="${abs('/')}">new site</a>…</p></body></html>
`;
fs.writeFileSync(path.join(dir, 'index.html'), qs);
fs.writeFileSync(path.join(dist, '~ilya', 'index.html'), page(abs('/')));
// GitHub Pages: serve files as-is (no Jekyll), so "~ilya" and "_astro" are published.
fs.writeFileSync(path.join(dist, '.nojekyll'), '');
console.log(`write-redirects: ${n} old wiki URLs -> forwarding pages (base ${base})`);
