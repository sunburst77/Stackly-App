-- Run in Supabase SQL Editor (Dashboard → SQL → New query).
-- Enables public read for published rows only (anon key safe with RLS).

create table if not exists public.blog_posts (
  id uuid primary key default gen_random_uuid(),
  category text not null,
  published_at timestamptz not null default now(),
  read_minutes integer not null default 5,
  title text not null,
  excerpt text not null,
  body text,
  slug text unique,
  external_url text,
  published boolean not null default true,
  created_at timestamptz not null default now()
);

alter table public.blog_posts enable row level security;

create policy "Anyone can read published blog posts"
  on public.blog_posts
  for select
  to anon, authenticated
  using (published = true);

-- Optional: deny direct writes from anon (no insert/update/delete policies for anon).

create index if not exists blog_posts_published_at_idx
  on public.blog_posts (published_at desc);

-- Seed (matches previous static landing copy; delete or edit as needed)
insert into public.blog_posts (category, published_at, read_minutes, title, excerpt, slug, published)
values
  ('Engineering', '2026-04-22', 6, 'Why we ditched REST for tRPC overnight.', 'A 10x speed-up, type safety end-to-end, and one terrible bug we''d never admit at a conference.', 'why-we-ditched-rest-trpc', true),
  ('Design', '2026-04-18', 4, 'Designing dark mode that doesn''t wash out.', 'Tokens, contrast ratios, and the OLED test that almost killed our brand color.', 'designing-dark-mode', true),
  ('Product', '2026-04-14', 7, 'How we shipped 32 features in 60 days.', 'Tiny PRs, async standups, and the surprising power of a public roadmap.', 'shipped-32-features-60-days', true),
  ('Mobile', '2026-04-09', 9, 'React Native at 60fps — really.', 'Reanimated, Skia, and a dozen tiny tricks we use to keep gestures buttery.', 'react-native-60fps', true),
  ('Engineering', '2026-04-03', 11, 'Our offline-first sync engine, explained.', 'CRDTs without the headache: how we keep three devices in lockstep without a server.', 'offline-first-sync', true),
  ('Culture', '2026-03-28', 5, 'A remote-first team that actually meets.', 'Why we fly everyone to Lisbon twice a year — and what we learned from the bill.', 'remote-first-meets', true),
  ('Security', '2026-03-22', 8, 'Going SOC 2 without losing our minds.', 'A no-nonsense playbook for early-stage teams. Spoiler: most of it is just writing things down.', 'soc2-playbook', true),
  ('AI', '2026-03-17', 6, 'On-device LLMs are good enough now.', '3B parameters, 4-bit quant, and a Pixel 8 — what we ship to every Stackly user.', 'on-device-llms', true),
  ('Growth', '2026-03-11', 7, 'From 0 to 24,000 teams in nine months.', 'No paid ads, no influencers — just a really good referral loop and one viral tweet.', 'growth-24000-teams', true),
  ('Design', '2026-03-06', 4, 'Picking a brand color that survives 2am.', 'Why Stackly pink works on phones, billboards, and a really tired designer''s monitor.', 'brand-color-2am', true),
  ('Engineering', '2026-02-28', 5, 'The case for boring tech.', 'Postgres, Redis, and a single Rails app got us to Series A. Don''t @ us.', 'boring-tech', true),
  ('Product', '2026-02-21', 6, 'Killing features users actually use.', 'A tiny framework for deciding what to delete — and how to break the news kindly.', 'killing-features', true)
on conflict (slug) do nothing;
