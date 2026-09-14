# MyBlindCo API Reconsideration, Started 2026-09-11

Josh is reconsidering the MyBlindCo-to-Quoterite switch. MyBlindCo is now
offering a direct API integration with GHL for $50/month, and Josh wants to
know if that's enough to keep MyBlindCo as the operating/quoting system and
GHL as the CRM, rather than migrating the whole team to Quoterite.

## Why this matters
The original driver for moving off MyBlindCo was that it had no real
integration path, just a one-way custom webhook (GHL to MyBlindCo only),
with confirmed live delivery failures for at least two contacts (Brett
Driscoll, Nicholas Carey, both in the past several weeks, visible in GHL's
own Needs Review log). If MyBlindCo's new API is a genuinely different,
reliable, two-way capability, staying put avoids a full migration. If it's
the same fragile webhook with a price tag attached, the original reasoning
to leave still holds.

## What Josh wants confirmed with Audra (MyBlindCo's contact)
1. Is true two-way sync possible?
2. What specific fields/statuses can GHL push into MyBlindCo (customer
   info, appointment info, assigned salesperson/designer)?
3. What specific fields/statuses can MyBlindCo push back into GHL (customer
   updates, appointment status, quote/opportunity status, deposit received,
   order status, installation scheduled, installation completed, job
   completed, sales/order value)?
4. Can updates happen automatically and close to real time?
5. Can duplicate contacts and appointments be prevented?
6. Can MyBlindCo status changes trigger GHL workflows/automations?
7. Can everything stay associated with the correct salesperson/designer?
8. Can order value/final sales revenue come back into GHL for reporting?
9. Are there major limitations that would make this setup unreliable?

Also worth confirming directly: whether this $50/month API is a genuinely
new capability, or the same one-way webhook now being charged for, and
what causes the existing delivery failures.

## Audra's reply, received 2026-09-11
Answered inline, question by question.

**Confirmed working:**
1. True two-way sync, yes, contact and appointment data flows both directions.
2. Appointment-to-calendar mapping by salesperson works, an appointment on
   a given rep's calendar in GHL maps to that same rep's calendar in
   MyBlindCo.
3. MyBlindCo can send back almost everything asked for, her exact words:
   "everything but quote/order value."
4. Updates are automatic, not batched or delayed.
6. MyBlindCo status changes can trigger GHL workflows directly, her words:
   "of course, that's why we built it."

**Real gaps, not just unanswered, actual problems:**
8. Order value and final sales revenue can NOT come back into GHL for
   reporting. This directly conflicts with one of Josh's own explicit
   requirements, tracking sales/order value for attribution.
5. Duplicate prevention: her answer was just "error messages." That is not
   duplicate prevention, that is what happens after a duplicate is
   attempted. Worth a direct follow-up: does the record get created twice,
   does it get rejected, and does resolving it require manual work, since
   the current one-way sync already has confirmed live delivery failures
   for real contacts.
7. Whether records stay correctly tied to the right salesperson/designer
   across both systems, not answered at all.
9. Whether there are real limitations, rate limits, downtime, or edge
   cases, answered "no." A flat "no limitations at all" from a vendor is
   itself worth being skeptical of, not necessarily true, and doesn't
   explain the failures already seen on the current one-way version.
   Original context question also unanswered: what actually causes the
   existing failed syncs (Brett Driscoll, Nicholas Carey), and whether the
   new API handles errors and retries differently.
   API documentation or a field reference: not provided, just a "?" in
   reply. Everything here is still Audra's word, not something verifiable
   against real documented behavior.

## Where this leaves the decision
Strong on the operational side, real two-way sync, correct calendar
mapping, workflow triggers confirmed. But two of Josh's explicit asks are
not met: revenue/order value cannot flow back for reporting, and duplicate
handling is unproven and vague, in an account that already has confirmed
real sync failures on the simpler one-way version. Not a clean green
light. Before recommending this to Josh as sufficient, send one more
direct follow-up closing the specific gaps above, particularly the
duplicate-handling mechanism and the cause of the existing failures, since
those go directly to reliability, not just capability.

## What happens once that follow-up is answered
1. Write up the full picture the same structured way `03-quoterite-research.md`
   documents Quoterite's confirmed facts versus open gaps.
2. Compare directly against what's already confirmed about Quoterite (2-3
   month build, no GHL connector yet, vendor retains integration
   ownership, no reference customer offered, though also a new,
   unreconciled $700 GHL pricing claim, see that file).
3. Give Josh a direct recommendation, he explicitly asked whether this is
   enough to comfortably keep MyBlindCo, answer that plainly, not just
   report findings. Right now the honest answer is not yet, pending the
   duplicate-handling and failure-cause follow-up.
4. Only then decide whether `00-overview.md` and the Customer Journey
   proposal need a real rewrite, since both are currently built around
   MyBlindCo being replaced, an assumption that may no longer hold.
