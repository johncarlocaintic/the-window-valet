# Item 2: Customer Journey & Cross-System Integration
Renamed/expanded from "MyBlindCo Integration Architecture" — elevated to top priority
by Josh on 2026-08-29. Now spans GHL, MyBlindCo, QuickBooks, and Mapsly. Goal: follow
a customer from original lead through completed sale to the actual financial result.
Approached in stages, not built all at once.

## System ownership (today)
| System | Owns |
|---|---|
| GHL | Leads, source/attribution, communication, sales appointments, salesperson assignment, pipeline, cancellations/no-shows, marketing automation |
| MyBlindCo | Everything post-sales-appointment: quotes, products, measurements, pricing, orders, jobs, installation scheduling/calendar (separate from GHL's sales calendar) |
| QuickBooks | Financial accounting: revenue, payments, expenses, financial result per job |
| Mapsly | Geographic intelligence: ZIP codes, revenue/profit clusters, partner/marketing opportunities |

## Research already completed
1. **QuickBooks <-> GHL — solved.** Native integration (Settings -> Integrations -> QB Connect). Configuration task, not development.
2. **Mapsly <-> GHL — solved.** Native, bi-directional, real-time connector built specifically for HighLevel (pulls GHL data onto map, pushes edits back, route optimization by drive time, territory assignment). Configure, don't build. Directly covers item 3's scheduling-intelligence goal.
3. **MyBlindCo <-> GHL — the genuinely custom piece.** No public API or Zapier integration. Existing "My Blind Co, GHL Erica/Justin" workflow is a one-way custom webhook, confirmed not sending SMS. This is the one unsolved connection — matches Josh's own instinct it's the right starting point.

## Week 3-4 deliverables (mapping, NOT building yet)
1. Document the full customer journey: Lead -> GHL contact -> GHL opportunity -> sales appointment -> salesperson -> MyBlindCo customer -> quote -> order -> installation -> QuickBooks transaction/payment.
2. Determine reliable cross-system customer matching (customer ID, email, phone, job #, opportunity ID, quote #, order #) — no duplicates/mismatches.
3. Determine what data is actually accessible per platform (GHL: well understood; MyBlindCo: needs direct confirmation with MyBlindCo or Josh; QuickBooks: native, confirmed; Mapsly: native, confirmed).
4. Build a proposed data map: GHL Lead Source -> GHL Appointment -> Salesperson -> MyBlindCo Quote -> Order -> Installation -> QuickBooks Revenue -> Gross Profit.
5. Identify the minimum viable integration — Josh's own assumption, shared by us: GHL opportunity -> MyBlindCo quote/order FIRST, before adding QuickBooks financials.
6. Begin designing the reporting structure (not the dashboard): lead source, salesperson, appointments, quotes, sales, closing %, average sale, revenue, gross profit, gross profit %, ZIP code, product type, install status.
7. **Factor scheduling into the design — READ-ONLY, never a two-way write.** Sales appointments live in GHL, installations live in MyBlindCo, and that split stays. No calendar sync between them. Long term, build intelligence across both (geography, drive time, existing appointments, salesperson/installer availability, job duration, workload) surfaced as *suggestions*, never automated writes back into either calendar. Native Mapsly connector does the heavy lifting here.
8. Sequence Mapsly AFTER the data foundation: once GHL+MyBlindCo data is connected, use Mapsly to surface strongest ZIPs, revenue/profit areas, clusters, partner opportunities.

> **HARD CONSTRAINT — do not propose two-way GHL<->MyBlindCo calendar sync.** Per Josh (2026-08-29): a two-way scheduling sync between GHL and MyBlindCo existed once before under a previous team and was shut down. Failure mode: double bookings, and a cancellation on one side wouldn't reliably cancel on the other, leaving stale appointments and confusing everyone. Splitting sales appointments (GHL) from installs (MyBlindCo) was a deliberate, hard-won decision — not an oversight to "fix." Deliverable 7's read-only design is specifically meant to capture the scheduling-efficiency benefit without recreating that failure.

## Still needed before the current-state map can be finished
- [ ] Confirm whether native QuickBooks integration is already connected in this account, or needs setup
- [ ] Confirm with MyBlindCo directly what API/export/webhook-receiving capability exists on their end
- [ ] Pull the exact fields the existing MyBlindCo webhook sends today
- [x] ~~Confirm whether a Mapsly subscription is already active, or this is a fresh signup~~ — **CONFIRMED 2026-09-02:** active Enterprise plan, 3 seats, $210/month. Routing credit usage very low (96 of 2,400). AI credits and transcription minutes both unused — paid capacity sitting idle, ready to use once the HighLevel connector is actually set up (not yet confirmed connected — see checklist).

## Next step
Mapsly's account status is resolved (above) — that unlocks the next-level checklist for actually going into the Mapsly and MyBlindCo accounts, see [01-mapsly-myblindco-investigation-checklist.md](01-mapsly-myblindco-investigation-checklist.md). The remaining three "still needed" items above are unchanged.

## Proposal built 2026-09-06
The Week 3-4 mapping/proposal deliverable is now written up as a real client-facing document: `../../docs/2026-09-06_proposal_item2-customer-journey-integration.html/.pdf`. Covers the customer journey, cross-system matching, what each platform exposes, the proposed data map, the minimum viable integration order (fix the existing webhook's reliability first, then carry order/install status back into GHL, then add QuickBooks last), the reporting schema, the read-only scheduling-intelligence design, and Mapsly sequencing. Closes with the same "still open" list as above (MyBlindCo API/export/webhook access, my5starz, the webhook's known failures, the unconfirmed matching key, and the unexplained 27-stop Mapsly route). Nothing here has been built, this is the plan Josh needs to review before any of it starts.
