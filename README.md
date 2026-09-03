# The Window Valet

Dedicated repository for The Window Valet GHL engagement (client: Josh LeClair), scoped to this account only. This repo is shared across sessions and machines working this engagement; treat it as the durable, cross-machine copy of engagement history.

## Structure

This repo currently holds two parallel sets of engagement files, built by different sessions, kept side by side rather than merged into one taxonomy:

- `docs/` and `week3-4/` — the Week 3-4 "Item 1: Workflow Cleanup & Documentation" audit and its supporting files (the full 85-workflow inventory, per-workflow descriptions, the reference index CSV, and the audit PDF/HTML)
- `deliverables/` — client-facing PDF reports and roadmaps, current and historical
  - `deliverables/audit/` — earlier audit deliverables from the Week 1 stabilization phase (Aug 17-20), PDF + source HTML pairs
- `memory/` — durable project facts and decisions from the engagement, written by a prior session
- `session-notes/` — dated write-ups of engagement status and findings, for picking up context across sessions

Deliverables are also kept locally, on this machine at `C:\Users\Administrator\Desktop\The Window Valet\`, and on at least one other machine at `claude-code/the window valet/`; this repo is the shared copy both sync to. Consolidating the two folder structures into one convention is an open item, not yet decided.

## Stack
- GoHighLevel — main CRM/automation (app.gohighlevel.com)
- Mapsly — scheduling optimization; confirmed active Enterprise plan, 3 seats, $210/mo (routing credits 96/2,400 used, AI/transcription unused); native bi-directional HighLevel connector exists — configure, don't build (app.mapsly.com). Login as of 2026-09-02: marketing@thewindowvalet.com (was admin@ — that's now outdated)
- MyBlindCo — order/production system, the one system with no existing API/Zapier integration (ww1.myblindco.com). Login as of 2026-09-02: `twvjosh` (was admin@ — that's now outdated)
- QuickBooks — financials; native GHL integration confirmed (Settings -> Integrations -> QB Connect). New login surfaced 2026-09-02: admin@thewindowvalet.com at qbo.intuit.com

## HARD CONSTRAINT
**Never propose a two-way GHL<->MyBlindCo calendar/appointment sync.** A previous
team built one and it was shut down — double bookings, cancellations that didn't
propagate across systems. The GHL (sales) / MyBlindCo (install) calendar split is
deliberate. Any scheduling intelligence work (Mapsly included) must be read-only
suggestions, never automated writes back into either calendar.

## Roadmap state as of 2026-09-06 (Week 3-4 doc updated by Josh 2026-08-29)
Weeks 1-6 done or folded into the Week 3-4 doc. Open:

Week 3-4
1. Workflow Cleanup & Documentation — all 8 roadmap steps now have real content (see `docs/2026-09-02_audit_week3-4-workflow-inventory.pdf`); steps 5, 6, and 8 have decision-ready plans waiting on Josh's sign-off
2. **Customer Journey & Cross-System Integration** (renamed/expanded from "MyBlindCo Integration
   Architecture" — Josh elevated this to top priority on 2026-08-29; now spans GHL + MyBlindCo +
   QuickBooks + Mapsly, mapping only this phase, not building) — see `week3-4/item2-customer-journey/00-overview.md`
3. Scheduling / Mapsly Optimization — now overlaps item 2; Mapsly rollout held until item 2's
   data foundation lands, since Mapsly's native connector is confirmed and just needs configuring

Week 7-8
7. Partner System — BLOCKED on Josh's sign-off on tag standardization
8. AI & Advanced Automation — discovery-first, nothing scoped

See `session-notes/` for dated status write-ups from other sessions, and `memory/` for durable project facts and decisions captured outside this README.
