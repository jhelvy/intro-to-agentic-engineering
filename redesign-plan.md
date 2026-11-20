# Build with AI — Redesign Plan (output-focused, any-major version)

> **Status:** Draft for discussion, Tim Wood → JP Helveston, Nov 20 2026. Based on the Nov 19 2026 meeting. Not yet implemented on the site.
>
> If adopted, this supersedes `planned-updates.md` for the **Build with AI** course. The current `planned-updates.md` design can stay as the more advanced **Intro to Agentic Engineering** course. JP said he may keep that repo for it.

---

## 1. Why redesign

At the Nov 19 meeting we agreed the current draft is an AI-*engineering* course: Git → CI → MCP → multi-agent worktrees. It's too software-focused for the main audience: **early-career students from any major who have taken one programming course (usually CSCI 1012)**, many of them outside SEAS. In JP's words, the new version should be "lighter in terms of technical rigor, but much more impactful in terms of workflow practices."

Four changes follow from the meeting:

1. **Organize the course around outputs, not tools.** Each week is about *what you build* (a website, an essay, a research brief, a data story, images, a video). The workflow skills (Git, context, specs, skills, verification, token efficiency) are taught along the way. "As opposed to centering it around skills, like, what is an MCP?"
2. **Teach enough vocabulary to direct the agent.** JP's students struggled because they didn't know what to ask for ("make it look good — but how?"). Each output week includes a short "what it's made of" segment (HTML/CSS, Markdown, plot grammar, slide formats) so students can write real instructions.
3. **Assessment that scales to 100+ students.** Builds and the project are graded for completion. The grade is earned mostly from handwritten, in-person conceptual quizzes and a final exam.
4. **Two equivalent course numbers (CS and EMSE).** One shared core. A small flexible slot lets each department's instructor add their own emphasis.

## 2. What stays the same

- **Dual spine:** a hands-on workflow concept in class, then a take-home build.
- **Git first, by hand, no agent**: commit → let the agent work → read the diff → keep or reject. JP calls this the most important prerequisite.
- **Conversation logs** and git history are submitted with every build as the record of process. **No AI detectors.**
- **Instructor stack:** Quarto, a VS Code/Positron IDE with a terminal agent, Python via uv, `.py` + `.qmd`, never `.ipynb`. GitHub Pages for anything public.
- **Open-ended final project** with studio time at the end.
- **Mostly Claude Code**, with Codex and others allowed. AGENTS.md and the Agent Skills format are used so the course works across tools.
- AI-free carve-outs: meeting 1 (Git by hand), the reading reflections, and now the **quizzes and final exam**.

## 3. What moves out (to the advanced course)

| Current topic | Where it goes |
|---|---|
| CI & GitHub Actions, secrets (M8, B8 cloud robot) | Advanced course. A simplified scheduled-automation idea survives in M11 as optional |
| pytest / ruff / hooks / planted-bug repo (M7, B7) | Advanced course. Verification is taught *for the artifact at hand*: number checks, citation audits, review skills |
| Building MCP servers (M11, B11) | Advanced course. Students may *use* an MCP server in a later week if it helps them build something |
| Parallel agents in worktrees, PR merging (M12) | Advanced course. Basic PR/branch collaboration stays in the team project |
| chatlas in depth (M10, B10) | Reduced to one optional part of M11 |
| Oral code walkthroughs (2 per student) | Dropped: they don't scale. The project video replaces them as the "explain your work" moment |

## 4. Learning outcomes (draft for the course proposal)

Students who complete the course will be able to:

1. **Explain** in plain language how large language models and AI agents work, and why they fail: hallucination, sycophancy, limited context.
2. **Manage AI-assisted work with version control**, using Git and GitHub to track, review, and undo changes an agent makes.
3. **Direct an AI agent to create a range of artifacts**: websites, written documents, research summaries, data analyses, visual media, presentations, and simple interactive tools, including in unfamiliar domains.
4. **Apply workflow practices** that make AI work reliable and efficient: managing context, writing specifications, building reusable skills, and using tokens and models wisely.
5. **Evaluate AI output** critically for accuracy, quality, and originality, and correct or reject it.
6. **Use AI responsibly**: disclose its use, protect private data and secrets, respect intellectual property, and recognize when *not* to use AI.

