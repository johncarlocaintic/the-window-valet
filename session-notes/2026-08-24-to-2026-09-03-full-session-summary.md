# The Window Valet — Full Session Summary (2026-08-24 through 2026-09-03)

Covers the full arc of this multi-day working session, from the original ad-lead complaint through the workflow audit and today's live bug fixes. The two other files in this folder (`2026-09-02-engagement-status.md` and `2026-09-03-workflow-audit-critical-findings.md`) go deeper on the last two days specifically; this file is the complete picture including everything earlier that wasn't logged elsewhere.

## How the session started: the ad-lead pipeline complaint

Josh relayed an urgent report from Cody (Shade Strategy): Google/Facebook ad leads were creating a contact in GHL but never reaching the sales pipeline. Investigation got sidetracked briefly by an unrelated but real finding, "01. New Lead Opt in Workflow" (handling a website Strategy form) was sitting in **Draft** despite being wired up to fire, meaning those form leads were creating a contact but never getting an opportunity or Kelli's notification. Fixed by publishing it.

The actual ad-lead root cause was found separately: a **disconnected automation in the Google Ads webhook chain** that had never been activated, not a webhook validation bug as first suspected. Facebook's side was checked and had no errors. User activated the missing automation and confirmed it resolved the flow.

## Building the Reply/Response and Communication system

Josh asked for a full audit of GHL's communication and notification setup after Renee (newly the dedicated Lead Specialist) and Erica raised concern that customer text replies were sometimes going unnoticed. Findings:
- Opening a conversation does **not** mark it read in GHL by design (confirmed directly by GHL support after we initially suspected a bug), only replying or manually clicking Mark as Read does.
- The Team Inbox had ~700 unread conversations account-wide, but filtered to "Assigned to Renee" it was a manageable ~28, so a saved filtered view solved her visibility problem.
- Notification settings were In-App only for most categories; added SMS as a backup specifically on "new message where I'm the owner."

Built as a result:
- **"7. Customer Reply Response & Escalation"** — fires on customer SMS reply, waits 15 min, creates a task + pings the owner, waits another 15 min, escalates to Main Office/Renee/Kelli (the existing 3-way broadcast group) if still untouched.
- **"7.1 Reply Task Completed, Exit"** — companion workflow; task marked complete (by anyone but Renee) removes the contact from the escalation chain and marks the conversation read.
- **Self-Booked Appointment Confirmation** — keys off the native "Is running as guest" field (confirmed via testing, not the Source field, which isn't exposed as a condition) to detect self-booked vs. staff-booked appointments; creates a confirmation task, escalates via internal SMS if unconfirmed after 2 hours.
- SLA settings turned on in GHL's native Conversations Analytics, tuned to a 15-min "Due Soon" / matching-our-standard target, dismiss-permission restricted to Admins only (so the SLA can't be silently cleared without a real reply, same design principle as everything else here).
- Call recording turned on natively (not Fathom, that direction was reversed) for all 5 relevant accounts, transcription confirmed enabled.
- LeadConnector mobile app confirmed installed for Renee, Erica, and Justin.

A full PDF audit ("Window_Valet_Reply_Gap_Proposal.pdf" / the "Closing the Reply Gap" report) was delivered covering all of this plus a daily operating procedure for the team.

## The "1. New Lead" existing-customer bug (major incident)

Josh flagged, with screenshots, that existing customers, one asking about an install, one about an already-booked appointment, were being treated as brand-new leads: new Opportunity created, Renee alerted, welcome messages sent. Root cause: **"1. New Lead" had no check for whether the contact was already an existing customer** before running its full onboarding sequence. Confirmed via execution logs on two real contacts (Pat Mccauley, Jean Bart), both existing customers with open Sales Pipeline appointments who'd re-triggered the workflow by touching a lead-gen form again.

Fix: added a Condition at the very top of "1. New Lead" — existing-customer tags (`qbo customers`, `myblindco import`) OR ever having been active in "1. Appointment Booked" — routes to an immediate exit instead of the full new-lead sequence. Also hardened **Drip/Nurture** with a "Booked?" check before every single email step (not just once), since a contact could convert mid-sequence.

Follow-up cleanup: scanned the whole Lead Pipeline via the GHL API and found **79 contacts with duplicate opportunities** sitting in the same pipeline (mostly Lead Pipeline and Sales Pipeline, some in the legacy Lead Flow Pipeline), including a few "won + open" pairs that would have double-counted revenue. User reviewed and cleaned these up manually.

## Pipeline audit and revenue-leak fixes

Pulled full opportunity data directly from the GHL API across all 5 pipelines. Key findings:
- **Proposal Sent**: 29 opportunities, 28 stuck untouched >30 days (oldest 97 days). Fixed by adding a 3-touch SMS follow-up (day 3/7/14) plus an escalation task to the deal owner, with a sold/not-sold check before every step, and a "Proposal Decided, Exit" companion workflow.
- **Cancellation/No-Show recovery**: neither had any re-engagement automation before, just a native notification. Built "8. Cancelled Appointment" and "No-Show Recovery" with the same 3-touch SMS cadence plus a follow-up task, and a "Recovery Rebooked, Exit" companion.
- **Two legacy pipelines** (Customer Order Flow Pipeline, Lead Flow Pipeline) confirmed still holding real data: ~148 records marked "open" despite 125-176 days of no activity, plus a smaller set of already-closed deals safe to archive as history. Recommendation sent to Josh: migrate/verify anything legitimate, preserve closed deals for history, archive once clean, spot-check pending.
- **Marketing attribution** audit came back clean: 45 of 45 sampled Sold opportunities had a traceable source tag; no sign of the "1. New Lead" bug having mislabeled any closed deals.

