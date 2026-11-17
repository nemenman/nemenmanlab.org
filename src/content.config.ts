import { defineCollection } from 'astro:content';
import { glob } from 'astro/loaders';
import { z } from 'astro/zod';

// One YAML file per person. Photos are paths relative to the YAML file.
const people = defineCollection({
  loader: glob({ pattern: '*.yaml', base: './src/content/people' }),
  schema: ({ image }) =>
    z.object({
      name: z.string(),
      status: z.enum(['pi', 'current', 'alumni']),
      group: z.enum(['pi', 'postdoc', 'phd', 'ms', 'coadvised', 'undergrad', 'visiting', 'rotation', 'summer', 'highschool']),
      years: z.string().optional(),
      degree: z.string().optional(),
      photo: image().optional(),
      position: z.string().optional(),
      url: z.string().url().optional(),
      interests: z.string().optional(),
      lookup_confidence: z.string().optional(),
      review: z.string().optional(), // internal note, never rendered
    }),
});

const quotes = defineCollection({
  loader: glob({ pattern: '*.yaml', base: './src/content/quotes' }),
  schema: z.object({
    order: z.number(),
    topic: z.string(),
    author: z.string(),
    title: z.string().optional(),
    text: z.string(),
    source: z.string().optional(),
    youtube: z.array(z.string()).optional(),
  }),
});

const photos = defineCollection({
  loader: glob({ pattern: '*.yaml', base: './src/content/photos' }),
  schema: ({ image }) =>
    z.object({
      date: z.coerce.string(),
      image: image(),
      title: z.string().optional(),
      caption: z.string(),
      source: z.string().optional(),
      latest: z.boolean().optional(),
      review: z.string().optional(),
    }),
});

const news = defineCollection({
  loader: glob({ pattern: '*.yaml', base: './src/content/news' }),
  schema: z.object({
    date: z.coerce.string(), // "YYYY", "YYYY-MM" or "YYYY-MM-DD"
    text: z.string(), // Markdown, one or two sentences
    order: z.number().optional(), // tie-breaker within the same date
    review: z.string().optional(),
  }),
});

const papers = defineCollection({
  loader: glob({ pattern: '*.yaml', base: './src/content/papers' }),
  schema: z.object({
    n: z.number(),
    authors: z.string(), // lab members wrapped in _underscores_, as in the CV
    title: z.string(),
    journal: z.string(),
    citation: z.string(), // volume, pages, year
    year: z.number(),
    summary: z.string().optional(), // one-line summary (from the CV for favorites)
    favorite: z.boolean().default(true), // false = shown only on research pages
    doi: z.string().optional(),
    arxiv: z.string().optional(),
    award: z.string().optional(),
    directions: z.array(z.string()).optional(),
  }),
});

const press = defineCollection({
  loader: glob({ pattern: '*.yaml', base: './src/content/press' }),
  schema: z.object({
    date: z.coerce.string(),
    outlet: z.string(),
    title: z.string(),
    url: z.string().optional(),
    archived: z.boolean().optional(),
    about: z.string().optional(),
    kind: z.string().optional(),
    lang: z.string().optional(),
  }),
});

const research = defineCollection({
  loader: glob({ pattern: '*.md', base: './src/content/research' }),
  schema: ({ image }) =>
    z.object({
      title: z.string(),
      order: z.number(),
      image: image(),
      imageAlt: z.string(),
      questions: z.array(z.string()),
      teaser: z.string(),
      projects: z.array(z.object({ title: z.string(), detail: z.string().optional() })).optional(),
      people: z.array(z.string()).optional(), // slugs of files in src/content/people
      people_note: z.string().optional(), // shown in the People section, Markdown links allowed
      draft_note: z.string().optional(),
    }),
});

// Old course pages and the 2020 workshop, converted from the old wiki.
const archive = defineCollection({
  loader: glob({ pattern: '**/*.md', base: './src/content/archive' }),
  schema: z.object({
    title: z.string(),
    group: z.string(),
    wiki_title: z.string(),
    order: z.number(),
    index: z.boolean().optional(),
    kind: z.enum(['course', 'event']).optional(),
    code: z.string().optional(),
    year: z.number().optional(),
    group_title: z.string().optional(),
    summary: z.string().optional(),
  }),
});

export const collections = { people, quotes, photos, news, papers, press, research, archive };
