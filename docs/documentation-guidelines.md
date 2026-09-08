# The Window Valet — Documentation Guidelines

Every task gets documented. Source stays as `.html`, deliverable is the `.pdf`.

## Save location
`window-valet/docs/`

## Naming convention
`<short-slug>.html` — just what the file is about, as short as possible. No
date prefix, no type prefix. Changed 2026-09-09; older files already named
with the date/type prefix stay as they are, don't rename them retroactively.

Examples: `mapsly-optimization.html`, `quoterite-evaluation.html`,
`workflow-audit.html`

## Doc types (still used to decide what a doc covers, just not in the filename anymore)

| Type | Use for |
|---|---|
| Work log | A task completed in a session — what was done, what was found, what's next |
| Roadmap | Forward-looking step-by-step plan for an item not yet started |
| Workflow doc | A single GHL workflow: trigger, actions, notifications, exit |
| Integration doc | Webhook/API connection between systems (Quoterite, Mapsly) |
| Audit | Findings from reviewing existing setup |

## Required sections per doc
Opens straight into numbered section 1, no unnumbered intro box (see rule
below). Beyond that, most docs cover: what was done, plain English, each
item stating the actual result; what was found, anomalies/issues with
current confirmed status; what's open or blocked, and what it's waiting on;
and a next step, the single concrete next action. Not every doc needs all
four, use what fits the content.

## Rules
- Written for Josh to read without technical background.
- Confirmed vs. assumed must be distinguishable. If something wasn't verified, say so.
- Failures and skipped steps get reported, not omitted.
- No AI/bot/automation-internals discussion in client-facing docs.
- Nothing from any other client ever appears in these docs.
- No em dashes anywhere in the document text (title, body, table cells). Use a comma, period, colon, or parentheses instead, whichever reads most naturally for that sentence. Em dashes read as an AI-generated tell to Josh.
- **Every document opens straight into numbered sections, no unnumbered intro callout box.** All real content lives in a numbered `h2` section (matching house style: dark bar, green numeral), starting at section 1. The `.note`/`.blocker` callout boxes are for a genuine aside or caveat *within* a section, never the document's opening framing device, an unnumbered lead-in box reads inconsistent with the rest of the document and looks unpolished, flagged directly by the user 2026-09-09.

## Build
```bash
./docs/build-pdf.sh docs/<filename>.html
```
