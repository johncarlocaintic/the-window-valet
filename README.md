# The Window Valet — client workspace

Separate direct client. Contact: Josh LeClair.

**This folder is intentionally OUTSIDE the `xadira-ops-master/` git repo.**
Nothing from this client goes into that repo, and nothing from that repo
(account names, credentials, workflow examples, EOD content) gets reused here.

## Stack
- GoHighLevel — main CRM/automation (app.gohighlevel.com)
- Mapsly — scheduling optimization; **confirmed active Enterprise plan, 3 seats, $210/mo** (routing credits 96/2,400 used, AI/transcription unused); native bi-directional HighLevel connector exists — configure, don't build (app.mapsly.com). Login as of 2026-09-02: marketing@thewindowvalet.com (was admin@ — that's now outdated)
- MyBlindCo — order/production system, the one system with no existing API/Zapier integration (ww1.myblindco.com). Login as of 2026-09-02: `twvjosh` (was admin@ — that's now outdated)
- QuickBooks — financials; **native GHL integration confirmed** (Settings -> Integrations -> QB Connect). New login surfaced 2026-09-02: admin@thewindowvalet.com at qbo.intuit.com

## HARD CONSTRAINT
**Never propose a two-way GHL<->MyBlindCo calendar/appointment sync.** A previous
team built one and it was shut down — double bookings, cancellations that didn't
propagate across systems. The GHL (sales) / MyBlindCo (install) calendar split is
deliberate. Any scheduling intelligence work (Mapsly included) must be read-only
suggestions, never automated writes back into either calendar.

## Roadmap state as of 2026-09-02 (Week 3-4 doc updated by Josh 2026-08-29)
Weeks 1-6 done or folded into the Week 3-4 doc. Open:

Week 3-4
1. Workflow Cleanup & Documentation  <- IN PROGRESS
2. **Customer Journey & Cross-System Integration** (renamed/expanded from "MyBlindCo Integration
   Architecture" — Josh elevated this to top priority on 2026-08-29; now spans GHL + MyBlindCo +
   QuickBooks + Mapsly, mapping only this phase, not building) — see `week3-4/item2-customer-journey/00-overview.md`
3. Scheduling / Mapsly Optimization — now overlaps item 2; Mapsly rollout held until item 2's
   data foundation lands, since Mapsly's native connector is confirmed and just needs configuring

Week 7-8
7. Partner System  — BLOCKED on Josh's sign-off on tag standardization
8. AI & Advanced Automation — discovery-first, nothing scoped