## The Customer Journey & Cross-System Integration project (new top priority, 2026-08-29)

Josh elevated this to one of the most important projects: follow a customer from lead through financial result across **GHL** (front end/CRM), **MyBlindCo** (post-sale: quotes, orders, installs), **QuickBooks** (financials), and **Mapsly** (geographic intelligence). Explicit ask: map first, build later, staged approach — not a full build in Week 3-4.

Research/findings:
- **QuickBooks ↔ GHL**: native integration exists, confirmed **not yet connected** in this account.
- **Mapsly ↔ GHL**: native, bi-directional, real-time HighLevel connector exists. Confirmed the account already has an **active Enterprise plan, 3 seats, $210/mo**, with usage very low (96 of 2,400 routing credits, 0 AI credits/transcription), real paid capacity sitting mostly unused.
- **MyBlindCo ↔ GHL**: emailed MyBlindCo directly; Audra McGrath (COO) confirmed a **direct API integration is available independent of "my5starz"** (a MyBlindCo-managed GHL environment Josh explicitly declined, Window Valet keeps its own independently-built GHL account). Syncs contact, appointment, contact-status, and order-status data. Monthly fee applies, amount and Zoom demo still pending as of this write-up.
- Found a **second, disabled webhook step** inside "My Blind Co, GHL Erica" pointing at MyBlindCo's own Appointment API — asked Josh about it, confirmed disabled intentionally because it was a duplicate, no action needed.

**Important design constraint from Josh:** a previous team's two-way GHL↔MyBlindCo scheduling sync was shut down due to double-booking (a cancellation on one side wouldn't reliably cancel the other). That's why sales appointments (GHL) and installs (MyBlindCo) are deliberately kept on separate calendars today. Going forward, any cross-system scheduling intelligence must be **read-only**, no calendar writes crossing between GHL and MyBlindCo, ever.

Two roadmap PDFs were produced and are kept updated in place as findings land: `Week3-4_Not_Started_Roadmap.pdf` (Workflow Cleanup & Documentation, this integration project, Scheduling/Mapsly) and `Week7-8_Not_Started_Roadmap.pdf` (Partner System, blocked on tag standardization; AI & Advanced Automation, not started, plan confirmed to already include most AI features).

## Workflow Cleanup & Documentation audit (2026-09-02/03)

Full inventory: 85 workflows, 41 published, 44 Draft, 43 sitting in a single "6. Inactive Automations" folder that turns out to be a near-complete second copy of the account (see the dedicated `2026-09-03-workflow-audit-critical-findings.md` for the full detail). Findings acted on same-day:
- **Confirmed live duplicate**: "8. Cancelled Appointment" vs. "Appointment Cancellation Workflow", both Published, both firing on the same cancellation event with diverged builds. **Resolved 2026-09-03.**
- **Parallel new-lead path**: "01. New Lead Opt in Workflow" (the same one fixed back at the start of this session) turned out to share the *same trigger* as "1. New Lead" and was also fed directly by both Google Ads workflows, meaning it could run its own sequence on the same lead independent of the fix already made. **Resolved 2026-09-03**: drafted "01. New Lead Opt in Workflow," repointed both Google Ads workflows to enroll into "1. New Lead" instead.
- **MyBlindCo webhook failures**: GHL's own Needs Review list flagged two contacts. Brett Driscoll turned out to be a normal dedup-check skip, not a real failure. Nicholas Carey was real: "Required Fields Missing [Customer email needed]" despite the contact having an email on file, meaning the webhook's field mapping (not missing data) was the actual bug. **Resolved 2026-09-03**: fixed the email field mapping and resent his sync.

Still open from the audit: several Josh-decision items (consolidate "My Blind Co, GHL Erica/Justin" into one shared workflow vs. keep two per-salesperson copies; confirm whether "Lead Flow Pipeline" is still a real pipeline object; account for two Draft workflows with real active contacts inside them before touching them), and continuing the plain-English description pass (34 of 85 done).

## Open items as of 2026-09-03

- Waiting on Audra/MyBlindCo for integration pricing + Zoom demo
- Connect QuickBooks natively (confirmed not yet done)
- Spot-check the ~148 "open" legacy-pipeline records before archiving
- Draft the tag standardization proposal for Josh's sign-off (blocks Week 7's partner nurture campaign)
- Continue the Workflow Cleanup & Documentation pass (consolidation/archiving decisions need Josh's input)

## Cross-session pointer

This repository (`johncarlocaintic/the-window-valet`) is a separate, client-scoped mirror of this work. The user's own local memory system and `johnjosephperez05-cmd/the-brain` repo (folder `Window Valet/`) also carry overlapping session logs; if the two ever disagree, trust whichever is dated more recently.
