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

## Status: pending
Email sent to Audra (2026-09-11) covering all of the above. Nothing else
on the MyBlindCo/Quoterite decision moves until her answers come back.

## What happens once Audra replies
1. Write up her answers the same structured way `03-quoterite-research.md`
   documents Quoterite's confirmed facts versus open gaps.
2. Compare directly against what's already confirmed about Quoterite (2-3
   month build, no GHL connector yet, vendor retains integration
   ownership, no reference customer offered).
3. Give Josh a direct recommendation, he explicitly asked whether this is
   enough to comfortably keep MyBlindCo, answer that plainly, not just
   report findings.
4. Only then decide whether `00-overview.md` and the Customer Journey
   proposal need a real rewrite, since both are currently built around
   MyBlindCo being replaced, an assumption that may no longer hold.
