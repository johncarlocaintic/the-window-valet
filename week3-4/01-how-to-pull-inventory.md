# Item 1, Step 1-2: Pull the workflow inventory

Login: https://app.gohighlevel.com/ — admin@thewindowvalet.com
Navigate: sub-account -> Automation -> Workflows

## What to capture
For EVERY workflow in the list (don't filter, don't skip the ones that look obvious):

1. Exact workflow name
2. Status — Published / Draft
3. Last updated date
4. Folder it sits in, if the account uses folders

The list view shows all four without opening anything. Fastest capture is to
set the list to show all workflows, then paste the whole list back to me as text.
I'll do the sorting, categorising, and the plain-English write-ups from there.

## Step 2 — flag anomalies while you're in there
Mark anything that hits one of these:

- Status is **Draft** but it looks like it should be running
- **Last updated months ago** and nobody remembers what it does
- **Two workflows with near-identical names** (the duplicate/overlap problem)

### Already known from the Week 3-4 audit — confirm current state of each
- [ ] A workflow silently sitting in **Draft** that should be live — confirm which one, and whether it's still Draft
- [ ] A workflow with **no exclusion for existing customers** — confirm which
- [ ] **Two appointment reminder emails disagreeing** on what type of appointment it is — find both, note exact wording of each
- [ ] **"My Blind Co, GHL Erica/Justin"** — live, pushes via webhook, confirmed NOT sending SMS (this one feeds item 2, don't change it yet)

## What happens next
Once I have the raw list, I fill in `02-workflow-inventory.csv` and draft
`03-workflow-documentation.md`. Steps 5-6 (fix overlaps, archive dead ones)
only happen after Josh sees the inventory and confirms what's genuinely obsolete.

## DONE 2026-09-02 — see audit output
Full inventory pulled (83 workflows, 6 folders). Findings written up in
`../docs/2026-09-02_audit_week3-4-workflow-inventory.html` (+ matching PDF)
and folded into the client memory. Headline: bigger than the four known
anomalies — a large legacy shadow-copy of the account sitting in Draft with
several exact-name duplicates, two Draft workflows with live contacts still
stuck inside, and the Customer Order Flow Pipeline (relevant to Item 2) is
entirely dormant. Full row-by-row detail lives in `02-workflow-inventory.csv`.

Still outstanding before steps 5-6 can start:
- [x] ~~Check the "Needs review (2)" tab in GHL's workflow list~~ — DONE 2026-09-04: both flagged workflows already exist in the inventory (not new), but both have unresolved errors in the past 30 days - "My Blind Co - GHL Erica" (failed webhook calls) and "(Partners) Workflow: Send Partner Objects to Mapsly" (3 failed sends). **Step 1 is now fully closed** - inventory is complete at 85 workflows, and both outstanding gaps (Needs Review tab, page 2 of Inactive Automations) are resolved.
- [x] ~~Pull page 2 of the top-level "6. Inactive Automations" folder list~~ — DONE 2026-09-03: found 2 more workflows ("Temporary form automation," "Update Opportunity to Appointment Scheduled & Update Opportunity Owner"), both Draft. Total inventory now 85, not 83.
- [ ] Open "New Lead" to check its trigger/exclusion conditions (existing-customer exclusion item)
- [ ] Open "1. Appointment Booked" and "02. Appointment Booked Workflow" (Draft) to compare reminder-email wording
- [ ] Open "8. Cancelled Appointment" and "Appointment Cancellation Workflow" (both live, same folder) to check for overlap
- [ ] Josh's decision needed on: "My Blind Co - GHL Justin" (republish or retire), "(Partners) Write Partner Details to Opportunity" (Draft with 24 historical enrollments), and what to do with the 19 + 2 contacts stuck in Draft workflows

## CORRECTION 2026-09-03 — step 2 wasn't fully done the first time
Re-checked step 2 ("anything untouched for months... gets checked") literally
against the inventory and found it had only been applied to the Draft/legacy
side. 6 live, Published, actively-enrolling workflows are 3-6 months untouched
and had not been flagged: Trigger Partner Data Sync (185 days), (Partners) Map
Partner Data to Contact (184 days), and all four Partner Communications
workflows (102 days each). Added to the CSV and the audit PDF as a new section
3. Add to the checklist above:
- [ ] Open each of those 6 and confirm the trigger/steps still fire as intended
