# Item 2: Customer Journey & Cross-System Integration
Renamed/expanded from "MyBlindCo Integration Architecture" — elevated to top priority
by Josh on 2026-08-29. Spans GHL, the quoting/operations system, QuickBooks, and Mapsly.
Goal: follow a customer from original lead through completed sale to the actual
financial result. Approached in stages, not built all at once.

> **UPDATE 2026-09-07 — MyBlindCo is out, confirmed by Josh directly (via message).**
> Everything below that used to say "MyBlindCo" now refers to "the quoting/operations
> system" generically, since that's a role in the journey, not a specific vendor
> anymore. **Quoterite is the leading and currently only evaluated candidate to fill
> that role**, see `../03-quoterite-research.md` and `../../docs/2026-09-05_proposal_quoterite-evaluation.pdf`,
> but it is not yet 100% locked as final, that depends on Josh's 2026-09-08 demo with
> their owner going well (GHL connectivity, pricing, and API access all still need
> confirming). Treat "Quoterite" as the working assumption everywhere below, not a
> settled fact, until that demo confirms it.

## System ownership (today)
| System | Owns |
|---|---|
| GHL | Leads, source/attribution, communication, sales appointments, salesperson assignment, pipeline, cancellations/no-shows, marketing automation |
| Quoting/operations system (was MyBlindCo, likely becomes Quoterite) | Everything post-sales-appointment: quotes, products, measurements, pricing, orders, jobs, installation scheduling/calendar (separate from GHL's sales calendar) |
| QuickBooks | Financial accounting: revenue, payments, expenses, financial result per job |
| Mapsly | Geographic intelligence: ZIP codes, revenue/profit clusters, partner/marketing opportunities |

## Research already completed
1. **QuickBooks <-> GHL — solved.** Native integration (Settings -> Integrations -> QB Connect). Configuration task, not development. Setup is in progress, see `02-quickbooks-ghl-integration-setup.md`.
2. **Mapsly <-> GHL — solved.** Native, bi-directional, real-time connector built specifically for HighLevel (pulls GHL data onto map, pushes edits back, route optimization by drive time, territory assignment). Configure, don't build. Directly covers item 3's scheduling-intelligence goal.
3. **Quoting/operations system <-> GHL — the genuinely custom piece, now reset.** MyBlindCo's one-way custom webhook is being retired along with the vendor itself, not fixed. Whatever replaces it (Quoterite, most likely) needs its own connection built from scratch. Quoterite's own public research found no native GHL connector, no public Zapier app, and no public API docs, see `../03-quoterite-research.md`, so this is still the one unsolved connection, just against a different, not-yet-finalized target.

## Week 3-4 deliverables (mapping, NOT building yet)
1. Document the full customer journey: Lead -> GHL contact -> GHL opportunity -> sales appointment -> salesperson -> quoting system customer -> quote -> order -> installation -> QuickBooks transaction/payment.
2. Determine reliable cross-system customer matching (customer ID, email, phone, job #, opportunity ID, quote #, order #) — no duplicates/mismatches. Proposed working key: email + phone, pending confirmation against the actual replacement system's record structure.
3. Determine what data is actually accessible per platform (GHL: well understood; the quoting/operations system: unresolved until the replacement is finalized; QuickBooks: native, confirmed; Mapsly: native, confirmed).
4. Build a proposed data map: GHL Lead Source -> GHL Appointment -> Salesperson -> Quote -> Order -> Installation -> QuickBooks Revenue -> Gross Profit.
5. Identify the minimum viable integration — Josh's own assumption, shared by us: GHL opportunity -> quoting system's quote/order FIRST, before adding QuickBooks financials. The specific build method depends entirely on what the replacement system supports once chosen.
6. Begin designing the reporting structure (not the dashboard): lead source, salesperson, appointments, quotes, sales, closing %, average sale, revenue, gross profit, gross profit %, ZIP code, product type, install status.
7. **Factor scheduling into the design — READ-ONLY, never a two-way write.** Sales appointments live in GHL, installations live in the quoting/operations system, and that split stays regardless of which vendor ends up there. No calendar sync between them. Long term, build intelligence across both (geography, drive time, existing appointments, salesperson/installer availability, job duration, workload) surfaced as *suggestions*, never automated writes back into either calendar. Native Mapsly connector does the heavy lifting here.
8. Sequence Mapsly AFTER the data foundation: once GHL and the quoting/operations system's data is connected, use Mapsly to surface strongest ZIPs, revenue/profit areas, clusters, partner opportunities.

> **HARD CONSTRAINT — do not propose two-way GHL<->operations-system calendar sync, whichever vendor that is.** Per Josh (2026-08-29): a two-way scheduling sync between GHL and MyBlindCo existed once before under a previous team and was shut down. Failure mode: double bookings, and a cancellation on one side wouldn't reliably cancel on the other, leaving stale appointments and confusing everyone. Splitting sales appointments (GHL) from installs was a deliberate, hard-won decision — not an oversight to "fix." That lesson carries forward to Quoterite or whatever else ends up in that role. Deliverable 7's read-only design is specifically meant to capture the scheduling-efficiency benefit without recreating that failure.

## Still needed before the current-state map can be finished
- [ ] Confirm the replacement system is actually finalized (Josh's 2026-09-08 Quoterite demo)
- [ ] Once finalized, confirm what API/export/webhook-receiving capability exists on the new system's end
- [ ] Once finalized, pull the exact fields the new system's connection would send
- [x] ~~Confirm whether native QuickBooks integration is already connected in this account, or needs setup~~ — **In progress:** tax agency mapping done, one blocker open (filing frequency/start date pending Josh), see `02-quickbooks-ghl-integration-setup.md`.
- [x] ~~Confirm whether a Mapsly subscription is already active, or this is a fresh signup~~ — **CONFIRMED 2026-09-02:** active Enterprise plan, 3 seats, $210/month. Routing credit usage very low (96 of 2,400). AI credits and transcription minutes both unused — paid capacity sitting idle, ready to use once the HighLevel connector is actually set up (not yet confirmed connected — see checklist).

## Next step
Wait on the 2026-09-08 Quoterite demo to (hopefully) lock in the replacement system, then re-run the MyBlindCo-shaped investigation checklist (`01-mapsly-myblindco-investigation-checklist.md`'s MyBlindCo half is now obsolete, a fresh version needs writing once the target system is confirmed) against whatever's actually chosen. The Mapsly half of that checklist is unaffected and still current.

## Proposal built 2026-09-06, revised 2026-09-07
The Week 3-4 mapping/proposal deliverable is written up as a real client-facing document: `../../docs/2026-09-06_proposal_item2-customer-journey-integration.html/.pdf`. Covers the customer journey, cross-system matching, what each platform exposes, the proposed data map, the minimum viable integration order, the reporting schema, the read-only scheduling-intelligence design, and Mapsly sequencing. Revised 2026-09-07 to drop MyBlindCo-specific investigation (my5starz, webhook field pulls, etc.) now that it's confirmed out, replaced with the one real open item: the replacement system itself isn't locked yet. Nothing here has been built, this is the plan Josh needs to review, and now specifically confirm a vendor for, before any of it starts.
