# Open Items, Miscellaneous

Small, standalone items that don't belong to a single larger initiative.

## Spot-check legacy pipeline records before archiving, completed
Pulled all 138 currently-open records in the legacy "Lead Flow Pipeline"
directly (close to the earlier ~148 estimate). Findings:

- 92 sit in "Appointment Booked" and 33 sit in "Pending Service," together
  90% of the total. Both read as "in progress" stages, but records dating
  back to February and March 2026 are still sitting there unchanged 6+
  months later, that's not a real in-progress appointment, it's a record
  that was never closed out.
- Only 12 sit in "Not Booked" and 1 in "New Lead Opt in."
- Date range runs February through September 2026, with a gap, no new
  records at all in June or July. Worth asking Josh what changed then.
- One record ("WALTER," Sep 12, 2026) is only a few days old and still
  genuinely active, should not be archived with the rest.
- Names checked look like real leads (Tosin Akinmayowa, Sara Tennery,
  Mark Bernstein, etc.), not test or placeholder data.

Recommendation: safe to archive the February through May batch (roughly
119 records), hold off on the August and September batch (about 11
records) since some of those may still be genuinely active.

## Em dash in a live SMS message
The "SMS Follow-up" message inside "Partner New Leads Opt-in" has an em
dash in it. Per the standing no-em-dashes-client-facing rule, fix this
directly in the workflow, it's live copy a real partner lead receives.

## Lennar Window Cling form has no tag action configured
Checked "The Window Valet-Lennar Window Cling Form" end to end in GHL,
Settings tab. The redirect to the thank you page is set up correctly. But
there is no tag-adding capability anywhere in the form's own settings,
just visibility, conversation, and timezone toggles. Confirmed no tag is
currently applied to submissions. In GHL, tagging on submission is
normally handled by a separate workflow triggered on "Form Submitted" for
that specific form, not inside the form's own settings. Need to check
Automation -> Workflows for one tied to this form, and if none exists,
build it: trigger on this form's submission, action Add Tag "Lennar
Window Cling."

## Primary Lead Form: "Yes" on appointment question leads to a dead page
Tested end to end. Submitting Primary Lead Form and answering "Yes" to
"Would you like to book an appointment?" leads to a booking widget URL
that returns a 404, Page Not Found. Confirmed directly, not assumed. A
real visitor answering "Yes" hits a dead end instead of a calendar.

## Appointment booking calendar defaults to the wrong timezone
The native GHL calendar used for appointment booking (reached through
Strategy-Hero Lead Form, Strategy-Contact Us Form, and the site's
"Schedule" button) defaults to GMT+08:00 Asia/Irkutsk instead of Eastern
time, Indianapolis. This produces implausible slots (1:00 AM, 3:00 AM)
that then fail on actual booking with "The slot you have selected is no
longer available" or "We couldn't schedule your appointment." Confirmed
with two separate live test attempts, ruled out bad test data (retried
with a clean, valid email and it failed again the same way). A real
visitor who doesn't manually correct the timezone dropdown likely cannot
successfully book an appointment at all through either main lead form.

## "New Lead Landing Page" workflow allows duplicate opportunities
Checked directly: the "Create opportunity" step has "Duplicate opportunity"
set to Enabled. If a contact who already has an open opportunity in "1.
Lead Pipeline (NEW)" submits again through one of this workflow's four
promo tags, it will create a second, duplicate opportunity instead of
skipping it. Matches the same concern the original workflow audit flagged
elsewhere in the account.

## Real photo needed for the Lennar Window Cling hero
Both the landing page and thank you page have a labeled placeholder where
a real photo should go (`funnel-redesigns/lennar-window-cling/`). Per the
Brand Standards Manual, section 08, this needs to be a real Window Valet
project photo, ideally an actual completed install in a Lennar home, not
stock photography. The manual is explicit: "use real Window Valet projects
whenever possible" and avoid "obvious stock photography when authentic
project photography exists." This isn't something we can pick ourselves,
ask Josh directly which photo he wants used, or have his team upload one,
before pasting the final code into the live funnel.
