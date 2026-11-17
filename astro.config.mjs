// @ts-check
import { defineConfig } from 'astro/config';
import sitemap from '@astrojs/sitemap';
import tailwindcss from '@tailwindcss/vite';
import remarkMath from 'remark-math';
import rehypeKatex from 'rehype-katex';
import { visit } from 'unist-util-visit';

// The site is served at https://nemenmanlab.org/ once DNS moves. Before then it
// previews at https://nemenman.github.io/nemenmanlab.org/, so the deploy workflow
// sets SITE_BASE=/nemenmanlab.org for that build.
const base = (process.env.SITE_BASE || '/').replace(/\/?$/, '/');

/** Prefix root-absolute links in Markdown (href="/x", src="/x") with the base path. */
function rehypeBasePath() {
  return (tree) => {
    if (base === '/') return;
    visit(tree, 'element', (node) => {
      for (const attr of ['href', 'src']) {
        const v = node.properties?.[attr];
        if (typeof v === 'string' && v.startsWith('/') && !v.startsWith('//') && !v.startsWith(base)) {
          node.properties[attr] = base + v.slice(1);
        }
      }
    });
  };
}

export default defineConfig({
  site: process.env.SITE_URL || 'https://nemenmanlab.org',
  base,
  trailingSlash: 'ignore',
  build: { format: 'directory' },
  integrations: [sitemap()],
  markdown: {
    remarkPlugins: [remarkMath],
    rehypePlugins: [[rehypeKatex, { strict: false, throwOnError: false }], rehypeBasePath],
  },
  vite: { plugins: [tailwindcss()] },
});
