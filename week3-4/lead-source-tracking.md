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

## Open question for Josh, not yet sent
Does he want proper distinct source categories built now (organic search,
direct traffic, referral, etc., which needs the website to actually pass
UTM or referrer data into GHL forms first), or hold that piece until
Sixth City Marketing is onboarded, since they'd be the ones setting up
that tracking on the marketing side anyway, building it now risks
rebuilding it once they're in.

## Separately open, unrelated to this specific gap
Whether Sixth City needs direct GHL access to pull their promised
reporting, drafted but never sent to Josh, see [[window-valet-client-overview]] memory.

## Drafted follow-up message, not yet sent

Quick follow-up on lead sources. I'll get the fallback tag built now so
nothing comes in untagged. For the "other lead sources" piece, do you
want actual separate categories built out now, organic search, direct
traffic, referral, and so on, or should that wait until Sixth City's
onboarded, since they'd likely be setting up that tracking on their end
anyway and we'd risk building it twice. Let me know which way you want
to go.
