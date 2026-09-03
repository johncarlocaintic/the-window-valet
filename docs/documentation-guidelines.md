# The Window Valet — Documentation Guidelines

Every task gets documented. Source stays as `.html`, deliverable is the `.pdf`.

## Save location
`window-valet/docs/`

## Naming convention
`YYYY-MM-DD_<type>_<short-slug>.html`

Example: `2026-08-31_worklog_week3-4-workflow-inventory.html`

## Doc types

| Type | Slug | Use for |
|---|---|---|
| Work log | `worklog` | A task completed in a session — what was done, what was found, what's next |
| Roadmap | `roadmap` | Forward-looking step-by-step plan for an item not yet started |
| Workflow doc | `workflow` | A single GHL workflow: trigger, actions, notifications, exit |
| Integration doc | `integration` | Webhook/API connection between systems (MyBlindCo, Mapsly) |
| Audit | `audit` | Findings from reviewing existing setup |

## Required sections per doc
1. **What this covers** — one-paragraph intro box
2. **What was done** — numbered, plain English, each item stating the actual result
3. **What was found** — anomalies/issues, with current confirmed status
4. **Open / blocked** — what's outstanding and what it's waiting on
5. **Next step** — the single concrete next action

## Rules
- Written for Josh to read without technical background.
- Confirmed vs. assumed must be distinguishable. If something wasn't verified, say so.
- Failures and skipped steps get reported, not omitted.
- No AI/bot/automation-internals discussion in client-facing docs.
- Nothing from any other client ever appears in these docs.
- No em dashes anywhere in the document text (title, body, table cells). Use a comma, period, colon, or parentheses instead, whichever reads most naturally for that sentence. Em dashes read as an AI-generated tell to Josh.

## Build
```bash
./docs/build-pdf.sh docs/<filename>.html
```
