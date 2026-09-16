# Field Audit, Phase 1

Started 2026-09-15, per the CRM cleanup brief. Auditing every contact and
opportunity custom field currently in the account (38 contact fields, 12
opportunity fields, 50 total), pulled directly from the account via API,
cross-referenced against the confirmed workflow usage already documented
in `02-workflow-inventory.csv` and `05-reference-index.csv`. No field has
been touched yet, this is audit only, per the explicit rule not to modify
anything without confirming what it's connected to first.

## The two findings that matter most before anything else

**1. The account already has a real, structured lead-source field that
the automations aren't using.** "Opportunity Referral" (opportunity-level)
is a 32-option picklist covering every real source this business
actually has, including "Lennar Sticker," "Home Show," "HomeAdvisor,"
"Referral," "Previous Customer," and more. But the confirmed workflow
behavior (from the existing audit) shows lead-source workflows tag the
CONTACT with a raw tag ("google_ads_exterior," "google_ads_homepage,"
etc.) instead of populating this field. The field exists, it's rich and
well-designed, it's just not being written to. This is directly relevant
to every lead-source-tracking workflow already built or planned this
engagement, including the Lennar Window Cling campaign.

**2. Real duplication across both window-count and product-interest
fields.** Four separate fields track roughly the same "how many
windows/openings" concept, with inconsistent bucket boundaries between
them (one range even overlaps with itself, 4-6 and 6-10 both include 6).
Three separate fields ask essentially "what product are you interested
in," with different option sets. This is exactly the kind of confusion
the cleanup brief is meant to fix.

## Contact fields (38)

