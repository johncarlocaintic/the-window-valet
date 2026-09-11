# QuoteRite research

Started 2026-09-04, from Josh's own link: https://quoterite.com/. Correct
spelling confirmed: **Quoterite** (one word, not "QuoteRite" or "Quote Rite").
Pulled directly from their site, not independently verified with their team yet,
several key questions below need answering on Josh's 2026-09-08 demo call.

## What it actually is
An AI-powered quoting platform built specifically for the window covering
industry (blinds, curtains, drapery, awnings), not a general-purpose CRM or
quoting tool. Sells to retailers, manufacturers, wholesalers, and
e-commerce operators in the US/AU/NZ. Covers quote generation, client
management, job tracking, inventory, invoicing, and payments end to end,
this is a genuine like-for-like replacement candidate for MyBlindCo's job,
not an add-on to it.

## AI features (their own claims, live now per their site)
- Voice-powered smart search across the job pipeline
- Automated meeting transcription with AI summaries
- AI-drafted client emails
- "Ask AI" for deal insights
- Talk-to-Text dictation (220 WPM claimed)
- AI quote checker, AI price-list ingestion

## How connecting it to the business would actually work
- **Accounting**: QuickBooks, Xero, and "any accounting system" listed as
  standard integrations. This runs in parallel to, not in conflict with,
  the QuickBooks-GHL integration work already in progress.
- **CRM**: HubSpot, Pipedrive, and Salesforce are the CRM integrations
  listed publicly. **GoHighLevel is not mentioned anywhere on their site**,
  including a direct competitor-comparison page where they list every
  integration they're proud of. Read this as: no native GHL connector
  exists today.
- **The practical bridge**: Zapier is listed as a supported integration.
  Since GHL also connects to Zapier, this is the realistic near-term path
  to move data between Quoterite and GHL without custom development.
- **Custom connectors**: Quoterite explicitly offers to "build and design
  custom integrations to all of our systems," but their own team builds,
  tests, and maintains it, this is not a self-service API/sandbox model.
  No public API docs, no mention of a developer sandbox, no published
  cost or timeline for a custom connector. This needs asking directly.
- **Payments**: their own "Quoterite Pay," built on Stripe.
- **Notifications**: native Slack integration (confirmed by Josh directly
  in the 2026-09-04 huddle too), useful for internal alerts either way.

## How it would actually get used day to day
Quote a job (AI-assisted, including generating quotes from a photo/price
list), track it through production/ordering, schedule and manage
installation jobs, invoice and take payment through Quoterite Pay, and have
the financial side sync to QuickBooks or Xero automatically. This is the
same shape of job MyBlindCo does today, the difference is the AI layer on
top of quoting/communication and, per their own marketing, actual data
portability if the relationship ever ends.

## Pricing (Retail Solutions page, likely tier for this business)
**Advanced Retail Solutions**: $250/month + $950 one-time setup, additional
users $130/month each. Includes "Quoterite AI," custom workflows, accounting
integration, unlimited support. (Manufacturing, Wholesale, and E-Commerce
tiers exist at higher price points, $1,100-2,000/month, clearly not the
right fit for a retail/install business like this one.)

**No free trial found anywhere on their site.** This contradicts what Josh
hoped for in the huddle ("just a free trial maybe they have"), worth setting
that expectation before the demo rather than assuming a trial will be there
to test hands-on.

## Second pass, 2026-09-05: checked third-party sources, not just their own site
User shared a much more detailed research prompt (built off the one I gave for
ChatGPT). Before handing that off, I ran the highest-value parts of it myself
directly, since these needed independent verification, not just what Quoterite
says about itself.

- **No public Zapier app exists.** Checked zapier.com/apps/quoterite/integrations
  directly: 404, not found. Quoterite's own site lists "Zapier" as a supported
  integration category, but there's no live, self-service Zapier app a customer
  could just connect to today. This tempers the earlier read that Zapier is a
  ready-made bridge to GHL, it may only be available through their own
  custom-integration service, not something you'd set up yourself.
- **Reviews are essentially nonexistent.** Capterra lists Quoterite at "4 out
  of 5 stars" but with **0 actual reviews**. No G2 presence found. No Reddit
  or forum discussion found anywhere. Read this as: very new product, very
  small customer base so far, no independent validation exists yet beyond
  their own marketing claims.
- **Regional pricing correction:** Capterra lists **US/Canada pricing as
  $195/month base + $110/month per additional user**, different from the
  $250/month AU/NZ figure quoted earlier from their own site. Since Window
  Valet is a US/Indiana business, use the US figure, not the AU one, in any
  proposal.
