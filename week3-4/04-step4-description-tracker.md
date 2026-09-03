# Step 4 tracker: plain-English description per workflow

Per the roadmap's literal text: one paragraph per workflow (trigger, what it
does, who it notifies, how it exits). Following this exactly as written --
all 83 workflows currently in the account, no skipping the Draft/legacy ones
unless Josh confirms an archive decision first (see item 1 audit).

Send me each workflow's builder view (screenshot of the trigger + action
steps is enough) and I'll write the paragraph and check it off here.

UPDATE 2026-09-03: per user decision, all documentation lives in ONE combined
document, not split across files. Every workflow write-up goes directly into
`../docs/2026-09-02_audit_week3-4-workflow-inventory.html` (section 11, "Per-Workflow
Documentation"), rebuilt to PDF after each addition. `03-workflow-documentation.md`
was removed - this tracker is now just the checklist of what's done.


## 1. Lead Pipeline (New)
- [x] 1. New Lead (Published) — done 2026-09-03, see the audit doc section 8, "Per-Workflow Documentation"
- [x] 2. 1.1 New Lead Follow-Up Task Chain (Published) — done 2026-09-03, flagged 0-enrollment concern despite real logic
- [x] 3. 2. Attempting Contact (Published) — done 2026-09-03
- [x] 4. 3. Drip/Nurture (Published) — done 2026-09-03, the Week 7-8 reference pattern, fully traced
- [x] 5. 4. Unqualified (Published) — done 2026-09-06, fully confirmed, closes out this whole folder
- [x] 6. 5. Spam (Published) — done 2026-09-03
- [x] 7. 6. Future Appointments (Published) — done 2026-09-04, PARTIAL - trace cut off before notify/exit steps
- [x] 8. 7. Customer Reply Response and Escalation (Published) — done 2026-09-04, PARTIAL - trace cut off after the 30-min escalation text
- [x] 9. 7.1 Reply Task Completed, Exit (Published) — done 2026-09-05, exit companion to workflow 7

## 2. Sales Pipeline (New)
- [x] 10. 1. Appointment Booked (Published) — done 2026-09-05, sourced from its own in-canvas sticky note, found the likely root cause of the mismatched-reminder-emails item
- [x] 11. 2. Appointment Completed (Published) — done 2026-09-05, PARTIAL - trace cut off after the thank-you email
- [x] 12. 3. Proposal Sent (Published) — done 2026-09-05
- [x] 13. 4. Follow Up (Published) — done 2026-09-05, PARTIAL - trace cut off after internal notification
- [x] 14. 5. Sold (Published) — done 2026-09-05, PARTIAL - trace cut off after Add Tag: active client
- [x] 15. 6. Not sold (Published) — done 2026-09-05, from its own sticky note
- [x] 16. 7. Not Booked Workflow (Published) — done 2026-09-05, found it targets a mismatched pipeline object
- [x] 17. 8. Cancelled Appointment (Published) — done 2026-09-05, PARTIAL, confirmed real duplicate of Appointment Cancellation Workflow
- [x] 18. 9. No Show Recovery (Published) — done 2026-09-05, fully confirmed
- [x] 19. Appointment Cancellation Workflow (Published) — done 2026-09-05, fully confirmed, diverged duplicate of 8. Cancelled Appointment
- [x] 20. Self-Booked Appointment Confirmation (Published) — done 2026-09-05, PARTIAL

## 3. Lead Sources
- [x] 21. After Business Hours (Published) — done 2026-09-05, PARTIAL
- [x] 22. Auto Missed Call Text-Back (Published) — done 2026-09-05, PARTIAL
- [x] 23. Exterior Screens Facebook Lead Form (Published) — done 2026-09-05, confirms Not Booked Workflow enrollment path
- [x] 24. Google Ad (Exterior) to GHL (Published) — done 2026-09-05, confirms 01. New Lead Opt in Workflow is live-fed
- [x] 25. Google Ads (home page) to GHL (Published) — done 2026-09-05, 2nd confirmed feed source
- [x] 26. New Lead Landing Page (Published) — done 2026-09-05, PARTIAL
- [x] 27. Partner New Leads Opt-in (Published) — done 2026-09-05, PARTIAL, confirms Week 7-8 Drip-tag stopgap
- [x] 28. Phone Number Tracking (Published) — done 2026-09-05, from its own sticky note
- [x] 29. QR Code and Landing Pages Lead Tracker (Published) — done 2026-09-05, fully confirmed
- [x] 30. Version 3 Facebook Lead Form (Published) — done 2026-09-05, 3rd confirmed source into Not Booked Workflow

## 4. My Blind Co
- [x] 31. My Blind Co - GHL Erica (Published) — done 2026-09-05, from its own sticky note
- [x] 32. My Blind Co - GHL Justin (Draft) — done 2026-09-05, reframes the Draft-should-be-live fix as a consolidation decision

## 5. Partner Automations
- [x] 33. (Partners) Map Partner Data to Contact (Published) — done 2026-09-05, from its own sticky note
- [x] 34. (Partners) Write Partner Details to Opportunity (Draft) — done 2026-09-05, found likely logic bug (wrong Contact Type check)
- [x] 35. (Partners) Write Referral Email to Opportunity (Published) — done 2026-09-05, from its own sticky note
- [x] 36. Trigger Partner Data Sync (Published) — done 2026-09-05, from its own sticky note

## 5. Partner Automations/Mapsly
- [x] 37. (Partners) Workflow: Send Partner Objects to Mapsly (Published) — done 2026-09-05, from its own sticky note
- [x] 38. (Partners) Workflow: Sync contacts to Mapsly (Published) — done 2026-09-05, from its own sticky note

## 5. Partner Automations/Partner Communications
- [x] 39. (Partners) Installation Complete - Add Partner Contact to Workflow (Published) — done 2026-09-05, fully confirmed router workflow
- [x] 40. (Partners) Installation Complete - Send Communication (Published) — done 2026-09-05, PARTIAL, no trigger of its own
- [x] 41. (Partners) Lead Confirmation - Add Partner Contact to Workflow (Published) — done 2026-09-05, fully confirmed
- [x] 42. (Partners) Lead Confirmation - Send Communication (Published) — done 2026-09-05, fully confirmed, ends cleanly

## 6. Inactive Automations
- [x] 43. Appointment Confirmation Workflow (Draft) — done 2026-09-06, fully confirmed
- [x] 44. Form submission follow up workflow (Draft) — done 2026-09-06, clever hot/warm lead logic via cross-workflow check
- [x] 45. Internal: Opportunity Assignment Notification (Draft) — done 2026-09-06, PARTIAL
- [x] 46. Map closing date from opportunity to contact (Draft) — done 2026-09-06, PARTIAL
- [x] 47. Quote Follow Up Workflow (Draft) — done 2026-09-06, MAJOR: sophisticated 4-touch escalation to auto-close, but 2 real bugs (missing trigger filter, broken stage reference)
- [x] 48. Scouting report workflow (Draft) — done 2026-09-06, fully confirmed, only AI/GPT action in the account
- [x] 48a. Temporary form automation (Draft) — done 2026-09-06, fully confirmed, unfiltered catch-all stub
- [x] 48b. Update Opportunity to Appointment Scheduled & Update Opportunity Owner (Draft) — done 2026-09-06, PARTIAL, referenced by Form submission follow up workflow

## 6. Inactive Automations/Customer Order Flow Pipeline
- [x] 49. 01. Sold Workflow (Draft) — done 2026-09-05, fully confirmed
- [x] 50. 02. Deposit Received Workflow (Draft) — done 2026-09-05, PARTIAL
- [x] 51. 03. Ordered | In Production Workflow (Draft) — done 2026-09-05, fully confirmed
- [x] 52. 04. Production Complete Workflow (Draft) — done 2026-09-05, PARTIAL, introduces Brittany
- [x] 53. 05. Order Shipped Workflow (Draft) — done 2026-09-05, PARTIAL
- [x] 54. 06. Order Complete | Ready for Install (Draft) — done 2026-09-05, fully confirmed
- [x] 55. 07. Installation Scheduled Workflow (Draft) — done 2026-09-05, PARTIAL
- [x] 56. 08. Installation Complete + Google Review Request (Draft) — done 2026-09-05, fully confirmed, best-built workflow in the folder
- [x] 57. 09. Incomplete | Remake | Reorder Workflow (Draft) — done 2026-09-05, fully confirmed

## 6. Inactive Automations/Lead Flow Pipeline
- [x] 58. 01. New Lead Opt in Workflow (Published) — done 2026-09-05, PARTIAL, ancestor of 1. New Lead
- [x] 59. 02. Appointment Booked Workflow (Draft) — done 2026-09-05, MAJOR FIND: shares reminder-duplication pattern with 1. Appointment Booked, likely the mismatched-reminder-emails source
- [x] 60. 02. Appointment Booked Workflow - v19 - copy (Draft) — done 2026-09-05, fully confirmed, stray unused copy
- [x] 61. 04. No Show Workflow (Draft) — done 2026-09-05, PARTIAL
- [x] 62. 05. Measured/Pending Service Workflow (Draft) — done 2026-09-05, fully confirmed
- [x] 63. 06. Sold Workflow (Draft) — done 2026-09-05, fully confirmed
- [x] 64. 07. Not Sold Workflow (Draft) — done 2026-09-05, fully confirmed
- [x] 65. 08. Drip Campaign Workflow (Draft) — done 2026-09-05, PARTIAL, has 2 stuck active contacts, valuable email angles found
- [x] 66. Exterior Screens Facebook Lead Form Workflow (Draft) — done 2026-09-05, PARTIAL
- [x] 67. Google Ad (Exterior) to GHL (Draft) — done 2026-09-05, PARTIAL
- [x] 68. Google Ads (home page) to GHL (Draft) — done 2026-09-06, fully confirmed
- [x] 69. Version 3 Facebook Lead Form Workflow (Draft) — done 2026-09-06, found a real confirmed regression fixed in the current version (missing booked-check before Not Booked enrollment)

## 6. Inactive Automations/Lead Tracker Workflows
- [x] 70. After Business Hours Workflow (Draft) — done 2026-09-05, fully confirmed
- [x] 71. Auto Missed Call Text-Back (Draft) — done 2026-09-05, fully confirmed, assignee drift found (Kelli vs current Renee)
- [x] 72. Facebook Comments on a Post (Draft) — done 2026-09-05, fully confirmed
- [x] 73. GHL to Myblindco (Draft) — done 2026-09-05, fully confirmed, superseded experiment
- [x] 74. Leads from Landing Page (Disabled) (Draft) — done 2026-09-05, fully confirmed
- [x] 75. My Blind Co - GHL (Draft) — done 2026-09-05, CONFIRMED BROKEN (visible GHL error), not just unused
- [x] 76. Phone Number Tracking (Draft) — done 2026-09-05, from its own sticky note, resolves current version's open question
- [x] 77. Promotions and Discounts (Draft) — done 2026-09-05, fully confirmed
- [x] 78. QR Code and Landing Pages Lead Tracker (Draft) — done 2026-09-05, fully confirmed, matches current version

## 6. Inactive Automations/Sales Order Pipeline
- [x] 79. 01. Partially Sold Interior Workflow (Draft) — done 2026-09-06, PARTIAL
- [x] 80. 02. Partially Sold exterior Workflow (Draft) — done 2026-09-06, CONFIRMED copy-paste bug (wrong trigger link, wrong email)
- [x] 81. 03. Whole House Sold - Exterior Workflow (Draft) — done 2026-09-06, PARTIAL, properly built unlike 01/02
- [x] 82. 04. Whole House Sold - Both Workflow (Draft) — done 2026-09-06, PARTIAL, generic email placeholders
- [x] 83. 05. Whole House Sold - Interior Workflow (Draft) — done 2026-09-06, PARTIAL, same placeholder issue

CORRECTION: not all 85 are done. Actual count verified 2026-09-06: 74 of 85 checked, 11 remaining -
"4. Unqualified" (#5, still open since the very start), all 8 in the top-level "6. Inactive Automations"
folder (#43-48, plus the two page-2 finds #48a/48b), and 2 in Lead Flow Pipeline ("Google Ads (home page)
to GHL" #68, "Version 3 Facebook Lead Form Workflow" #69).

Total: 85 workflows