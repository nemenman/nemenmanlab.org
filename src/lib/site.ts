// Site-wide constants and helpers.

export const SITE = {
  name: 'Nemenman Lab',
  tagline: 'Theoretical biological physics · Emory University',
  description:
    'The Nemenman group studies information processing, adaptation, and learning in living systems, at the interface of the physics and biology departments at Emory University.',
  email: 'ilya.nemenman@emory.edu',
  scholar: 'https://scholar.google.com/citations?user=enjXdH4AAAAJ',
  x: 'https://x.com/INemenman',
  github: 'https://github.com/EmoryUniversityTheoreticalBiophysics',
  address: ['Departments of Physics and Biology', 'Emory University', 'Atlanta, GA 30322'],
};

/** Prefix a root-relative path with the configured base path. */
export function url(path = '/'): string {
  const base = import.meta.env.BASE_URL.replace(/\/?$/, '/');
  if (/^(https?:|mailto:|#)/.test(path)) return path;
  return base + path.replace(/^\//, '');
}

export const NAV = [
  { href: '/research/', label: 'Research' },
  { href: '/people/', label: 'People' },
  { href: '/publications/', label: 'Publications' },
  { href: '/teaching/', label: 'Teaching' },
  { href: '/news/', label: 'News' },
  { href: '/join/', label: 'Join' },
  { href: '/contact/', label: 'Contact' },
];

export const FOOTER_LINKS = [
  { href: '/smart-thoughts/', label: 'Smart Thoughts from Smart People' },
  { href: '/press/', label: 'Press coverage' },
  { href: '/software/', label: 'Software & Data' },
  { href: '/funding/', label: 'Funding' },
  { href: '/affiliations/', label: 'Affiliations' },
  { href: '/archive/', label: 'Old courses & events' },
];

/** Format "YYYY", "YYYY-MM", or "YYYY-MM-DD" for display. */
export function fmtDate(d: string, style: 'short' | 'long' = 'short'): string {
  const [y, m, day] = d.split('-').map(Number);
  if (!m) return String(y);
  const month = new Date(Date.UTC(y, m - 1, 1)).toLocaleString('en-US', { month: style === 'long' ? 'long' : 'short', timeZone: 'UTC' });
  return day && style === 'long' ? `${month} ${day}, ${y}` : `${month} ${y}`;
}

/** Sort key for partial dates, newest first when used with b.localeCompare(a). */
export const dateKey = (d: string) => (d + '-00-00').slice(0, 10);

/** Render a tiny subset of Markdown inline: _italic_, *italic*, **bold**, [text](url). */
export function inlineMd(s: string): string {
  const esc = s.replace(/&/g, '&amp;').replace(/</g, '&lt;').replace(/>/g, '&gt;');
  return esc
    .replace(/\[([^\]]+)\]\(([^)\s]+)\)/g, (_m, t, h) => `<a class="link" href="${url(h)}">${t}</a>`)
    .replace(/\*\*([^*]+)\*\*/g, '<strong>$1</strong>')
    .replace(/(^|[\s(“"'])[_*]([^_*]+)[_*](?=[\s).,;:!?”"']|$)/g, '$1<em>$2</em>');
}