- **Their API/EDI claims are specifically about supplier price-list
  connectivity** (pulling pricing data in from suppliers), confirmed again on
  a second comparison page (vs. BlinQ). Every page checked so far talks about
  accounting and supplier integrations in real technical detail, but never
  once mentions CRM or GHL integration, even on pages where they're actively
  listing every integration they're proud of against a competitor. This is a
  consistent pattern across three separate pages now, not a one-off omission.

**This raises the risk level on the GHL-integration question specifically.**
It's no longer just "not mentioned," it's now confirmed there's no published,
self-service path (no Zapier app, no public API docs found anywhere) to
connect Quoterite to GHL today. Whatever gets built would run entirely
through their custom-integration service, cost and timeline unknown until
asked directly.

## Real differentiator worth raising with Josh
Quoterite's own comparison page against a competitor makes data ownership
a headline claim: "your data stays yours, exportable anytime," contrasted
against a competitor that deletes data on cancellation with no guaranteed
export. Given Josh's whole frustration with MyBlindCo is being boxed in by
someone else's system, this is directly relevant, worth confirming this
applies the same way to a GHL relationship (i.e., can GHL-side data always
be pulled back out, not just Quoterite's own data).

## Questions to bring to the 2026-09-08 demo (not answerable from the public site)
1. Is there a free trial, sandbox, or test account available before signing
   a contract?
2. Does a GoHighLevel connector exist already (even unlisted), or would
   this need a custom build? If custom, what's the realistic cost and
   timeline?
3. If Zapier is the near-term bridge, what specific triggers/actions does
   Quoterite expose on the Zapier side (quote created, order status
   changed, job scheduled, etc.)? This determines how much of Item 2's
   proposed data map (order/install status flowing back into GHL) is
   actually achievable through Zapier alone versus needing the custom
   connector.
4. What does migrating existing MyBlindCo customer/job/quote history into
   Quoterite actually involve, is there an import path, or does this start
   fresh?
5. Confirm the accounting integration ("QuickBooks as standard") doesn't
   conflict with or duplicate the native GHL-QuickBooks connection already
   being set up separately.
6. Does the Advanced Retail Solutions tier ($250/mo) include the CRM/Zapier
   integrations, or are those gated to a higher tier or a separate quote?
7. **The one worth asking as a live demonstration, not just a question:**
   "Show us how a quote created in Quoterite can trigger a workflow in
   GoHighLevel." If they can show real webhook or API access firing an event
   out, that settles it on the spot. If they can't, that's the answer too.

## Bottom line so far (updated 2026-09-05)
This is a real, plausible replacement for MyBlindCo's job, purpose-built for
this exact industry, with a genuine story on AI features and data
portability. But the open risk is now confirmed to be bigger than first
thought: there's no published, self-service way to connect it to GHL today,
no live Zapier app, no public API docs, and independent validation is
essentially absent (0 real reviews anywhere checked). Whatever gets built
would run through their custom-integration service, cost and timeline
unknown. Worth going into the 2026-09-08 demo treating questions 2 and 3
in the list above as the two that actually decide whether this solves
Josh's real problem or just relocates it under a newer-looking product with
even less of a track record than MyBlindCo has.

**Pricing correction:** use $195/month base + $110/month per additional user
(US/Canada, per Capterra), not the $250/month AU/NZ figure quoted from their
own site earlier in this file.

## Third pass, 2026-09-05: user's ChatGPT research summary, cross-checked
User ran the full research prompt through ChatGPT and shared the output.
Broadly, it confirms everything found independently above: no GHL
integration, no public Zapier app documentation, no free trial or
self-service sandbox, minimal public reviews, no API/developer portal found.
Two things worth flagging before treating any of it as fact:

- **It cited a new domain, quoterite.app, including a direct
  quoterite.app/compare/myblindco page.** Verified this directly rather than
  assuming it was real, since a fabricated-sounding URL that happens to match
  exactly what we're asking about is worth double-checking. **It's real.**
  That comparison page confirms two new, useful facts: **MyBlindCo's own
  integrations are limited to QuickBooks Online/Desktop only, no Xero or
  MYOB support**, and **MyBlindCo's payment processor is "MyBlindCo Pay" via
  Stax, at 2.6-3.5% transaction fees**, a real, concrete cost detail worth
  putting in front of Josh when comparing total cost of ownership between
  the two systems. The page still doesn't compare either platform on
  CRM/GHL capability, consistent with every other page checked.
- **The custom-integration cost tiers (Simple $500-2,000 / Medium
  $3,000-10,000 / Advanced $10,000-30,000+) are market-rate estimates, not
  numbers Quoterite has published anywhere.** Useful as a framework for
  judging whatever number the owner gives on the demo call, but don't present
  these to Josh as confirmed pricing, they're a reasonable guess at industry
  norms for this kind of custom API work, nothing more.

**One genuinely good addition from this pass, worth using on the demo call
directly:** rather than just asking questions, have Josh ask Quoterite's
owner to literally demonstrate it live: "show us how a quote created in
Quoterite can trigger a workflow in GoHighLevel." If they can show real
webhook/API access with quote or customer events firing into something
external, that settles the integration question on the spot. If they can't
demonstrate it, that's the answer too.

## Josh's formal written outreach to Quoterite, sent 2026-09-08
Following the demo, Josh sent a comprehensive technical questionnaire directly
to Quoterite's contact, **Aaron LeCornu** (subject: "Quoterite Demo - The
Window Valet and Aaron LeCornu"). This is now the authoritative outreach,
it covers everything in this file's own "questions to bring to the demo"
list and goes considerably further. Full text saved for reference; the
key asks:

- Does Quoterite have a fully documented, supported API? Requested the
  actual documentation, not just a description of one.
- Does the API support both incoming requests and outgoing webhooks?
- Can GHL create/update customers, appointments, assigned salespeople, and
  jobs in Quoterite (the GHL-to-Quoterite direction)?
- Can Quoterite automatically push a specific list of fields back to GHL:
  quote amount and status, deposit received, order submitted, production
  status, products received, installation date and status, installation
  completed, balance collected, and service call or remake created. This is
  a far more complete field list than this research file's own proposed
  data map had, worth folding back in once answered.
- Can installation appointments created or changed in Quoterite update GHL
  without creating duplicate appointments?
- How does Quoterite match records and prevent duplicate customers, jobs,
  and appointments (directly extends this file's own unresolved
  matching-key question)?
- What happens on a failed API call or webhook, are errors logged, and can
  failed transactions retry automatically?
- Will Window Valet's own administrator (John Carlo, referred to as "our
  GoHighLevel administrator") get access to API credentials, integration
  logs, and error information?
- Are there API usage limits or extra charges for API/webhook access?
- Can Window Valet's own GHL administrator build and maintain the
  integration, or is Quoterite/an approved developer required? This
  directly answers whether the custom-integration cost estimates in this
  file even apply, or whether it's buildable in-house.
- Who owns the finished integration, API credentials, field mapping, and
  documentation once built?
- Is there a test/sandbox environment to build and verify against before
  using live customer data?
- Do they have any existing customers integrating Quoterite with GHL or
  another outside CRM who could be contacted as a reference?

Josh also asked for a technical rep from Quoterite to meet directly with
"our GoHighLevel administrator" (John Carlo), and wants one real Window
Valet job tested end to end, from the original GHL appointment through
quoting, deposit, production, installation, and completion, before any
final commitment. He closed by asking Quoterite to state plainly what's
supported today versus what needs custom development, plus estimated cost
and timeline for the custom piece.

**Status: sent, waiting on Aaron LeCornu/Quoterite's written reply.**
Nothing to do here until that response arrives. Once it does, this file's
open questions (matching key, field-level access, custom-integration cost)
should mostly resolve from it directly, and a technical call with John
Carlo as "the GHL administrator" is likely to follow. Worth being ready for
that call once scheduled.

## Aaron LeCornu's reply, received 2026-09-08
Answers most of Josh's questions directly, but with one real concern worth
raising before going further, and a few questions that still went
unaddressed.

**Confirmed facts:**
- **No open API for direct client access.** All integrations are built,
  hosted, and maintained by Quoterite's own internal technical team on
  their proprietary platform, not something John Carlo (or any outside
  developer) can build or touch directly. This directly answers the
  "can our own GHL administrator build and maintain the integration"
  question: no, they cannot.
- **The GoHighLevel integration does not exist yet.** They have complete
  two-way integrations with HubSpot and Zoho today; GHL is "on our roadmap
  to launch within the next 2 to 3 months." This confirms what every piece
  of independent research already found (no native connector, no public
  API docs, no Zapier app), directly from the vendor now.
- **Cost, once built: approximately $1,000 one-time setup, plus $150/month**
  ongoing for integration management, API usage, platform usage, and
  maintenance, no separate usage limits. This is well below this file's
  own market-rate estimate range for a medium-complexity integration
  ($3,000-10,000), a genuinely good number if the GHL build actually lands
  as scoped.
- **Error handling:** all activity, errors, and timing are logged; failed
  transactions can be rerun and retried.
- **Duplicate prevention:** planned to use unique system IDs when updating
  GHL records and appointments.
- **Planned data flow, once built:** GHL leads/contacts flow into
  Quoterite; status changes, quote values, payments, and appointments push
  back to GHL via webhooks to trigger automated emails/texts. This is a
  reasonable shape but describes a system that doesn't exist yet, not
  something tested or verified.

**One real concern, worth a direct follow-up before committing further:**
"Quoterite retains ownership of the underlying integration and code as it's
built and hosted on our integration platform." This is a genuine vendor
lock-in signal, the same category of problem that made Josh want to leave
MyBlindCo in the first place. It doesn't necessarily mean Window Valet's
own customer data is trapped (Quoterite's own marketing elsewhere claims
data stays exportable), but the integration itself, its field mappings,
webhook configuration, and code, belongs to Quoterite, not Window Valet.
Worth asking directly: if Window Valet ever needed to leave Quoterite,
would the GHL integration and its configuration transfer, or would a future
switch mean rebuilding this same integration from scratch with whoever
comes next?

**Questions Josh asked that did not get a direct answer:**
- The specific 9-field list (quote amount/status, deposit received, order
  submitted, production status, products received, installation date and
  status, installation completed, balance collected, service call/remake)
  was not itemized field by field, only described generally as "status
  changes, quote values, payments, appointments." Worth re-confirming each
  field lands before treating this as settled.
- No mention of reference customers, Josh explicitly asked to speak with
  an existing Quoterite customer running a GHL or other outside-CRM
  integration; this went unaddressed. Since GHL isn't built yet, worth
  specifically asking for a HubSpot or Zoho reference instead, since those
  integrations are claimed complete today.
- **No live sync test is possible this week's demo**, since the GHL side
  doesn't exist yet. Aaron proposes walking through Quoterite's own
  end-to-end workflow (lead, quote, appointment, production, install,
  payment) without the GHL connection. Josh's explicit ask, testing one
  real Window Valet job across both systems before final commitment,
  cannot happen until the 2-3 month build is actually done.

**Bottom line:** this de-risks the pricing question significantly ($1,000 +
$150/month is a real, specific, reasonable number) but confirms the GHL
integration is a 2-3 month vendor-side build, not something available now,
and raises a new, genuine concern about who owns the integration once
built. Worth deciding with Josh whether to proceed on a 2-3 month timeline
with that ownership question resolved first, rather than treating this
reply as a green light on its own.

## Follow-up after the live platform demo, 2026-09-12
Quoterite followed up directly with Josh after walking him through the
platform live. This message is more concrete on pricing than anything
received before, and reframes Quoterite as "your entire retail sales
operation running from one place," not just a quoting tool.

**Claimed value points (their words):** quotes generated in minutes instead
of hours (supplier pricing pre-loaded, no spreadsheet re-keying), a visual
sales pipeline so no lead or follow-up slips through, deposits collected
the moment a customer approves a quote (auto-synced to accounting), an AI
check that flags pricing errors before a quote goes out, and full
functionality on any device, showroom, on the road, phone or iPad.

**Pricing, stated plainly this time:**
- $195/month for the first user, $110/month for each additional user
- Installers who only receive install sheets are free
- One-off setup: $550
- Month-to-month, no contract, all pricing in USD

**Product configuration cost:** a one-off $1,100 to configure Window
Valet's actual manufactured products for quoting/ordering inside Quoterite,
plus configuring worksheets and deductions for export. Any future changes
to this configuration are billed at $110/hour.

**GHL integration cost, newly concrete:** "a once off cost of $700 (reduced
from $1000) to ensure all endpoints are configured correctly, and a
monthly cost of $150 for ongoing maintenance and support."

**This needs reconciling, not just accepting at face value.** Aaron's
earlier reply (documented above) was explicit that the GHL connector does
not exist yet and would take a 2-3 month vendor-side build. This new
message prices the GHL integration as a flat $700 setup fee with no
timeline mentioned at all, worded exactly like their other already-built
integrations (QuickBooks, Xero, HubSpot, Pipedrive, Salesforce), not like
an unbuilt 2-3 month roadmap item. Before treating this price as real,
ask directly: does this $700 assume the GHL connector already exists
today, or is $700 the price to build it, and if it still needs building,
does the 2-3 month timeline from the earlier reply still apply? The two
messages cannot both be describing the same unbuilt connector without an
explanation for why the price dropped and the timeline disappeared.

**Onboarding claim:** Window Valet sends its products, suppliers, and price
lists, and Quoterite's team ("Min and our team") builds the whole account
and trains the team, described as "a couple of hours of your time, live in
two to three weeks." Worth noting this two-to-three-week figure is about
getting the core Quoterite platform live, not necessarily the GHL side,
given the timeline conflict above.
