# QuickBooks <-> GHL integration setup

Started 2026-09-04. This closes the first "still needed" item from the Item 2
overview: confirm whether the native QuickBooks integration is actually
connected in this account, then get it properly configured.

No browser/live-login tool is available in this environment, so this is a
guided walkthrough: send screenshots of each screen as you go and I'll
confirm the next step and flag anything that looks off.

**Login to use:** `admin@thewindowvalet.com` at qbo.intuit.com (per the
credentials reference; confirm this is still current before starting).

## Steps

- [ ] 1. In GHL, go to Settings -> Integrations and find the QuickBooks tile
      (sometimes listed as "QuickBooks Online" or under a Payments/Accounting
      section rather than a flat list, depending on the account's GHL version)
- [ ] 2. Click Connect. This should redirect to Intuit's own login/consent
      screen, not a GHL-hosted form, since it's an OAuth connection
- [ ] 3. Log into QuickBooks Online with admin@thewindowvalet.com, select the
      correct company file if more than one appears, and authorize GHL's
      requested access
- [ ] 4. Confirm the redirect back to GHL shows the integration as Connected,
      not just "pending" or silently failed
- [ ] 5. Open the integration's own settings/mapping screen and note what's
      configurable: GHL Products -> QuickBooks Items/Services mapping, tax
      rate handling, which GHL event creates a QuickBooks invoice (opportunity
      won, manual trigger, or something else), and default payment terms
- [ ] 6. Check whether existing QuickBooks customers/items are already
      showing up inside GHL's mapping screen (confirms the connection is
      actually pulling live data, not just authorized-but-idle)
- [ ] 7. Run one test: move a test opportunity through to Sold (or whatever
      event is configured to trigger invoicing) and confirm an invoice
      actually appears in QuickBooks tied to the right customer

## Open questions to resolve while going through this
- Does this account's GHL plan/tier gate the QuickBooks integration behind
  a specific add-on, or is it included as-is?
- Confirm the current login is still valid; the credentials reference notes
  admin@thewindowvalet.com surfaced 2026-09-02 as a new login not in the
  original LOGINSACCESS file, worth double-checking it hasn't rotated since

## Note per the 2026-09-04 huddle
This is the QuickBooks piece specifically, independent of the MyBlindCo/
QuoteRite decision, don't hold this up waiting on that. QuickBooks stays the
financial-accounting system regardless of which quoting platform wins.
