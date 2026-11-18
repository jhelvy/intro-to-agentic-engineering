# CLAUDE.md

Project guidance for working on this repository.

## What this is

The course website for **EMSE 4197: Build with AI: An Introduction to Agentic
Engineering** (Fall 2027, GWU), built with [Quarto](https://quarto.org/). It is in active
development — most weekly slide decks and assignment briefs are still placeholders.

## Source of truth (read these first)

- **`planned-updates.md`** — the **current** plan: the undergraduate re-scope
  (EMSE 4197, Fall 2027, Python), the 14-meeting schedule, builds and readings,
  assessment, AI/cost policy, and MIT-report alignment. **Start here.** Where it
  conflicts with `course-plan.md`, this wins.
- **`course-plan.md`** — the original graduate design (EMSE 6992, Spring 2027):
  course thesis, "dual spine" and "trust gradient" framing, decisions log. Still
  the source for anything `planned-updates.md` doesn't mention.
- **`class-factory.md`** — the original syllabus seed. Logistics and university
  policies still need to be merged from here into `syllabus.qmd`.

## Key conventions

- **The schedule is data-driven.** Edit `schedule.csv` to change the calendar;
  `_common.R` (`get_schedule()`) builds the HTML table columns and
  `schedule.lua` is a Pandoc filter for table widths. Don't hand-edit the table
  in `schedule.qmd`.
- **`fragments/`** holds reusable snippets included via
  `` ```{r child = here::here("fragments", "X.qmd")} ``. `placeholder.qmd` is the
  "Coming soon!" stub used wherever content isn't written yet.
- **Build pages** (`hw/`) set `params: number, purpose` and include
  `fragments/hw.qmd`. **Project pages** (`project/`) set
  `params: number, weight, purpose` and include `fragments/project.qmd`. Both
  pull due dates from `schedule.csv`.
- **Class slides:** each teaching week has a landing page `class/N-stub.qmd` and a
  slide-deck folder `class/N-stub/index.qmd`. The slide folders are **excluded
  from render** in `_quarto.yml` until a deck is built. To activate a deck:
  remove its `!class/N-stub/` line from the `render:` list and swap the landing
  page's placeholder for `fragments/class.qmd` (which embeds the slides).
- **Course-wide variables** (dates, room, URLs, etc.) live in `_variables.yml`,
  referenced as `{{< var name >}}`.

## Building

```bash
quarto preview   # live preview
quarto render    # build to _site/
```

**Do not render `.qmd` files yourself** — the instructor renders and previews.
(This matches the global rule for non-LaTeX documents.)

## Known TBDs / placeholders

- `_variables.yml`: repo/site URLs, Slack link, and room are guesses — confirm.
- No logo/favicon yet; image references were intentionally omitted from
  `_quarto.yml` to avoid broken builds.
- Meeting day/time/room for Fall 2027 are assumed (Wednesdays 3:30–6:00; the time and room are carried over from the original plan); the
  exam-slot date is a placeholder. See open questions in `planned-updates.md`.
- Most `class/`, `hw/`, and `project/` pages are placeholders awaiting content.
- Python course: `.py` + `.qmd` only, **never `.ipynb`** (Quarto's Jupyter engine
  is fine). The website itself stays R/Quarto.
