import { getCollection, type CollectionEntry } from 'astro:content';

export type ArchiveEntry = CollectionEntry<'archive'>;

/** Route path (without leading/trailing slash) for an archive entry: "<group>" for the index, "<group>/<page>" otherwise. */
export function archiveRoute(e: ArchiveEntry): string {
  const parts = e.id.split('/');
  const page = parts.at(-1)!;
  return e.data.index || page === 'index' ? e.data.group : `${e.data.group}/${page}`;
}

export async function archiveGroups() {
  const all = await getCollection('archive');
  const groups = new Map<string, { index?: ArchiveEntry; pages: ArchiveEntry[] }>();
  for (const e of all) {
    const g = groups.get(e.data.group) ?? { pages: [] };
    if (e.data.index) g.index = e;
    else g.pages.push(e);
    groups.set(e.data.group, g);
  }
  for (const g of groups.values()) g.pages.sort((a, b) => a.data.order - b.data.order || a.data.title.localeCompare(b.data.title));
  return { all, groups };
}
