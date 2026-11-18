# Build with AI — Planned Updates (Fall 2027 undergraduate re-scope)

> **Status:** Approved plan, not yet implemented on the site (Nov 2026).
>
> This is a **separate plan** from `course-plan.md`. That file is the original
> graduate design (EMSE 6992, Spring 2027) and stays as written. Where the two
> disagree, **this document wins**. Anything this document doesn't mention (the
> dual-spine idea, the conversation-history deliverable, the "ship it live" ethos)
> carries over from `course-plan.md` unchanged.

---

## Why we're re-scoping

The course was designed in mid-2026 as a graduate course. It is now an
**undergraduate special topic** (EMSE 4197) running in **Fall 2027**. The old
schedule had 8 content weeks followed by 6 project-only meetings. That's too little
content and too much unstructured time for undergraduates.

This revision:

- adds **LLM foundations** up front;
- gets to **agents by week 3**, after Git/GitHub;
- adds **LLMs via API (chatlas)**, **MCP**, and an **agentic data analysis**
  application (polars, plotnine, Great Tables);
- puts readings inside the assignments;
- moves the course to **Python** (`.py` + `.qmd`, never `.ipynb`);
- aligns the course with the
  [MIT AI & Education report](https://aiandeducation.mit.edu/report/).

Inputs reviewed:
- Lorena Barba's MAE 6291
  ([2026](https://barbagroup.github.io/mae6291-genai/2026/);
  [2027](https://barbagroup.github.io/mae6291-genai/), an announcement page only so
  far)
- the [MIT report](https://aiandeducation.mit.edu/report/) and its
  [appendices](https://aiandeducation.mit.edu/appendices/)
- the [DeepLearning.AI AI engineering skills map](https://www.deeplearning.ai/resources/ai-engineering-skills)
- Shah & Oram,
  ["When AI Can Code, What Is Left for Programmers to Do?"](https://www.oreilly.com/radar/when-ai-can-code-what-is-left-for-programmers-to-do/)
  (O'Reilly Radar, Nov 16 2026)
- [holtzy/dataviz-skills](https://github.com/holtzy/dataviz-skills)
- the [chatlas](https://posit-dev.github.io/chatlas/) docs
- the [GWU academic calendar](https://www.gwu.edu/academic-calendar)

---

## A. Identity

| Item | Value |
|---|---|
| Title | **Build with AI: An Introduction to Agentic Engineering** |
| Number | **EMSE 4197** (special topics, for now) |
| Semester | **Fall 2027** |
| Meeting time | Assumed **Thursdays 3:30–6:00 PM**, unconfirmed for fall (see open questions) |
| Language | Mostly **Python**. The course website itself stays R/Quarto |
| Repo / URL | Still `intro-to-agentic-engineering`. Renaming is John's call |

---

## B. Course arc and Fall 2027 schedule

### Calendar facts (GWU Fall 2027)

- Classes start Mon Aug 23. Labor Day is Mon Sep 6, which doesn't affect Thursdays.
- **Fall break:** Thu–Fri Oct 7–8. **No class Thu Oct 7.**
- **Thanksgiving:** Nov 22–27. **No class Thu Nov 25.**
- Last day of classes: Mon Dec 6.
- **Designated Thursday: Tue Dec 7.** Thursday classes meet that day.
- Make-up/reading day Thu Dec 9. Final exams Fri Dec 10 – Thu Dec 16.

That gives **14 meetings**, plus a final-exam slot (date set by the registrar).

### Two parts, one gradient

The **dual spine** stays: class time is the workflow, practiced hands-on, and
homework is the build, an ambitious take-home. The **trust gradient** is reframed
as two parts:

- **Part 1: Working with an agent (meetings 1–8).** Climbs from doing it *by hand*
  → chatting with a model → high-touch agent work → leverage (skills) → delegated,
  verified work → automated verification.
- **Part 2: Building with LLMs (meetings 9–12).** Apply the workflow to real data,
  embed LLMs inside your own code, connect agents to tools (MCP), then orchestrate
  multiple agents.

Project-only meetings drop from **6 to 2**, with presentations in the exam slot. To
make up for it, **from meeting 9 onward the last ~45 minutes of each class is team
studio time** with instructor check-ins. This is the "structured in-person social
learning" MIT recommends (§3.1.4).

### Week-by-week

Builds are due at the next meeting unless noted. Each build includes a **short
reading reflection** on the embedded reading.

| # | Date | Class (hands-on) | Take-home build + embedded reading | Rung |
|---|---|---|---|---|
| 1 | Thu Aug 26 | **Welcome & Git by hand.** Install everything (terminal, Git, VS Code/Positron, uv, Quarto, an agent CLI). Git & GitHub **without an agent**: commit, branch, PR, deploy a "hello" page to GitHub Pages. Discuss the course AI policy and why | **B1 Git warm-up** (small): repo with a clean commit history, one merged PR, a live Pages page. *Read:* MIT report §1 guiding principles (excerpt) **or** Sarkar, "How to stop AI from killing your critical thinking" (TED) | By hand |
| 2 | Thu Sep 2 | **How LLMs work (and fail).** Tokens and embeddings; attention at 3Blue1Brown depth; next-token prediction, sampling and temperature; pre-training → post-training → reasoning models; context windows; hallucination; tool calling; *agent = LLM + tools + a loop*. Cost, environmental footprint, the model landscape. Browser demos only (Transformer Explainer, a tokenizer playground) | **B2 Probe the model**: 5 small experiments (tokenization quirks, sampling variance, context limits, fabricated citations, sycophancy), written up as a `.qmd` report in a repo. *Read:* Messeri & Crockett (2024), "AI and illusions of understanding in scientific research"; 3Blue1Brown videos 5–7 | Chat |
| 3 | Thu Sep 9 | **Agents.** Claude Code / Codex as a *harness* around an LLM: tools, permissions, safeguards. Agent failure modes: over-engineering, skipping verification, stopping short of the goal, risky file/data actions, and when to intervene | **B3 Personal website**: agent-built, clean history, deployed on Pages. *Read:* McKinney, "Vibe coding is dangerous, agentic engineering isn't"; Anthropic, "Building effective agents" | High touch |
| 4 | Thu Sep 16 | **Context engineering.** The attention budget and context rot; injecting documents; Markdown over PDF (markitdown); session hygiene (fresh sessions, `/compact`, `/clear`); the "plugin tax" | **B4 Ingestion**, student's choice: a literature review on a topic **or** a novel in an admired author's voice. *Read:* Anthropic, "Effective context engineering for AI agents"; Chroma, "Context Rot" | High touch |
| 5 | Thu Sep 23 | **Specs, planning & project memory.** Plan mode; writing a spec with **guardrails** (each MUST / MUST NOT paired with a check, a test or a named reviewer); AGENTS.md / CLAUDE.md. **Teams form** | **B5 Recreate an app from a spec** (e.g. Wordle, a pomodoro timer with stats). The student writes the spec and guardrails *before* any code. *Read:* McKinney, "From human ergonomics to agent ergonomics" (or a spec-driven-development piece, TBD) | High touch |
| 6 | Thu Sep 30 | **Skills.** Install and use skills, then write one (the Agent Skills standard works in both Claude Code and Codex). Progressive disclosure. Custom commands now live inside skills (check current docs). Supply-chain caution with third-party skills | **B6 Video game**: assemble game-dev skills, build, extend, plus one custom skill of your own. **Due Oct 14** (spans fall break). *Read:* Anthropic's Agent Skills engineering post; the superpowers README | Leverage |
| — | Thu Oct 7 | *Fall break, no class* | | |
| 7 | Thu Oct 14 | **The verification harness.** pytest; reproduce → failing test → root cause → fix; **hooks** that auto-run ruff + pytest; **review agents and skills** for agent-generated code. Course norm: *every bug becomes a permanent check.* **Team proposal due** | **B7 Review harness**: clear a provided planted-bug repo's issue backlog via agent fixes + PRs, then build your own review skill or subagent and run it over your fixes. Graded partly with **hidden holdout tests** the agent never saw (an O'Reilly idea). *Read:* Shah & Oram, "When AI can code…" | Delegate + verify |
| 8 | Thu Oct 21 | **CI & cloud robots.** GitHub Actions on push (watch it go red → green); scheduled jobs; secrets. CI makes the harness "a rule, not a habit" | **B8 Cloud robot**: a scheduled Action that does something useful daily (scraper, digest, auto-updating README or badge). No LLM required. *Read:* Willison, "Git scraping" | Automate verification |
| 9 | Thu Oct 28 | **Application: agentic data analysis.** polars + plotnine + Great Tables, using `.py` scripts and `.qmd` reports. Data skills: the official plotnine skill, the Great Tables skill, holtzy's `roast-my-chart` as a chart *reviewer*, and a student-written "house style" skill. Verifying the numbers, not just the plots. *Team studio starts* | **B9 Data analysis report** (`.qmd`, deployed). The dataset includes a messy **free-text column** that's hard to analyze, which sets up meeting 10. *Read:* plotnine skill announcement + Data-to-Viz caveats (TBD) | Apply |
| 10 | Thu Nov 4 | **LLMs inside your code (chatlas).** Why and when to call an LLM from Python; system prompts; API keys and `.env`; **structured data** → polars; `register_tool` (tool calling); tokens and cost; swapping providers in one line; a tiny **eval** set | **B10 AI-powered tool**: classify or extract structure from B9's free-text column, with a ~20-example labeled eval reporting accuracy. *Read:* Husain, "Your AI product needs evals" | Embed |
| 11 | Thu Nov 11 | **MCP.** What the protocol is; using MCP servers from the agent (e.g. Playwright, GitHub); building a server in Python with FastMCP; connecting to it from chatlas (async-only, so `asyncio.run`). Security: prompt injection, the "lethal trifecta", trusting third-party servers | **B11 MCP server**: expose your own data or tool, then use it from your agent *and* from a chatlas script. **Due Dec 2** (spans Thanksgiving). *Read:* Willison, "The lethal trifecta for AI agents" | Connect |
| 12 | Thu Nov 18 | **Multi-agent orchestration + team workflows.** Subagents; parallel agents in **git worktrees**, each opening a PR; humans review and merge; resolving conflicts. Replaces the old PR / fork-and-merge work sessions. **Interim report due** | No separate build; applied in the team project and documented in the final report. *Read (debate pair):* Anthropic, "How we built our multi-agent research system" vs. Cognition, "Don't build multi-agents" | Orchestrate |
| — | Thu Nov 25 | *Thanksgiving, no class* | | |
| 13 | Thu Dec 2 | **Team studio**: instructor circulates, audits, gives direction | | |
| 14 | **Tue Dec 7** | **Studio + final checkpoint** (Designated Thursday). **Final report due** | | |
| Exam | Dec 10–16 (slot TBD) | **Final presentations** | | |

### What changed from `course-plan.md`

- **Added:** meeting 1 by hand (no agent); How LLMs Work; Agents as its own
  meeting; Agentic Data Analysis; chatlas; MCP.
- **Merged:**
  - old *Workflow Automation*: commands go to Skills, hooks go to Verification;
  - old *Debugging & Issue Resolution* goes to Verification;
  - old PR/issues and fork/merge work sessions go to meeting 12.
- **Moved:** Personal Website from build 1 to build 3, now the first agent build.
  Git & Pages by hand stays in week 1.
- **Dropped:** the Simulation Experiment build (offer it as a team-project idea),
  and four project-only meetings.
- **Kept:** Ingestion, Recreate an App, Video Game, Cloud Robot, the planted-bug
  repo, the conversation-history deliverable.

---

## C. Tech stack

| Purpose | Tool |
|---|---|
| Python environments & running code | **uv** (`uv run`, `uv add`, inline script metadata) |
| Lint / format | **ruff** |
| Tests | **pytest** |
| Data | **polars** |
| Plots | **plotnine** |
| Tables | **great_tables** |
| LLMs from Python | **chatlas** (`chatlas[mcp]` for MCP) |
| MCP servers | **mcp** (FastMCP) |
| Reports / notebooks | **Quarto** `.qmd` (Jupyter engine) |
| Version control / CI / hosting | Git, GitHub, GitHub Actions, GitHub Pages |

**File types:**
- `.py` for scripts, tools, robots and MCP servers.
- `.qmd` for notebook-style exploration and reports. Quarto's Jupyter engine is
  fine.
- **No `.ipynb` notebooks, ever.**

**Practical notes:**
- The Jupyter engine needs `ipykernel` in the project's uv environment, and Quarto
  has to find that environment (e.g. `uv run quarto render`). Document this on the
  Software page.
- DeepLearning.AI's "How Transformer LLMs Work" labs run in hosted `.ipynb`
  notebooks. If it's assigned at all, assign the videos only.
- Lorena's tocify case study was ported to a notebook. Our versions are the B8
  robot and the B10 tool, as plain scripts.

---

## D. AI tools and cost policy

There are **no institutional credits yet**. Follow the current EDA/MADD policy:
students bring their own **~$20/month subscription**. Base the wording on
`~/gh/teaching/EDA/2026-Fall/software.qmd` and `syllabus.qmd`, with these changes:

- **Recommend Claude Pro (Claude Code) or ChatGPT Plus (Codex).** Other agents are
  allowed (Gemini CLI, Copilot, OpenCode…).
- **Explain why a subscription:** agentic use burns a lot of tokens, so a flat
  subscription is far cheaper than paying per token through the API.
- Say that institutional access is being pursued, and tell students to check Slack
  before paying.

**Teach cross-agent where it's cheap to do so:**
- **AGENTS.md** is the canonical project-instructions file. CLAUDE.md imports it
  (`@AGENTS.md`), so one file serves both agents.
- **Agent Skills** use the same `SKILL.md` format in both agents: Claude Code reads
  `.claude/skills/`, Codex reads `.agents/skills/`.
- **MCP** works in both.
- Add a short **Claude Code ↔ Codex equivalence table** on the Software page.
- Before writing those decks, **verify Codex parity** for plan mode, hooks and
  subagents (meetings 5, 7 and 12).

**The API gap.** A Claude or ChatGPT subscription does **not** include API access,
but meetings 10–11 (chatlas) need an API key. Recommended path:
- A **free option:** the Gemini API free tier via `ChatGoogle`, or a local model via
  `ChatOllama`.
- **Or** load about **$5 of API credit** and use a small, cheap model.
- chatlas code is identical across providers (change one line), so the materials
  stay provider-neutral.
- State the expected cost ceiling in the syllabus.
- CI (meeting 8) deliberately comes **before** chatlas, so the cloud robot needs no
  API key.
- **GitHub Models** (free, authenticates with `GITHUB_TOKEN`) looked attractive but
  isn't a safe plan. chatlas has no `ChatGithub` class (it would need
  `ChatOpenAICompletions` with a custom `base_url`), and one Nov 2026 source claims
  GitHub Models was retired. Verify before relying on it.

---

## E. Alignment with the MIT AI & Education report

The report's core principles: *lean into learning* (productive struggle),
*augmentation, not automation*, *teach with intentionality* (backward design), and
*put humanity front and center*. Concrete course features:

| MIT rec. | Course feature |
|---|---|
| §3.1.1 Revisit course goals (backward design) | Rewrite the learning objectives first. Each meeting states *why now* on the gradient |
| §3.1.2 Durable learning | **Two oral code walkthroughs** per student (5–10 min, in class): explain a build and answer "why did you / the agent do it this way?" |
| §3.1.3 Project-based learning | Already the core of the course |
| §3.1.4 In-person social learning | Team studio from meeting 9; in-class peer PR review; graded team check-ins |
| §3.1.6 Mastery over ranking | Check-graded builds (reuse the EDA check system), lowest dropped, one resubmission allowed (as in Lorena's course) |
| §3.1.8 AI policy with justification (App. B menu) | Label the policy **B.3 "Required GenAI use"** for builds. Two **AI-free carve-outs**: meeting-1 Git by hand, and the written reading reflections (honor-based). Give each its rationale, tied to the learning objectives |
| §3.1.9 No AI detectors | Say so explicitly. The evidence is the process record: conversation logs + git history |
| §3.2.3 Instructor disclosure | Disclose instructor AI use in making course materials and in drafting grading feedback |
| §3.2.4 Teach responsible use | Meeting 2: failure modes, hallucinated citations, ethics (training data, bias, energy use, authorship), when *not* to use AI. Security in meetings 3, 6 and 11 |
| §3.3.7 Equitable access | Be upfront about the ~$20/month cost; institutional access is being pursued; a free or local path for API work |
| §3.3.8 Model choice | Claude or ChatGPT (others allowed); chatlas is provider-agnostic; cross-agent file standards |
| §3.3.9 Logging & privacy | A conversation-log policy: what is collected, who sees it, how it's used; students scrub secrets and PII (API keys!) before submitting |
| §3.3.10 Cost & environment | Discussed in meeting 2; token/cost tracking in meeting 10 |

---

## F. What we take from the DeepLearning.AI skills map

**Pull in:**

| Skill | Where |
|---|---|
| 1.1 LLM foundations (tokens, context windows, sampling, reasoning, tool calling) | Meeting 2 |
| 1.3 Agentic systems (workflows vs. agents, guardrails, MCP, sandboxing) | Meetings 3, 11 |
| 1.4 Evaluation-driven development (light) | Meeting 10 |
| 2.4 Secure & reliable systems (test strategy, shift-left security) | Meeting 7 |
| 2.5 Version control & code review | Meetings 1, 12 |
| **Pillar 3, Using coding agents** (directing, autonomy, reviewing, customizing, foundations and failure modes) | Essentially all of Part 1 |
| 4.2 Making product decisions (writing a spec when none exists) | Meeting 5, team proposal |

**Skip:** 1.5 production operations, 1.6 ML foundations, 2.3 system architecture,
and full RAG pipelines (mention RAG in meeting 4 at most).

**Optional:** a short self-assessment against the four pillars in meeting 1 and
again at the end, for metacognition.

## G. What we take from Lorena's MAE 6291

**Borrow:**
- the LLM-foundations session (3Blue1Brown videos 1–7, Messeri & Crockett, the
  "illusion of understanding" thread);
- context-engineering content (attention budget, context rot, Markdown over PDF,
  fresh sessions over marathon chats, the "plugin tax");
- the semantic / episodic memory framing;
- the agent design-pattern heuristic: *start with a single agent with tools; add
  complexity only with evidence*;
- the **tocify** idea (API + GitHub Secrets + scheduled Action + cost control),
  which informs B8 and B10;
- pass/resubmit grading;
- the Sarkar TED talk.

**Skip:** the two Jupyter AI / Copilot-in-notebook sessions, the research-specific
framing, NotebookLM-centred literature review, and Google-Doc submissions.

**Still on the reference list from `course-plan.md`:**
- **Roborev** (continuous AI review) → meeting 7.
- **Agentsview** (reviewing what agents did; handy for log submissions) → meetings 3
  and 12.
- **Middleman** (issue/PR triage) → meeting 12.
- Note: `course-plan.md` attributes **superpowers** to McKinney. The repo appears to
  be Jesse Vincent's (`obra/superpowers`). Verify and fix the attribution.

---

## H. Assessment and team timeline

| Component | Weight | Notes |
|---|---|---|
| Builds | **40%** | 11 builds, lowest dropped, 10 × 4%. Check-graded, one resubmission |
| Oral code walkthroughs | **10%** | 2 × 5%, in class |
| Team project: proposal | 5% | Due Oct 14 (meeting 7) |
| Team project: interim report | 10% | Due Nov 18 (meeting 12) |
| Team project: final report | 15% | Due Tue Dec 7 (meeting 14) |
| Final presentation | 10% | Final-exam slot |
| Participation (attendance-driven) | 10% | Thresholds carried over from `class-factory.md` |

Team timeline: teams form **Sep 23** → proposal **Oct 14** → interim **Nov 18** →
final report **Dec 7** → presentations in the **exam slot**.

The schedule CSV allows one project deliverable per row, which is why the final
report sits on Dec 7 rather than in the exam slot. If the report should come *after*
the presentations, the CSV needs an extra row.

---

## I. Open questions

1. **Meeting day, time and room for Fall 2027.** Still Thursdays 3:30–6:00?
   Everything above assumes Thursdays. A different day shifts all the dates.
2. **Presentations:** final-exam slot (current plan) or Tue Dec 7? And should the
   final report be due before or after the presentations?
3. **Prerequisites:** keep "one programming course"? Require Python specifically?
4. **Load:** 11 builds + 2 walkthroughs + team project. Should B1 and B2 be
   pass/fail warm-ups? Is the lower final-report weight (25% → 15%) OK?
5. **Codex support:** first-class with equivalence notes (recommended), or EDA's
   "materials assume Claude Code; you're on your own"?
6. **API path for meetings 10–11:** free tier / local model, or ~$5 of credit?
7. **Readings marked TBD:** B5 (spec-driven development) and B9 (dataviz).

---

## J. Reading list and sources

Readings embedded in builds. URLs marked † were taken from the source pages during
review. Verify the others when each build page is written.

| Build | Reading |
|---|---|
| B1 | MIT report §1 principles † <https://aiandeducation.mit.edu/report/> · Sarkar TED talk † <https://www.youtube.com/watch?v=3lPnN8omdPA> |
| B2 | Messeri & Crockett (2024), *Nature* † [PDF](https://lrc.northwestern.edu/language-instruction/professional-development1/artificial-intelligence-and-illusions-of-understanding-in-scientific-research-nature.pdf) · 3Blue1Brown neural networks series † <https://www.youtube.com/watch?v=aircAruvnKk&list=PLZHQObOWTQDNU6R1_67000Dx_ZCJB-3pi> |
| B3 | McKinney † <https://motherduck.com/blog/vibe-coding-dangerous-agentic-engineering-wes-mckinney/> · Anthropic, "Building effective agents" <https://www.anthropic.com/engineering/building-effective-agents> |
| B4 | Anthropic, "Effective context engineering for AI agents" <https://www.anthropic.com/engineering/effective-context-engineering-for-ai-agents> · Chroma, "Context Rot" <https://research.trychroma.com/context-rot> |
| B5 | McKinney, "Agent ergonomics" † <https://wesmckinney.com/blog/agent-ergonomics/> (or TBD) |
| B6 | Anthropic, "Equipping agents for the real world with Agent Skills" <https://www.anthropic.com/engineering/equipping-agents-for-the-real-world-with-agent-skills> · superpowers <https://github.com/obra/superpowers> |
| B7 | Shah & Oram, O'Reilly Radar † <https://www.oreilly.com/radar/when-ai-can-code-what-is-left-for-programmers-to-do/> |
| B8 | Willison, "Git scraping" <https://simonwillison.net/2020/Oct/9/git-scraping/> |
| B9 | plotnine skill announcement † <https://opensource.posit.co/blog/2026-05-05_plotnine-skill-announcement/> · Data-to-Viz caveats <https://www.data-to-viz.com/caveats.html> (TBD) |
| B10 | Husain, "Your AI product needs evals" <https://hamel.dev/blog/posts/evals/> |
| B11 | Willison, "The lethal trifecta for AI agents" <https://simonwillison.net/2025/Jun/16/the-lethal-trifecta/> |
| M12 | Anthropic, multi-agent research system <https://www.anthropic.com/engineering/multi-agent-research-system> · Cognition, "Don't build multi-agents" <https://cognition.ai/blog/dont-build-multi-agents> |

Tools and skills:
- holtzy/dataviz-skills † <https://github.com/holtzy/dataviz-skills> (MIT license;
  includes `roast-my-chart` and `inspiration`; no plotnine skill)
- plotnine skill: `uvx library-skills install --claude -s plotnine` (plotnine ≥
  0.15.4) or `npx skills add has2k1/plotnine-skill`
- Great Tables skill † <https://posit-dev.github.io/great-tables/skills.html>
  (`npx skills add https://posit-dev.github.io/great-tables/`)
- No official polars skill found. Writing one is a possible in-class exercise.
- chatlas † <https://posit-dev.github.io/chatlas/> · MCP tools guide †
  <https://posit-dev.github.io/chatlas/misc/mcp-tools.html>
- Transformer Explainer <https://poloclub.github.io/transformer-explainer/> ·
  tokenizer playground <https://tiktokenizer.vercel.app/> · markitdown
  <https://github.com/microsoft/markitdown>

Not yet read from Lorena's course (readable via the Google Docs text export if
needed): notes for classes 1, 3, 4, 7–9 and 11–13; assignments 2–5; the slide decks.

---

## K. Implementation checklist (site propagation)

**Rules:** follow `CLAUDE.md`. **Never render** `.qmd` files and **never run git**;
John renders and commits. Every `class/` and `hw/` target is still a placeholder,
so moving and renaming is safe.

### K1. Pointers
- `CLAUDE.md`: add `planned-updates.md` to "Source of truth (read these first)" as
  the current plan, superseding `course-plan.md` where they conflict. Also update
  the course name, number and semester in its first paragraph.
- `course-plan.md`: add a one-line note at the top pointing to `planned-updates.md`.
  Leave the rest, and `class-factory.md`, untouched.

### K2. Identity
- `_variables.yml`:
  - `title: "EMSE 4197: Build with AI (Fall 2027)"`
  - `name: "Build with AI: An Introduction to Agentic Engineering"`
  - `number: EMSE 4197`, `semester: Fall 2027`
  - `dates: "Aug. 26 - Dec. 7, 2027"`
  - weekday/time/room stay as-is pending open question 1
- `_quarto.yml`: `website.title: EMSE 4197`, and a description mentioning Fall 2027
  and "Build with AI".
- `index.qmd` heading, `README.md`, `DESCRIPTION` `Title:`: new number, title and
  semester.
- `schedule.qmd`: change "Spring 2027 academic calendar" to Fall 2027.

### K3. `schedule.csv` (replace contents; same columns, so `get_schedule()` is unchanged)

`week` is the semester week, counting from Aug 23. Break rows have no class or
build.

```csv
week,date,theme,n_class,stub_class,name_class,description_class,n_assign,name_assign,stub_assign,due_assign,n_project,stub_project,name_project,due_project
1,2027/08/26,By hand,1,git-github-pages,"Git, GitHub & Pages","Setup; Git and GitHub by hand: commit, branch, PR; deploying to GitHub Pages",1,,git-warmup,2027/09/02,,,,
2,2027/09/02,Chat,2,how-llms-work,How LLMs Work (and Fail),"Tokens, attention, sampling, context windows, hallucination, tool calling",2,,probe-the-model,2027/09/09,,,,
3,2027/09/09,High touch,3,agents,Agents,"The agent loop and harness; tools, permissions, and failure modes",3,,personal-website,2027/09/16,,,,
4,2027/09/16,High touch,4,context-engineering,Context Engineering,"Attention budget, injecting documents, context hygiene",4,,ingestion,2027/09/23,,,,
5,2027/09/23,High touch,5,planning-and-memory,"Specs, Planning & Memory","Plan mode; specs with guardrails; AGENTS.md and CLAUDE.md; teams form",5,,recreate-app,2027/09/30,,,,
6,2027/09/30,Leverage,6,skills,Skills,"Using and building skills; commands as skills",6,,video-game,2027/10/14,,,,
7,2027/10/07,,,,Fall Break — no class,,,,,,,,,
8,2027/10/14,Delegate + verify,7,verification,The Verification Harness,"Tests, hooks, debugging, and review agents",7,,review-harness,2027/10/21,1,proposal,Proposal,2027/10/14
9,2027/10/21,Automate verification,8,continuous-integration,CI & Cloud Robots,"GitHub Actions on push; scheduled jobs; secrets",8,,cloud-robot,2027/10/28,,,,
10,2027/10/28,Apply,9,data-analysis,Agentic Data Analysis,"polars, plotnine, and Great Tables with data skills; team studio begins",9,,data-analysis,2027/11/04,,,,
11,2027/11/04,Embed,10,llm-apis,LLMs Inside Your Code,"Calling LLMs from Python with chatlas: structured data, tools, evals",10,,ai-tool,2027/11/11,,,,
12,2027/11/11,Connect,11,mcp,MCP,"Using and building MCP servers; prompt-injection risks",11,,mcp-server,2027/12/02,,,,
13,2027/11/18,Orchestrate,12,multi-agent,Multi-Agent & Team Workflows,"Subagents, parallel agents in worktrees, PR review and merging",,,,,2,interim-report,Interim Report,2027/11/18
14,2027/11/25,,,,Thanksgiving — no class,,,,,,,,,
15,2027/12/02,Team project,,,Team Studio,"Team work; instructor circulates and gives direction",,,,,,,,
16,2027/12/07,Team project,,,Studio & Final Checkpoint,"Designated Thursday (meets Tue Dec 7); final code review",,,,,3,final-report,Final Report,2027/12/07
17,2027/12/10,Team project,,,Final Presentations,"During the final exam slot (date TBD)",,,,,4,presentation,Presentation,2027/12/10
```

The exam-row date (Dec 10) is a placeholder until the registrar posts the slot.

### K4. `class/` stubs
Each meeting has a landing page `class/N-stub.qmd` (placeholder; `params: class:
"N-stub"`) and a deck folder `class/N-stub/index.qmd` (subtitle
`"EMSE 4197 · Week N"`, where N is the meeting number). Final set:

| Meeting | Stub | Source |
|---|---|---|
| 1 | `1-git-github-pages` | keep (update subtitle) |
| 2 | `2-how-llms-work` | new |
| 3 | `3-agents` | new |
| 4 | `4-context-engineering` | from `2-context-injection` |
| 5 | `5-planning-and-memory` | from `3-planning-and-memory` |
| 6 | `6-skills` | from `4-skills` |
| 7 | `7-verification` | replaces `5-workflow-automation` + `6-debugging` |
| 8 | `8-continuous-integration` | from `7-continuous-integration` |
| 9 | `9-data-analysis` | new |
| 10 | `10-llm-apis` | new |
| 11 | `11-mcp` | new |
| 12 | `12-multi-agent` | from `8-multi-agent` |

Remove the old stubs that no longer appear. In `_quarto.yml`, replace the
`render:` exclusion list with one `!class/N-stub/` line per deck folder above.

### K5. `hw/` build pages
Each page keeps the existing pattern (`params: number, purpose` + the
`fragments/hw.qmd` child + placeholder). Set the title "Build N: …" and write a
one-sentence `purpose` from table B.

| N | File | Source |
|---|---|---|
| 1 | `hw/1-git-warmup.qmd` | new |
| 2 | `hw/2-probe-the-model.qmd` | new |
| 3 | `hw/3-personal-website.qmd` | from `1-personal-website` |
| 4 | `hw/4-ingestion.qmd` | from `2-ingestion` |
| 5 | `hw/5-recreate-app.qmd` | from `3-recreate-app` |
| 6 | `hw/6-video-game.qmd` | from `4-video-game` |
| 7 | `hw/7-review-harness.qmd` | from `6-debugging-backlog` |
| 8 | `hw/8-cloud-robot.qmd` | from `7-cloud-robot` |
| 9 | `hw/9-data-analysis.qmd` | from `5-data-pipeline` |
| 10 | `hw/10-ai-tool.qmd` | new |
| 11 | `hw/11-mcp-server.qmd` | new |

Remove `hw/8-simulation.qmd`. Update the "Builds (Individual)" sidebar in
`_quarto.yml` to list these 11.

### K6. Fragments
- `fragments/hw.qmd`: change the weight line to "This build is worth 4% of your
  final grade (11 builds, lowest dropped, 10 × 4% = 40%)", and mention the reading
  reflection in the deliverable.
- `fragments/description.qmd`: rewrite for undergraduates, covering the two-part
  arc, Python, the LLM foundations → agents → building-with-LLMs progression, and
  example builds.
- `fragments/learning-objectives.qmd`: keep the existing six (adjusted), and add:
  - explain how LLMs work and why they fail;
  - call LLMs from code and connect agents to tools via MCP;
  - analyze data with an agent;
  - use AI responsibly (verify, disclose, protect secrets).
- `fragments/prerequisites.qmd`: undergraduate wording (pending open question 3).

### K7. Pages
- `syllabus.qmd`:
  - "How the Course Works": the two parts plus team studio.
  - Grading table from section H.
  - Rebuilt Generative-AI policy: B.3 label + rationale, the AI-free carve-outs, no
    detectors, instructor disclosure, conversation-log privacy, the subscription
    policy from section D.
- `software.qmd`:
  - the stack from section C;
  - uv + Quarto/ipykernel notes;
  - subscription steps adapted from EDA;
  - the Claude Code ↔ Codex table;
  - the API options for meetings 10–11.
- `references.qmd`: the reading list from section J, plus the tools and skills.
- `project/0-overview.qmd`: the deliverables table with the new weights and dates.
  `project/3-final-report.qmd`: `weight: "15%"`.

### K8. Memory
Update `~/.claude/projects/-Users-jhelvy-gh-teaching-intro-to-agentic-engineering/memory/intro-agentic-engineering-course.md`:
new title and number, Fall 2027, Python (`.py` + `.qmd`, no `.ipynb`), students
bring their own subscription, and `planned-updates.md` as the current plan.

### K9. Verification
- `grep -rn "6992\|Spring 2027" --exclude-dir=_site --exclude-dir=.quarto .`
  should match only `class-factory.md`, `course-plan.md` and this file.
- Every `href:` in `_quarto.yml` and every `!class/…/` render exclusion points to an
  existing file or folder (shell loop).
- `Rscript -e 'source("_common.R"); print(get_schedule(), n = 25)'` parses, and the
  generated `class/N-stub.html`, `hw/N-stub.html` and `project/N-stub.html` links
  match the real filenames. This runs only the R helper and renders nothing.
- John runs `quarto preview` to check visually.