Mapping to the micro-minor program outcomes: (1) → PLO 4; (3) → PLO 2; (4, 5) → PLO 3; (6) → PLO 5; (2) supports PLO 1.

**Draft bulletin description:** *Hands-on introduction to creating with AI. Students build websites, documents, data analyses, media, and interactive tools while learning version control, verification, and responsible use. Prerequisite: CSCI 1012 or equivalent.*

## 5. Week-by-week (Fall 2027, Wednesdays, 14 meetings + exam slot)

**Format:** each meeting opens with a **10-min handwritten quiz** on the previous week's concepts and reading. Then comes the concept segment, the "what it's made of" segment, and hands-on practice. From meeting 9, the last ~45 min is **project studio**.

**Workflow thread:** the workflow skills build up across the semester, even though each week is named for an output: version control → model literacy → the agent loop → context → specs → skills → verification → automation.

| # | Date | Output (what you build) | Workflow concept taught along the way | Build (due next week) |
|---|---|---|---|---|
| 1 | Aug 25 | **A page on the web, by hand.** Markdown, a repo, GitHub Pages | Terminal, Git *without an agent*: commit, branch, PR. Markdown as the language of agents. Course AI policy and why | **B1 Hello, web**: repo with a clean history + one merged PR + a live Markdown page |
| 2 | Sep 1 | **A field report on the model** | How LLMs work and fail: tokens, sampling, context windows, hallucination, sycophancy. Chat vs. agent. **Tokens = cost and energy** (introduces the efficiency thread) | **B2 Probe the model**: 5 small experiments written up in a `.qmd` |
| 3 | Sep 8 | **Your personal website** | The agent loop and harness; permissions; the commit → agent → diff → keep/reject cycle. *Made of:* HTML, CSS, a little JS, and the vocabulary to ask for layout and style | **B3 Personal website**, agent-built, deployed |
| 4 | Sep 15 | **Writing in your own voice**: essay, op-ed, or blog post | Context engineering with *your* material. Build your first **skill**: a "my voice" skill made from your own writing samples. Agent as editor vs. author; spotting and removing "AI voice" | **B4 Voice skill + a piece** written with it, plus a short note on what you kept and rejected |
| 5 | Sep 22 | **A research brief**: literature review or briefing book on a topic in your major | Context at scale: Markdown over PDF, context rot, fresh sessions. **Verification #1: citation audit** (does every source exist, and does it say that?) | **B5 Briefing book + citation audit log** |
| 6 | Sep 29 | **A small interactive tool**: quiz, timer, calculator, or tracker for something you care about (JP's cooking-timer example) | **Plan before you build:** plan mode, a spec with guardrails, AGENTS.md as project memory. **Teams form** | **B6 App from your own spec**: spec written *before* any code |
| 7 | Oct 6 | **A data report** | Agentic data analysis: polars + plotnine in a `.qmd`. **Verification #2: check the numbers, not just the plots.** Reproducibility | **B7 Data report** on a provided or chosen dataset, with a "numbers I checked" section |
| 8 | Oct 13 | **A data story for an audience**: polished charts, tables, maybe a small dashboard | **Review agents and skills:** `roast-my-chart` as reviewer; a "house style" skill; designing for a non-expert reader. **Team proposal due** | **B8 Data story**, deployed |
| 9 | Oct 20 | **A consistent set of images**: illustrations, an infographic, or a visual series | Chaining tools into a pipeline: generate → check → fix text with Python; a skill makes it repeatable. Provenance, copyright, disclosure. *Studio begins* | **B9 Image pipeline skill + a set of ≥5 consistent images** |
| 10 | Oct 27 | **A presentation and a short scripted video** (Quarto revealjs; animated or narrated explainer) | Composing skills; accessibility checks (alt text, contrast, reading level) as verification. **This is practice for the final-project video** | **B10 3-min explainer video** on any topic from the course |
| 11 | Nov 3 | **Automate something boring**: a helper for a real task (clean a spreadsheet, triage files, extract data from documents) | Automation and efficiency: model choice, measuring cost, a tiny **eval** (does the helper get 20 hand-checked cases right?). Optional: call an LLM from Python; schedule it to run | **B11 Boring-task helper + eval + cost note** |
| 12 | Nov 10 | **Flex module (instructor's choice; see §6)** | | none (project check-in due) |
| 13 | Nov 17 | **Project studio** | Instructor/TAs circulate | |
| — | Nov 24 | *Thanksgiving, no class* | | |
| 14 | Dec 1 | **Studio + showcase prep** (last class) | | **Final project due** (artifact + video + workflow README) |
| Exam | Dec 10–16 | **Final exam** (handwritten, ~1 hr) + optional showcase | | |

**Embedded readings:** most of JP's current reading list carries over:

- **B2:** Messeri & Crockett; 3Blue1Brown.
- **B3:** McKinney; Anthropic, "Building effective agents."
- **B5:** context engineering; Context Rot.
- **B8:** Data-to-Viz caveats.
- **B11:** Husain on evals.

New readings are needed for:

- **B4 (writing):** something on AI and voice/authorship.
- **B9 (images):** provenance and C2PA.
- **B10 (video/presentations):** accessibility.

## 6. The flex module (meeting 12)

This slot is the main way we can make the CS and EMSE versions differ while staying one equivalent course. Shared outcomes, shared builds 1–11, and the shared project make up ~90% of the course (of course these can be customized by each instructor as needed). Each instructor chooses one flex module from a shared menu, including options like:

| Module | Content |
|---|---|
| **Build your own agent** | ~100 lines of Python: model call → parse tool request → run it → loop. Uses 1012 skills (loops, dicts, JSON). Agents stop being magic |
| **AI security and privacy** | Red-team an agent with prompt injection; the "lethal trifecta"; what data you can and can't paste (FERPA/HIPAA); local models as the private option |
| **Connecting agents to the world (MCP)** | *Using* MCP servers (GitHub, a browser, a data source) to build something |
| **Team workflows** | Branches, PRs, and review in a shared repo; one agent per teammate |
| **With vs. without AI** | Do the same task both ways; time it; blind-grade quality; write up the evidence |

Quiz and final-exam questions for meeting 12 come from whichever module was taught. Everything else on the exam is shared.

## 7. Assessment

| Component | Weight | How it's graded | Who/what grades it |
|---|---|---|---|
| Builds (11, lowest dropped) | **25%** | Completion: **0 / 0.5 / 1**. Did they do the thing, with a log, and push it? | Claude reviews each conversation log against a checklist; TAs spot-check and handle appeals |
| Weekly quizzes (~12, lowest 2 dropped) | **30%** | Handwritten, ~10 min, conceptual ("What is a token? One sentence.") | JP's OCR + rubric grading skill; TAs review edge cases |
| Final exam | **20%** | Handwritten, ~1 hr, an extended quiz | Same pipeline |
| Final project | **25%** | Proposal 5% (completion), check-in 5% (completion), final 15% (see below) | TAs with a workflow checklist |

**Final project (teams of 2–4, or solo with approval).** Open-ended: build anything using the course workflow. A game, a book, a website, a data story, a tool, or a video series all count. Deliverables:

1. **The artifact**, in a GitHub repo, deployed if it's web-based.
2. **A 5-min recorded video** walking through what they built and how.
3. **A workflow README** covering the spec, AGENTS.md, the skills they made, what they verified and how, token/cost use, and what the agent got wrong.
4. **Conversation logs.**

The final is graded on whether they **followed the workflow**, not on how impressive the artifact is. Each component scores 0 / 0.5 / 1. Teams cut 100+ students down to ~30–40 projects. The video replaces live presentations, which frees the exam slot for the final exam. The showcase is optional and for fun.

**Token-efficiency thread.** Every build submission includes a short **build card**: which model(s), rough tokens/cost, time spent, and one thing done to be efficient. Scoring the *numbers* is unenforceable, since students can use another tool on the side. So the build card counts toward completion only, and efficiency becomes a quiz/exam topic. If Tim's course gateway is used for in-class activities (§8), token use *can* be measured fairly there, e.g., an in-class challenge with a fixed token budget.

**Not included:** an attendance grade (the weekly quizzes already bring people to class) and oral walkthroughs.

## 8. AI access and cost

- **Default:** students bring a ~$20/month subscription (Claude Pro or ChatGPT Plus), framed as "the textbook." Other tools are allowed.
- **Equity:** a no-questions-asked subsidized account for any student who asks. This needs a small **AI equity budget** from the department or school, which Tim will request. It must be in place before the course goes in the bulletin.
- **Course gateway (Tim):** per-student virtual API keys with budgets, rate limits, and logging. Use it for **in-class activities and the B11/flex API work**, so everyone uses the same models and token use is comparable. Possible backends: Anthropic API, NRP.ai (untested), or a GW Research IT inference service if that happens.
- **Requirement:** setup must be a single step. JP's warning: "we're gonna spend the whole class just debugging setups." Test the gateway setup with a few 1012 students in spring 2027.

## 9. Scaling and staffing

- **Target size:** 50-100 per section; a second section if SEAS demand crowds out non-SEAS students. Consider **reserving seats** for non-SEAS students in the first offering.
- **TAs:** model on CSCI 1012 (2 GTAs + 4 UTAs for ~140). UTAs run studio check-ins and setup help. GTAs handle project grading and quiz edge cases.
- **Instructors:**
  - Fall 2027: JP (EMSE number).
  - CS options: Tim, Adam, or the new professor of practice.
  - Michael Rossetti as a possible adjunct.
- **Hand-off:** keep all materials in the public Quarto repo. The course should run from the repo plus a short instructor guide (setup, grading skills, the quiz bank).

## 10. Decisions needed (Tim + JP + Erica)

1. **Course level and numbers.** JP described it as a course for "earlier students," but the draft uses EMSE 4197 (a special-topics number). The micro-minor README assumed a ~1013-level CS number. Pick a level both departments can list as equivalent.
2. **Prerequisite.** CSCI 1012 or any SEAS intro programming course matching the micro-minor list
3. **Teams or solo projects** for the final project.
4. **Which flex module** to start with.
5. **Team proposal timing.** Teams form at M6 (Sep 29) and the proposal is due M8 (Oct 13). Is that enough time?
6. **Seat reservations** for SEAS vs non-SEAS students.

## 11. Timeline

| When | What | Who |
|---|---|---|
| Now – mid Dec 2026 | Turn §4–§7 into the GW course-proposal format: outcomes, short description, rough schedule | Tim |
| Mid Dec 2026 | Revamp the site to this plan (see §12) | JP |
| Dec 2026 | Settle numbers/level/prereq; ask Caitlin to list the course in the Technology, AI & Policy minor | Tim, JP, Erica |
| **Mid Jan 2027** | **Submit CS + EMSE course proposals with the equivalency** | Tim, JP |
| Spring 2027 | Request the AI equity budget and TA lines; pilot the gateway with 1012 students; test NRP.ai | Tim |
| Spring – summer 2027 | Write the decks, build briefs, quiz bank, and grading skills (log checker, OCR quiz grader) | JP (+ Tim for the flex module) |
| Fall 2027 | First offering | JP |

## 12. Site changes (for when JP revamps)

Follow `CLAUDE.md`: no rendering, no git. JP renders and commits.

1. **Pointers:**
   - Add this file to "Source of truth" in `CLAUDE.md`.
   - Note in `planned-updates.md` that it now describes the advanced course.
2. **Identity:**
   - Title "Build with AI" (no subtitle) in `_variables.yml`, `_quarto.yml`, `index.qmd`, `README.md`, `DESCRIPTION`.
   - The number is pending decision 1.
3. **Fragments:**
   - `learning-objectives.qmd` → §4.
   - `description.qmd` → a rewrite around outputs.
   - `prerequisites.qmd` → soften "very difficult" to a statement of what students need: reading code, following logic, spotting errors.
4. `schedule.csv`**:** replace it with the draft below. The columns are unchanged, and `theme` now holds the workflow concept.
5. `class/` **and** `hw/` **stubs:** rename to match the CSV. All are still placeholders, so this is safe. Update the `_quarto.yml` render-exclusion list and the Builds sidebar.
6. `syllabus.qmd`**:**
   - Grading table from §7.
   - Quizzes and final exam added to the AI policy as AI-free.
   - Build card description.
   - Access/equity text from §8.
7. `project/`**:**
   - Pages become proposal / check-in / final (artifact + video + workflow README).
   - Remove the separate interim-report and presentation pages.
8. `fragments/hw.qmd`**:**
   - Weight line: "11 builds, lowest dropped, completion-graded, 25% total."
   - Add the build card to the deliverables.

```csv
week,date,theme,n_class,stub_class,name_class,description_class,n_assign,name_assign,stub_assign,due_assign,n_project,stub_project,name_project,due_project
1,2027/08/25,Version control,1,web-by-hand,"A Page on the Web, by Hand","Setup; Markdown; Git and GitHub without an agent; GitHub Pages",1,,hello-web,2027/09/01,,,,
2,2027/09/01,Model literacy,2,how-llms-work,How LLMs Work (and Fail),"Tokens, sampling, context, hallucination, sycophancy; tokens as cost and energy",2,,probe-the-model,2027/09/08,,,,
3,2027/09/08,The agent loop,3,websites,Your Website,"Agents and harnesses; commit, agent, diff, keep or reject; HTML and CSS vocabulary",3,,personal-website,2027/09/15,,,,
4,2027/09/15,Context & skills,4,writing,Writing in Your Own Voice,"Context from your own writing; a voice skill; agent as editor, not author",4,,voice-skill,2027/09/22,,,,
5,2027/09/22,Context at scale,5,research,The Research Brief,"Markdown over PDF, context rot, fresh sessions; citation audits",5,,briefing-book,2027/09/29,,,,
6,2027/09/29,Specs & memory,6,interactive-tools,Small Interactive Tools,"Plan mode; specs with guardrails; AGENTS.md; teams form",6,,app-from-spec,2027/10/06,,,,
7,2027/10/06,Verification,7,data-analysis,The Data Report,"polars and plotnine in Quarto; check the numbers, not just the plots",7,,data-report,2027/10/13,,,,
8,2027/10/13,Review agents,8,data-story,The Data Story,"Charts for an audience; review skills and a house style",8,,data-story,2027/10/20,1,proposal,Proposal,2027/10/13
9,2027/10/20,Pipelines,9,images,Images & Visual Media,"Chaining tools; consistent image generation; provenance and copyright; studio begins",9,,image-pipeline,2027/10/27,,,,
10,2027/10/27,Composing skills,10,presentations-video,Presentations & Video,"Slides and scripted video; accessibility as verification",10,,explainer-video,2027/11/03,,,,
11,2027/11/03,Automation & efficiency,11,automation,Automate Something Boring,"Model choice, cost, and a tiny eval; optional LLM-from-Python",11,,boring-task-helper,2027/11/10,,,,
12,2027/11/10,Flex,12,flex,Flex Module,"Instructor's choice: build your own agent, AI security, MCP, team workflows, or with/without AI",,,,,2,check-in,Project Check-in,2027/11/10
13,2027/11/17,Project,,,Project Studio,"Team work; instructor and TAs circulate",,,,,,,,
14,2027/11/24,,,,Thanksgiving — no class,,,,,,,,,
15,2027/12/01,Project,,,Studio & Showcase Prep,"Last class meeting",,,,,3,final,Final Project,2027/12/01
16,2027/12/10,Exam,,,Final Exam,"Handwritten final exam during the exam slot (date TBD); optional showcase",,,,,,,,
```
