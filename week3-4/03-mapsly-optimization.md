# Item 3: Scheduling / Mapsly Optimization
Updated finding: Mapsly already has a native, bi-directional, real-time connector
built specifically for HighLevel. This is a real existing product to configure, not
a prototype to build from scratch. Simplifies this item and creates a direct
overlap with Item 2 — the full reporting/clustering rollout still waits on the
Quoterite data foundation landing, but Josh has now separately asked (2026-09-08)
to actively assess how to get more value out of Mapsly day to day, regardless of
that sequencing.

## Original checklist
1. Confirm account status — active Mapsly subscription already, or fresh signup? (same open question as item 2's "still needed" list)
2. Connect the native HighLevel integration — no custom build required.
3. Map today's process — how appointments are currently assigned/routed (likely availability-only, not location/drive time).
4. Hold full rollout until item 2's data foundation lands. Early routing/territory features can still be explored now; the reporting layer (best ZIPs, revenue/profit clusters) waits.
5. Run a small prototype once connected — route a handful of real upcoming appointments through Mapsly's optimization logic, compare to manual scheduling.
6. Document findings — measurable efficiency gain (drive time, appointments/day, fuel)? Use to make a go/no-go call before full rollout.

## Capability dive, 2026-09-08 (per Josh's direct request)
Josh confirmed the account is "most likely not even close to maximizing" what
Mapsly can do, and asked for an actual assessment, not just a status check.
Researched Mapsly's public documentation and their dedicated HighLevel
integration page/setup guide directly (no live login access here, so this is
what's technically possible per their own docs, cross-referenced against what
this account is confirmed already doing).

### How the connection actually works, confirmed via their own setup guide
This isn't an invisible background sync. The real mechanism is: a GHL workflow
with a "Contact created" (or similar) trigger, running a Custom Webhook action
that posts to Mapsly's API endpoint (`api.mapsly.com/v1/record?apikey=...&entity=<Type>`),
carrying whatever fields you map. This matches exactly what's already built in
this account: "(Partners) Workflow: Send Partner Objects to Mapsly" and
"(Partners) Workflow: Sync contacts to Mapsly" are that exact pattern, just for
Partner-tagged contacts. One real limitation: GHL has no "on delete" trigger,
so deleted records can't auto-sync as deleted on the Mapsly side.

### What's confirmed connected today
- Partner-tagged contacts and partner objects, via the two workflows above.
- Nothing else. Sales opportunities, appointments, and job/install data are not
  currently flowing to Mapsly at all, since no workflow exists yet to push them.

### What's available on this account's current plan but unused
- **Territory auto-assignment.** Requires Pro or Enterprise, this account is
  Enterprise, so it's already paid for. New records get auto-assigned to a
  drawn territory within 10-20 seconds of syncing, and that territory
  assignment can trigger a Mapsly workflow, including auto-assigning the
  record to a specific sales rep. This is the direct replacement for today's
  manual assignment to Erica or Justin.
- **Route optimization for sales appointments and installs**, multi-stop,
  multi-user, traffic-aware, with a calendar-based auto-populate option, not
  just the one-off 27-stop "Marketing" route already sitting in the account
  (still unexplained, worth checking directly).
- **Mobile field capture**: GPS-verified check-in/check-out via geofencing,
  plus photo, video, e-signature, and barcode capture from the mobile app.
  Directly useful for installation confirmation and measurement visits, a gap
  Item 2 already flagged since nothing on the GHL side currently confirms an
  install actually happened.
- **Heatmaps and demographic layers** (50,000+ US Census metrics available),
  the actual mechanism for the "best ZIPs, revenue/profit clusters" goal, but
  this needs real opportunity/revenue data flowing into Mapsly first, which
  isn't happening yet (see below).
- **Mapsly Analytics**, drag-and-drop dashboards with drill-down, a possible
  second option for Item 2's reporting-structure goal alongside building
  something in GHL directly, worth weighing once real data is flowing.

### What this actually requires to unlock
Everything above depends on opportunity/appointment data reaching Mapsly, and
none of it does yet. The concrete next build, in the same pattern as the two
existing Partner workflows: a new GHL workflow triggered on opportunity
create/update, with a Custom Webhook action posting to Mapsly's API with
`entity=Opportunities` (or whatever the correct object name turns out to be),
carrying address, assigned rep, and stage. Once that's flowing, territory
auto-assignment and route optimization become usable on real sales/install
data, not just partner records.

### Recommendation
Two things can happen now, independent of the Quoterite/GHL data-foundation
timeline: (1) build the one new workflow needed to push opportunity data to
Mapsly, the same pattern already proven with the Partner workflows, and (2)
turn on territory auto-assignment against that data once it's flowing, then
measure it against today's manual assignment before rolling it out fully.
The heatmap/analytics/revenue-clustering piece still genuinely waits, since
that needs real financial data too, which is still gated on the Quoterite
integration landing.
