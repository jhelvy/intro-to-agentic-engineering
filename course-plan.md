# Introduction to Agentic Engineering — Course Plan

> **Status:** Working design document. This is the source of truth for course
> *content and structure* decisions. Logistics, policies, and university-required
> statements carry over from `class-factory.md` and will be merged in when we
> build the syllabus and Quarto website.
>
> **Course:** EMSE 6992 · Spring 2027 · Thursdays 3:30–6:00 PM (2.5 hr, in-person)
> **Instructor:** John Paul Helveston

---

## 1. Course thesis

The bottleneck on what you can build is no longer *what you already know* — it's
your **workflow discipline** and your ability to **direct an agent**. This course
teaches students to use tools like Claude Code to build ambitious things they
don't yet know how to build, while developing the professional engineering
workflows (Git, GitHub, CI, deployment) that make that sustainable and
trustworthy.

It is **not** a course on multi-agent system architecture or LLM internals. It is
a hands-on **workflow + building** course. Framing borrows from Wes McKinney's
distinction: *"vibe coding is dangerous, agentic engineering isn't."*

By the end, students should have (1) strong, transferable engineering workflow
skills, (2) the ability to work with code and data through an agent, and (3) the
ability to **teach themselves new domains** with an agent so they can tackle
harder systems in the future.

---

## 2. Two organizing ideas

### The dual spine
Every week runs two tracks at once:

- **Workflow track (the through-line)** — taught *hands-on in class*. Accumulates
  transferable engineering skills in order: terminal/agent basics → Git & GitHub
  → context → planning & project config → skills → automation → debugging → CI →
  orchestration. Same every cohort; it's the durable backbone.
- **Build track (the hook)** — the *take-home assignment*. Each week is an
  ambitious build in an unfamiliar domain that forces self-directed learning. The
  build is the vehicle; the workflow skill is what gets practiced and assessed.

These map cleanly onto the two **modes** of the course:
**class time = workflow (learn by doing together)**, and
**homework = build (prove it on something harder, alone).**

### The trust gradient
The sequence deliberately climbs from high-touch collaboration toward supervised
autonomy — the maturity curve of agentic engineering:

| Weeks | Trust level | What it means |
|-------|-------------|---------------|
| 1–3 | **High touch** | You run everything; tight back-and-forth with the agent |
| 4–5 | **Leverage** | Package repeatable power (skills, commands, hooks) |
| 6 | **Delegate + verify** | Agents find *and fix* problems; a review agent vets the work |
| 7 | **Automate verification** | CI runs your checks for you |
| 8 | **Orchestrate** | Planner→coder→tester pipeline; you review only the final result |

Each week's placement is justified by *why now* on this gradient.

---

## 3. Prerequisites (revised)

- At least one programming course (e.g., CSCI 1012) **required**.
- Students must be comfortable reading code, following logic, and recognizing when
  the agent is wrong (review-level literacy). They are not expected to author
  production code unaided, but **zero coding experience will make this course very
  difficult.**
- **The previous "no R/Python experience needed" promise is removed.**

---

## 4. Learning objectives (revised)

By the end of the course, students will be able to:

1. **Direct an AI agent** to build real products in domains they haven't learned
   before.
2. **Use Git, GitHub, and pull requests fluently** as everyday version control and
   collaboration tools.
3. **Set up continuous integration** with GitHub Actions and **deploy to the web**
   with GitHub Pages.
4. **Debug agent-built systems** and use agents to diagnose and resolve issues,
   with automated review.
5. **Orchestrate specialized agents** (planning, coding, testing) into a
   supervised pipeline.
6. **Teach themselves a new domain** using an agent — the meta-skill that outlasts
   any single tool.

*(Dropped from the original draft: "build multi-agent systems" in the
architectural sense and "evaluate LLM outputs for bias" — different course.)*

---

## 5. Weekly schedule

### Individual-build phase (Weeks 1–8)

Each week: a workflow concept taught hands-on in class, then an ambitious
take-home build that applies it. Builds get more open-ended as the course
progresses. In-class work is **ungraded practice** — but the homework assumes it.

