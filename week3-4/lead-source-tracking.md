# Lead Source Tracking Gap

Started 2026-09-10, from Josh forwarding an email thread with Sixth City
Marketing (a PPC/SEO vendor he's independently evaluating) and asking
whether CallRail is connected and whether all GHL leads are attributed to
the correct source.

## What's confirmed
- CallRail is not connected anywhere in this account's workflow audit.
  Sixth City's own September plan already includes setting it up, so this
  is likely already covered on their end once they're engaged, just needs
  confirming before signing.
- Lead attribution already works for tracked channels: Google Ads
  (exterior and homepage campaigns), Facebook lead forms, and six
  dedicated tracked phone numbers, all tag the contact by source.
- **The gap:** anything outside those channels, direct website traffic or
  a generic contact form submission, gets no source tag at all. Tagging
  happens in the upstream per-campaign workflows, not universally at the
  point of intake.

## What's committed
User told Josh directly (2026-09-10, already sent): "I can add the hand
off tag so that no one can slip away." This is a real commitment, not a
pending question, build it.

Josh's reply: "ok great we will need to start tracking other lead
sources. thx" — read as wanting actual distinct source categories
(organic search, direct/type-in, referral, etc.), not just one generic
catch-all tag. Worth confirming this reading with him before building the
more elaborate version, see the open question below.

## Build confirmed on "1. New Lead," 2026-09-10
Verified directly against screenshots of the live workflow: the "Has Source
Tag" condition checks all 10 confirmed source tags (both Google Ads tags,
both Meta Ads tags, all six phone tracking tags), the "None" branch adds the
`Source - Untracked` tag, and the "Go to" step correctly merges back into
the existing second condition so untracked leads still get the full welcome
sequence. Nothing further needed on this specific workflow.

## Step-by-step: the fallback tag (build this now, no further sign-off needed)
1. Open **Workflows -> 1. Lead Pipeline (New) -> "1. New Lead"** in the builder.
2. Insert the check right after the trigger, before the existing-customer
   exit condition, so every contact gets evaluated regardless of what
   happens to them afterward.
3. Add an **If/Else (Condition)** step there.
4. Condition: **Contact Tags -> does NOT contain any of** the known
   source tags already in use (`google_ads_exterior`, `google_ads_homepage`,
   and whatever tags the Facebook lead forms apply, confirm the exact tag
   names from the live account before configuring this).
5. On the "no tag found" branch, add an **Add Tag** action. Tag name:
   confirm exact wording with Josh, `Source - Untracked` is the working
   placeholder.
6. On the "already has a source tag" branch, no action, let it continue
   straight into the rest of the workflow unchanged.
7. Reconnect both branches back into the workflow's existing next step.
8. Test: submit one lead with no campaign tag attached (confirm it gets
   the fallback tag) and one that would normally get tagged by an
   existing source (confirm it's untouched).
9. Repeat the same fix on **"01. New Lead Opt in Workflow"** (legacy Lead
   Flow Pipeline folder), since it's also still being fed live traffic
   directly by current lead-source workflows and has the same gap.

## Resolved 2026-09-11, Sixth City Marketing confirmed and coordination mandated
Both open questions below are now settled by Josh directly. Sixth City
Marketing is the confirmed SEO/paid ads vendor, launching October 1,
replacing Shade Strategy. Their scope: SEO, local SEO, Google Ads/PPC,
Google Business Profile, website strategy, CallRail, lead attribution and
tracking, digital marketing reporting. Josh's own words: "I want everyone
connected early so we have a clean transition and, most importantly,
accurate attribution between Sixth City's marketing and GHL... track every
lead from its original marketing source through appointment, quote and
ultimately closed sale/revenue whenever possible." He explicitly directed
direct collaboration: "please work directly with Sixth City on anything
needed within GHL, including forms, CallRail integration, UTMs, tracking,
landing pages, workflows and lead-source attribution," and to connect with
anyone else on their technical or analytics team as needed. Contacts:
Kailee Terrance (kailee@sixthcitymarketing.com) and John, Owner, Sixth City
Marketing (john@sixthcitymarketing.com), this John is Sixth City's own
owner, not to be confused with this engagement's John Carlo.

This settles both prior open questions: yes, Sixth City needs and is meant
to have direct GHL involvement, and the distinct lead-source-category
question should now be worked out jointly with them rather than decided
solo, since they own CallRail and attribution reporting going forward.

## Old open question, now superseded
Previously drafted but never sent: whether to build real distinct source
categories now versus wait for Sixth City. No longer needs a standalone
answer, this gets resolved through direct coordination with Sixth City
per Josh's mandate above, not as a separate ask to Josh.
