<!--
═══════════════════════════════════════════════════════════════════════
AGENTS.md TEMPLATE — how to localize this for a project
═══════════════════════════════════════════════════════════════════════
1. Copy to the repo root as AGENTS.md. Replace every {{PLACEHOLDER}},
   then delete all of these comment blocks.
2. Write it by hand. Auto-generated AGENTS.md files measurably hurt
   agent performance — they're full of generic advice the model already
   knows. Only include conventions specific to YOUR project that an
   agent couldn't discover or guess.
3. Keep it small (~60–120 lines filled in). The whole file is injected
   into context on every task; every line spends the agent's limited
   instruction budget. Delete any section that doesn't apply.
4. Commands first, prose second. Every command must be copy-pasteable
   and work exactly as written, flags included. Tools you name here get
   used dramatically more than tools you don't.
5. Pair every "don't" with a "do." Prohibitions alone make agents
   cautious and slow; a prohibition + alternative keeps them moving.
6. One short, real code snippet beats three paragraphs describing style.
7. Use progressive disclosure: keep long task-specific docs in separate
   files and just list them at the bottom with one-line descriptions.
8. Monorepos: shared rules in this root file, plus a nested AGENTS.md
   per package — agents read the file closest to the code being edited.
9. Compatibility: most agents read AGENTS.md natively; for tools that
   want their own filename (e.g. CLAUDE.md), symlink:
   ln -s AGENTS.md CLAUDE.md
10. Treat this file like code: update it in the PR whenever the process
    changes, and add a rule whenever an agent makes the same mistake
    twice. Stale instructions are worse than none.
Spec and examples: https://agents.md
═══════════════════════════════════════════════════════════════════════
-->

# {{PROJECT_NAME}}

{{One or two sentences: what this does, who consumes it, and the stack
with versions — e.g. "Spring Boot 3.5 / Java 21 REST API serving X."}}

## Setup

- Runtime: {{language + pinned version, e.g. "Java 21 (Temurin)"}}
- Package manager: {{e.g. "Maven via ./mvnw — never a global mvn"}}

```bash
{{install dependencies}}
{{bootstrap local config, e.g. cp .env.example .env}}
{{start local dependencies, e.g. docker compose up -d}}
```

## Everyday commands

<!-- Exact flags. A fast "single test" command matters most for
     iteration speed. Add file-scoped lint/test variants if you have
     them — agents use them to verify cheaply. -->

| Task        | Command |
|-------------|---------|
| Build       | `{{...}}` |
| Run locally | `{{...}}` |
| All tests   | `{{...}}` |
| Single test | `{{...}}` |
| Lint        | `{{...}}` |
| Auto-format | `{{...}}` |

## Definition of done

A change is complete only when:

1. `{{format/lint command}}` passes with no new warnings
2. `{{full test/verify command}}` passes
3. {{anything else CI enforces: type check, build, docs, changelog}}

## Code style

<!-- ONLY rules a linter/formatter can't enforce, or that differ from
     ecosystem defaults. State the "why" for anything surprising.
     5–8 bullets max, plus at most one real snippet from the codebase. -->

- {{Rule + why, e.g. "Constructor injection only — keeps classes
  testable without the framework."}}
- {{e.g. "No new usages of X — being removed under TICKET-123; use Y."}}
- {{...}}

```{{lang}}
{{3–10 line snippet from the real codebase showing the canonical
pattern for the thing agents most often get wrong here}}
```

## Where things live

<!-- Keep this light — agents can explore the tree themselves. Only
     list what's non-obvious or spans unexpected locations. Delete the
     section if the layout is self-explanatory. -->

- `{{path/}}` — {{what lives here and when to touch it}}
- `{{path/}}` — {{...}}

## Testing conventions

- Framework: {{e.g. "JUnit 5 + AssertJ + Mockito"}}
- {{Naming/location, e.g. "unit tests end in *Test, integration in *IT"}}
- {{Expectations for new code, e.g. "every new endpoint needs one
  integration test"}}
- {{Environment needs, e.g. "integration tests require Docker running"}}

## Git and PR conventions

- Branches: `{{pattern, e.g. feat/TICKET-123-short-description}}`
- Commits: {{e.g. "Conventional Commits — feat(scope): summary"}}
- PRs: {{title format + required description contents}}

## Boundaries

<!-- Hard limits beat vague cautions — but always pair the prohibition
     with the correct alternative. -->

Never:

- {{Don't ...}} — instead, {{do ...}}
- {{Don't ...}} — instead, {{do ...}}

Ask a human first:

- {{e.g. "Adding or upgrading dependencies"}}
- {{e.g. "Changing public API contracts, schemas, or published events"}}

## Gotchas

<!-- Tribal knowledge that wastes an agent's time. Delete if empty. -->

- {{e.g. "First test run is slow — Testcontainers pulls images."}}

## More docs

<!-- Progressive disclosure: point to longer docs instead of inlining
     them. The agent reads these only when relevant. -->

- `{{docs/some-topic.md}}` — {{one-line description of when to read it}}
