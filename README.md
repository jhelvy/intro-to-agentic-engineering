# Introduction to Agentic Engineering

Course website for **EMSE 6992: Introduction to Agentic Engineering** (Spring 2027,
GWU), built with [Quarto](https://quarto.org/).

## Project documents

- `course-plan.md` — the working course design document (source of truth for
  content and structure decisions).
- `class-factory.md` — the original syllabus seed (logistics and policies to be
  merged into the site).

## Building the site

```bash
quarto preview   # live preview
quarto render    # build to _site/
```

The weekly schedule is data-driven from `schedule.csv` via `_common.R` (table
generation) and `schedule.lua` (a Pandoc table filter).

## Structure

- `class/` — one landing page per teaching week (`N-stub.qmd`) plus a folder per
  week holding the slide deck (`N-stub/index.qmd`). Slide folders are excluded
  from the main render until their decks are built.
- `hw/` — the 8 individual build assignments.
- `project/` — the team project overview and milestone pages.
- `fragments/` — reusable content snippets included across pages.