| Field | Action | Type | Req/Opt | Who sees it | Used in | Reason |
|---|---|---|---|---|---|---|
| ZIP Code | Keep | TEXT | Required | All | Intake forms, service area/routing | Core to scheduling and Mapsly territory logic |
| Message | Keep | LARGE_TEXT | Optional | All | Contact Us form | Standard freeform intake note |
| Would you like to book an appointment? | Keep | RADIO (Yes/No) | Required | All | Intake forms | Direct scheduling intent signal |
| Date of appointment | Keep, verify | DATE | Optional | All | Referenced but not fully traced | Confirm this isn't just duplicating GHL's native appointment/calendar object before keeping long term |
| How soon are you looking to have your window furnishings installed? | Keep | RADIO | Optional | All | Intake forms | Real, well-built timeline field, genuinely useful for prioritization |
| Which type of window furnishing are you looking for? | Consolidate | RADIO | Optional | All | Intake forms | Duplicate of "What type of window treatments are you interested in?" below, different option sets for the same question, pick one and retire the other |
| What type of window treatments are you interested in? | Consolidate | RADIO | Optional | All | Intake forms | Same duplication as above |
| Approximately how many openings need treatments? | Consolidate | MULTIPLE_OPTIONS | Optional | All | Intake forms | Overlapping bucket boundaries (4-6 and 6-10 both include 6), one of four window-count fields, needs consolidating |
| Number of Windows | Consolidate | NUMERICAL | Optional | All | Intake forms | One of four window-count fields |
| What is the size of your project? | Consolidate | RADIO | Optional | All | Intake forms | One of four window-count fields, worded differently but same underlying data |
| Lead Source | Retire or repurpose | TEXT (freeform) | Optional | Internal | Not confirmed written by any active workflow | Superseded by the opportunity-level "Opportunity Referral" structured field, freeform text isn't reportable the way a picklist is |
| Form Source | Keep | TEXT | Optional | Internal | Tracking/attribution | Distinct from Lead Source, appears to capture which specific form fired, keep pending confirmation |
| Landing Page | Keep | TEXT | Optional | Internal | UTM/tracking | Standard attribution field |
| utmSource / utmMedium / utmCampaign / utmContent / campaignId | Keep | TEXT | Optional | Internal | UTM/tracking, ad platform integrations | Standard attribution set, keep all five as-is |
| UTM_PARAMS | Retire | LARGE_TEXT | Optional | Internal | Confirmed unused | Checked all 5 workflows in the "3. Lead Sources" folder directly, none reference it. Raw catch-all blob duplicating the five individual UTM fields above, safe to retire |
| Neighborhood | Clarify with Josh | MULTIPLE_OPTIONS (Exclusive/Custom/Commercial) | Optional | Internal | Not confirmed | Options don't read as actual neighborhoods, more like a project tier, likely confused with "Class" below, needs direct clarification before deciding |
| Class | Clarify with Josh | SINGLE_OPTIONS (Semi-Custom/Custom/Luxury) | Optional | Internal | Not confirmed | Same overlap concern as Neighborhood above |
| budget_range | Keep, rename | TEXT | Optional | Internal | Intake | Inconsistent naming style (snake_case vs. the rest of the account's Title Case fields), keep the data but rename for consistency |
| How many stars would you rate our services? | Keep | RADIO | Optional | All | Review/feedback flow | Real, active review-collection field |
| How can we improve our services? | Keep | LARGE_TEXT | Optional | All | Review/feedback flow | Pairs with the star rating above |
| Anything else we should know? | Keep | LARGE_TEXT | Optional | All | Intake forms | Standard open-notes field |
| Scouting Report | Keep, verify workflow status | LARGE_TEXT | Optional | Internal | Written by "Scouting report workflow" (currently Draft) | The only AI-powered workflow in the account writes here, confirm whether that workflow should be reactivated before treating this field as live |
| MyBlindCo Lead ID | Keep | TEXT | Optional | Internal | MyBlindCo webhook sync workflows (confirmed) | Real integration field, actively used by "My Blind Co - GHL Erica/Justin" |
| My Blind Co Contact ID | Keep, clarify naming | TEXT | Optional | Internal | MyBlindCo webhook sync workflows (confirmed) | Two separately named MyBlindCo ID fields exist (this one and "MyBlindCo Lead ID"), confirm both are genuinely distinct IDs, not an accidental duplicate |
| MyBlindCo Appointment ID | Keep | TEXT | Optional | Internal | MyBlindCo integration | Real integration field |
| Closing Date (contact) | Keep, reactivate sync | DATE | Optional | Internal | Synced from opportunity via "Map closing date from opportunity to contact" (currently Draft/inactive) | The sync workflow that keeps this matched to the opportunity-level version is sitting inactive, reactivate it or this field will drift out of sync |
| Partner Referral Email | Keep | TEXT | Optional | Internal | "(Partners) Write Referral Email to Opportunity" (confirmed active) | Real, actively used partner-program field |
| Contact Partner Name | Clarify with Josh | TEXT | Optional | Internal | Partner program | Possible overlap with "Referral Partner" and "Partner Referral Contact" at the opportunity level, confirm the distinction is intentional |
| Partner Record ID | Keep | TEXT | Optional | Internal | Partner program | Internal reference ID |
| Partner Contact Title | Keep | SINGLE_OPTIONS | Optional | Internal | Partner program | Real field, used for partner segmentation |
| Contact Partner Status | Keep | SINGLE_OPTIONS (Active/Inactive/Potential Partner) | Optional | Internal | Partner program | Real field |
| Partner Days Available | Keep | MULTIPLE_OPTIONS | Optional | Internal | Partner program | Real scheduling field for partner outreach |

## Opportunity fields (12)

| Field | Action | Type | Req/Opt | Who sees it | Used in | Reason |
|---|---|---|---|---|---|---|
| Lost - Reason | Keep | SINGLE_OPTIONS | Optional | All | Pipeline management | Real, valuable for win/loss reporting |
| Building Type | Keep | SINGLE_OPTIONS (New Construction/Existing Home/Commercial) | Required | All | Pipeline, builder/partner tracking | Directly relevant to the Lennar builder relationship and similar partner accounts |
| Product Interest | Keep | MULTIPLE_OPTIONS | Optional | All | Pipeline | Keep at the opportunity level as the confirmed product line, separate from the contact-level intake fields once those are consolidated |
| Window Count | Consolidate | SINGLE_OPTIONS | Optional | All | Pipeline | One of the four window-count fields, this one is the most reasonable to keep as the confirmed opportunity-level figure once the contact-level duplicates are retired |
| Closing Date (opportunity) | Keep | DATE | Optional | All | Pipeline, synced to contact via the inactive workflow noted above | Reactivate the sync rather than retire either field |
| Opportunity Referral | Keep, start using | SINGLE_OPTIONS (32 options) | Should be required | All | Not currently populated by active workflows | The single most valuable field in the whole audit, a real structured lead-source picklist that already includes "Lennar Sticker." Recommend wiring lead-source workflows to populate this directly instead of relying on tags alone |
| TVA Deal Stage | Keep | SINGLE_OPTIONS (New deal/Unpaid/Paid/Delivered) | Optional | Internal | Partner/referral tracking | Confirmed not a duplicate, checked directly against all 5 pipelines' native stage names, none match. Tracks partner payment status, a different axis from pipeline stage |
| TVA Referral Value | Keep | MONETORY | Optional | Internal | Partner referral payout tracking | Real, used field |
| Referral Partner | Clarify with Josh | TEXT (freeform) | Optional | Internal | Partner program | Possible overlap with "Contact Partner Name" (contact) and "Partner Referral Contact" below |
| Partner Referral Contact | Clarify with Josh | TEXT | Optional | Internal | Partner program | Same overlap concern |
| Partner Referral Email | Keep | TEXT | Optional | Internal | "(Partners) Write Referral Email to Opportunity" (confirmed active) | Real, actively used, synced from the contact-level version |
| Gift Card Number | Keep | TEXT | Optional | Internal | Promotions | Real field, no overlap found |

## Fields that should be hidden from employees (Renee/Kelli)

These are backend or integration plumbing, not something staff need visible
during a live customer call: MyBlindCo Lead ID, My Blind Co Contact ID,
MyBlindCo Appointment ID, all five UTM fields, UTM_PARAMS, campaignId,
Partner Record ID, Form Source, Landing Page, Scouting Report, TVA Deal
Stage, TVA Referral Value. Recommend a separate field layout/view for
staff that excludes all of these, keeping only what they'd actually ask a
customer or need to reference live.

## Confirmed through live testing since this audit was first written

Rather than rely only on documentation, the forms and workflows behind
these fields were tested directly.

- "1. New Lead" is confirmed working correctly for both Strategy-Hero
  Lead Form and Strategy-Contact Us Form: a fresh test submission creates
  an opportunity, assigns an owner, applies tags, and sends an SMS.
- That same live test directly proves Finding #1 above: the resulting
  opportunity's custom fields came back completely empty, "Opportunity
  Referral" was not populated even though the workflow ran successfully.
- TVA Deal Stage is confirmed not a duplicate of the native pipeline
  stage (see the Opportunity Fields table above), no longer an open
  question.
- UTM_PARAMS is confirmed unused, checked all 5 workflows in the "3.
  Lead Sources" folder directly, none reference it. Safe to retire.
- Three other live forms (Consultation-Calendar, the "Website" form, and
  the Lennar Window Cling Form) are confirmed to have zero automation
  attached at all, no tag, no opportunity, no workflow. These sit outside
  this field cleanup and are logged separately in the open items list.

## What still needs direct confirmation before Phase 3 is final

- Confirm "Date of appointment" isn't a redundant shadow of the native
  appointment/calendar object. Currently blocked: a separate, confirmed
  bug in the live appointment booking calendar is preventing test
  bookings from completing, so this can't be tested until that's fixed
  (logged separately, not part of this field cleanup).
- Get Josh's read on Neighborhood vs. Class, what each is actually meant
  to capture
- Get Josh's read on the three partner-name-ish fields (Contact Partner
  Name, Referral Partner, Partner Referral Contact), confirm the intended
  distinction
- Decide the consolidated field names/ranges for the window-count cleanup
  and the product-interest cleanup before touching either
