-- Run once in Supabase SQL Editor if `blog_posts` already exists without `body`,
-- or to refresh article bodies. Safe to re-run: updates by slug.

alter table public.blog_posts add column if not exists body text;

update public.blog_posts set body = $b$We flipped the entire API surface to tRPC in a single overnight cutover. The codegen path meant our mobile and web clients shared one source of truth for inputs and errors.

The part we do not put on slides: a stray optional field in a Zod schema broke imports for half a day. TypeScript caught it before users did — but we learned that “big bang” is fine only when CI screams loudly enough.$b$
where slug = 'why-we-ditched-rest-trpc';

update public.blog_posts set body = $b$Dark mode is not “the same UI, but gray.” Contrast collapses, brand accents turn muddy, and OLED black levels make every mid-tone lie to you.

We locked a small token ladder, tested on cheap panels and flagship OLEDs alike, and rejected three “almost” pinks before the one that still reads as Stackly at one percent brightness.$b$
where slug = 'designing-dark-mode';

update public.blog_posts set body = $b$Thirty-two customer-facing improvements in sixty days sounds like a press release. In practice it was hundreds of tiny PRs, a public roadmap, and standups that stayed async by default.

The unlock was scope: if a change could not ship in two days, we split it until it could. Momentum became the default state instead of a special week.$b$
where slug = 'shipped-32-features-60-days';

update public.blog_posts set body = $b$Sixty frames per second is a budget, not a vibe. Every gesture hands work to the UI thread on purpose; Reanimated and Skia are where we spend that budget first.

The rest is discipline: fewer shadows, fewer layout passes, and saying no to effects that look cool in demos but drop frames on real devices.$b$
where slug = 'react-native-60fps';

update public.blog_posts set body = $b$Offline-first sounds simple until three devices edit the same task on a train. We avoided hand-rolled CRDTs and shipped a merge model that favors clarity over cleverness.

The server is a backstop, not the source of truth. When connectivity returns, we reconcile in the background and surface conflicts only when a human actually needs to choose.$b$
where slug = 'offline-first-sync';

update public.blog_posts set body = $b$Remote work without occasional face time turns into slow trust debt. Twice a year we fly the whole company to one city and run a tight week of planning, demos, and unstructured time.

The receipt hurt the first time. The second time we knew exactly which meetings should never have been emails — and which friendships keep the product human.$b$
where slug = 'remote-first-meets';

update public.blog_posts set body = $b$SOC 2 is mostly evidence that you do what you already said you would do. Policies, tickets, access reviews, and screenshots of the boring stuff.

We stopped chasing perfect tooling and started shipping checklists that engineers would actually complete. Auditors care that the story is coherent, not that your dashboard sparkles.$b$
where slug = 'soc2-playbook';

update public.blog_posts set body = $b$Small quantized models on-device are finally “good enough” for drafting, summarizing, and quick answers inside Stackly. Latency beats parameter count when someone is standing in a hallway.

We ship the same bundle everywhere privacy matters: nothing leaves the phone unless the user explicitly opts into cloud features.$b$
where slug = 'on-device-llms';

update public.blog_posts set body = $b$We did not buy our way to twenty-four thousand teams. A tight referral loop, a changelog people actually read, and one tweet that landed at the right hour did most of the work.

Growth teams love to add channels. We kept removing steps between “invite a teammate” and “they ship something the same day.”$b$
where slug = 'growth-24000-teams';

update public.blog_posts set body = $b$Brand color is a constraint problem: legibility in sunlight, harmony with neutrals, and not embarrassing the designer at two in the morning.

Stackly pink survived because it works on white, on zinc-950, and on the one-off print mockups we swore we would not have to make — then did.$b$
where slug = 'brand-color-2am';

update public.blog_posts set body = $b$Boring tech is a strategy. Postgres, Redis, and a monolith got us to Series A while competitors rewrote stacks for conference talks.

We upgrade when a limit is real, not when a blog post says we should feel ashamed of our architecture.$b$
where slug = 'boring-tech';

update public.blog_posts set body = $b$Deleting a feature users love is a product skill, not a morale failure. We use a short rubric: usage, support cost, strategic fit, and whether sunset unlocks something better.

The kind part is communication: timelines, exports, and a clear story about what improves when the old thing goes away.$b$
where slug = 'killing-features';