| Wk | Class concept (hands-on) | In-class activity | Take-home build | Trust |
|----|--------------------------|-------------------|-----------------|-------|
| 1 | **Git, GitHub & Pages** + agent/terminal setup | Everyone: install + first agent session; make a repo, commit, open a PR, deploy a "hello world" to a live URL | **Personal website** — choose a framework (React, Quarto, plain HTML…), clean commit history, deployed on GitHub Pages | High touch |
| 2 | **Context management & document injection** | Inject docs into the agent; practice grounded summarizing; good vs. bad context hygiene | **Ingestion build** — *student choice:* a literature review on a research topic **or** a novel in an admired author's voice | High touch |
| 3 | **Bigger projects: plan mode + CLAUDE.md / memory / project config** | Run a task in plan mode, edit the plan before executing; write a CLAUDE.md and watch behavior change; set up memory | **Recreate a known app from a spec** — e.g., Wordle, a pomodoro timer with stats | High touch |
| 4 | **Skills (use & build)** — anchor on McKinney's *superpowers* | Install a skill from the marketplace and use it; then build a tiny custom skill together | **Video game** — download game-dev skills, assemble, extend | Leverage |
| 5 | **Workflow automation: custom commands + hooks** (builds on skills) | Spot a repeated workflow → encode as a `/command`; add a hook that fires at the end of the workflow | **Data report pipeline** — repeated steps encoded as commands; hooks auto-run lint/tests | Leverage |
| 6 | **Debugging & agentic issue resolution** — review agents (the *Roborev* model) | Provided planted-bug repo: direct the agent to reproduce, write a failing test, find root cause, fix; run a review agent over the change | **Clear a controlled repo's issue/bug backlog** via agent-driven fixes + PRs, with automated review | Delegate + verify |
| 7 | **CI with GitHub Actions** | Set up a workflow that runs tests on push (watch it go red→green); add a scheduled job | **"Cloud robot"** — a scheduled Action that does something useful daily (scraper, digest, auto-updating README/badge) | Automate verification |
| 8 | **Multi-agent orchestration** — planner / coder / tester roles, supervised autonomy | Set up specialized subagents to tackle parts of a task in parallel; compare to single-agent | **Simulation experiment** — master agent designs, codes, and tests the study; the human only reviews the final results | Orchestrate |
| 9 | — **Spring break, no class** — | | | |

### Team-project phase (Weeks 10–16)

The team project is the only fully open-ended work, running underneath the whole
semester and intensifying late. Collaboration workflows (PR reviews, fork →
branch → merge) are taught *live* during the work sessions while the instructor
circulates and audits.

| Wk | Team milestone | Taught live in class |
|----|----------------|----------------------|
| 4 | Teams form (3–4 students) | — |
| 6 | **Proposal due** (2 weeks to ideate as a group) | — |
| 10 | Project kickoff / work session | Deployment for *apps* (beyond static sites) |
| 11 | **Interim report due** | PR reviews, issues |
| 12–14 | Work sessions — instructor circulates, audits, gives direction | Fork → branch → merge workflows; splitting a problem into mergeable pieces |
| 15 | **Final report due** | — |
| 16 | **Final presentations** | — |

---

## 6. Assessment

| Component | Weight | Notes |
|-----------|--------|-------|
| Individual builds (HW1–HW8) | **40%** | 8 builds, each graded out of 10 pts |
| Team project — proposal | 5% | Week 6 |
| Team project — interim report | 10% | Week 11 |
| Team project — final report | 25% | Week 15 |
| Final presentation | 10% | Week 16 |
| Participation (attendance-driven) | 10% | See below |
| **Total** | **100%** | |

**Individual builds** are delivered as GitHub repositories and **include the full
conversation history** with the agent (prompts, responses, iterations). Grading
weighs: quality of initial prompts, evidence of iterative collaboration, final
product quality, and thoughtful use of the week's workflow skill.

**Participation** is driven primarily by **attendance**. In-class work is ungraded
practice, but it's hands-on and the homework builds directly on it — so missing
class costs the participation grade *and* makes the build much harder. (Carry over
the absence/lateness thresholds from `class-factory.md`.)

---

## 7. Decisions log (rationale we don't want to lose)

- **Class = workflow, homework = build.** The two spine tracks map onto the two
  modes of the course.
- **Git + deployment front-loaded to Week 1.** A live personal website by the end
  of the first build is motivating and seeds later deployment; "ship it live"
  becomes a recurring expectation rather than a single late week.
- **Plan mode is a technique, not a unit** — fused with CLAUDE.md/memory into a
  "set bigger projects up for success" week.
- **Skills before commands.** Skills are the bigger lever; commands + hooks then
  layer workflow automation on top of them.
- **Debugging kept controlled** (provided repo with planted issues) so the
  experience is consistent and gradable across students.
- **Multi-agent = orchestration with roles** (planner/coder/tester) and supervised
  autonomy — the capstone of the trust gradient, not architecture for its own sake.
- **PR/collaboration moved to the team phase**, taught live in work sessions.

## 8. Open items / to-do

- [ ] Concrete spec sheets + curated resources for each build (W1–W8).
- [ ] Author the controlled planted-bug repo for Week 6.
- [ ] Decide the Week 8 simulation domain (agent-based model? Monte Carlo study?).
- [ ] Confirm exact Spring 2027 dates and align the HW out/due cadence.
- [ ] Rubrics for builds, proposal, interim, final report, presentation.
- [ ] Team project deliverable lengths/specs (carry from `class-factory.md`, revise).
- [ ] Merge logistics + policies + university statements from `class-factory.md`.
- [ ] Scaffold the Quarto website (mirror the EDA 2026-Fall structure).

## 9. Reference material to teach from

- Wes McKinney — *"Vibe coding is dangerous, agentic engineering isn't"*
  (motherduck.com); blog "From Human Ergonomics to Agent Ergonomics".
- **superpowers** — McKinney's spec-driven agentic skills framework (Skills week).
- **Roborev** — continuous AI code review, issues flagged per commit (Week 6).
- **Middleman** — local dashboard to triage/review/merge issues & PRs (team phase).
- **Agentsview** — agent session viewer (reviewing what your agents did).
</content>
</invoke>
