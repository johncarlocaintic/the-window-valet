# Mapsly + MyBlindCo investigation checklist
Received 2026-09-02, following confirmation that the Mapsly account is an active
paid Enterprise subscription. This is the punch list for going into each account
directly and checking what's actually configured versus what's just paid-for-but-unused.

**Confirmed 2026-09-02: user will log in and work through this list directly, then
report findings back for me to fold into the docs/memory** (no browser/live-login
tool available here, so this can't be run automatically).

**Credentials note:** use the current logins (marketing@thewindowvalet.com for
Mapsly, `twvjosh` for MyBlindCo) — the original LOGINSACCESS file's admin@ logins
for these two are outdated, confirmed by the user 2026-09-02.

## Mapsly
1. Confirm whether this is an active, already-paid account, or a fresh signup screen — this answers the original open question directly. *(Superseded — already confirmed active Enterprise, 3 seats, $210/mo, see item 2 overview.)*
2. Check if the native HighLevel connector is already set up under its integrations settings. If not, that's the main thing to connect.
3. If it is connected, see what's actually syncing right now — contacts, appointments, anything — versus just sitting there unused.
4. Check what plan/tier the account is on, since routing and territory features may be gated by tier. *(Partially answered — Enterprise confirmed. Still confirm whether routing/territory features are actually included at this tier or need a separate toggle.)*

## MyBlindCo
1. Look inside their own admin settings for anything called API, Webhooks, Developer, or Integrations. Their public site didn't document anything, but the actual admin panel might have options that aren't advertised.
2. Check if there's a "generate API key" option anywhere in account/user settings — common even when not publicly documented.
3. Note what data MyBlindCo actually stores per customer: quote fields, order fields, measurements, install status — so the real data map Josh wants can be built instead of guessed.
4. See if there's a visible setting referencing **"my5starz"** — Audra (internal team, not a MyBlindCo contact, confirmed 2026-09-02) mentioned automation running through it, might reveal how that connection technically works from MyBlindCo's side.
5. As a fallback, if there's truly no API: check whether MyBlindCo supports a basic data export (CSV or similar) — a lower-tech backup option if a real integration turns out to be walled off.

## Feeds into
- Item 2 "still needed" list: MyBlindCo API/export/webhook capability, and the exact fields the existing webhook sends today.
- Item 3 (Mapsly Optimization): step 2 "connect the native HighLevel integration."

## Findings so far (2026-09-02, first screenshots)

**Mapsly — connector confirmed live and syncing.**
- Layers panel has a "GoHighLevel" section actively populated with Partner data broken out by label: Hot Neighborhood, Commercial - Builder, Closed-Out Neighborhood, Residential - Builder, Cold Neighborhood, Coming Soon, Designers, Real Estate Agent, Other. This is GHL's partner-tag taxonomy showing up as live map layers — resolves Mapsly checklist #2 (connector is set up) and #3 (it IS syncing something real, not sitting empty).
- A numbered route (stops 1 through ~27) is plotted for User "Marketing" on Date 2026-09-01, with a filter for All/Live/Draft.
- **Still open (user unsure as of 2026-09-02):** what the plotted route is actually for. Next check: click into the route/user itself in Mapsly to see who "Marketing" is (a real user account vs. a generic/shared one) and whether it has a name, notes, or a save date that tells us if it's a live workflow or a leftover sample. Matters because if routing is already in real use for something, that changes how "unused" the Enterprise routing credits really are, and may be a reusable pattern for sales/install scheduling later.
- Also unconfirmed: is a "System" layer (Location History, Identity, User) tracking rep/technician location — relevant to the future scheduling-intelligence design.
- Still open: whether routing/territory features need a separate toggle at this tier, or are just being used as shown.

**MyBlindCo — no API/Developer nav item visible, but this wasn't the right screen to confirm it either way.**
- Screenshot shown is Customize → Common (business hours, notification emails, quote/order email verbiage, disclaimers) — not a settings screen for API/Webhooks/Developer/Integrations.
- The visible left-nav (Dashboard, Users, Calendar, Contacts, Quotes, Orders, Purchase Orders, Receive Shipment, To Do List, Installation, Repair, My Business [Company Profile, User Profile, Tax Info, Manufacturer], Customize [Common, Order Status, Location Setup, Pricing/RPM, Terms and Conditions], Reports) has no API/Webhooks/Developer/Integrations item — suggests there may not be a self-service API section, consistent with "no public API" from the roadmap doc, but **confirmed 2026-09-02: only Common has been checked so far** — Company Profile, User Profile, and Reports still need a look before ruling out an API section entirely.
- **"my5starz" not seen in this screen and not yet checked elsewhere.** Possible it's not inside MyBlindCo at all — the name resembles a review-generation tool (5-star review request platforms are common third-party add-ons in home-service software, separate from the core system). Still needs a look under Reports/Company Profile, or just asking Audra directly what it connects to.
- **Order Status page (Customize → Order Status) not yet checked** — this is likely where MyBlindCo's own order/job status stages live, which is exactly what needs to map onto the "Customer Order Flow Pipeline" stages already documented on the GHL side (Production Complete, Order Shipped, Installation Scheduled). Highest-value next screen to check, along with Company Profile, User Profile, and Reports.
- Useful side finding regardless: the nav itself confirms the entity types MyBlindCo actually tracks — Quotes, Orders, Purchase Orders, Receive Shipment, Installation, Repair, Calendar, Contacts — this maps directly onto item 2's data-map deliverable.
