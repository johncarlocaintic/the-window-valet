# Customer Intake Process, Phase 2

Built on top of the Phase 1 field audit. Uses the consolidated fields
where Phase 1 flagged duplicates, doesn't introduce anything new. Ordered
the way Renee or Kelli would actually ask it on a first call, natural
conversation, not a form read aloud.

## Customer Information

1. **"Can I get your name?"**
   Field: Contact Name (native) | Type: Text | Required | Purpose: basic identification

2. **"What's the best phone number to reach you?"**
   Field: Phone (native) | Type: Phone | Required | Purpose: primary contact method

3. **"And an email address, so I can send you anything we discuss?"**
   Field: Email (native) | Type: Email | Optional | Purpose: secondary contact, quote/confirmation delivery

## Project Information

4. **"What's the address for the project?"**
   Field: ZIP Code + Address (native) | Type: Text | Required | Purpose: service area confirmation, routing, Mapsly territory

5. **"How did you hear about us?"**
   Field: Opportunity Referral | Type: Single select (32 options) | Required | Purpose: this is the field the account already has and isn't using, populate it directly at intake instead of relying only on automated tags

6. **"Have we worked together before, or is this your first project with us?"**
   Field: (new, see note) New or Existing Customer | Type: Single select (New / Existing) | Required | Purpose: not currently a dedicated field, recommend adding one rather than inferring it from record history

7. **"What are you looking to have done, blinds, shades, shutters, drapery, or outdoor shading?"**
   Field: What type of window treatments are you interested in? (the consolidated survivor of the two duplicate fields from Phase 1) | Type: Single select | Required | Purpose: product interest at intake

8. **"Which rooms or areas are we talking about?"**
   Field: (new) Rooms/Areas Involved | Type: Multi-select or text | Optional | Purpose: not currently a dedicated field, recommend adding a simple one, useful for scheduling and scoping

9. **"Roughly how many windows or openings are we talking about?"**
   Field: Number of Windows (the consolidated survivor of the four window-count fields from Phase 1) | Type: Numerical or single select ranges | Optional | Purpose: sizing the job

10. **"Is this a home, or a commercial property?"**
    Field: Building Type | Type: Single select (New Construction / Existing Home / Commercial) | Required | Purpose: already a strong existing field, keep as-is

11. **"Are you the homeowner, or are you working with a builder on this?"**
    Field: (new) Homeowner/Builder/Decision-Maker Status | Type: Single select | Optional | Purpose: not currently captured cleanly, relevant given the Lennar/builder partner relationship

12. **"Do you have a rough budget in mind, or would you like our team to recommend options first?"**
    Field: budget_range (renamed for consistency in Phase 1) | Type: Text or range | Optional | Purpose: keep it low-pressure, this is a soft ask, not a qualifying gate

13. **"What's your timeline looking like?"**
    Field: How soon are you looking to have your window furnishings installed? | Type: Single select | Optional | Purpose: already a strong existing field, keep as-is

## Scheduling Information

14. **"When works best for you for a free consultation?"**
    Field: Would you like to book an appointment? + Date of appointment | Type: Yes/No + Date | Required | Purpose: existing fields, keep as-is

15. **(Internal, not asked of the customer) Assigned designer**
    Field: (native) Assigned User | Type: User select | Required | Purpose: standard assignment, no change needed

16. **"Is there anything else about the project we should know before we come out?"**
    Field: Anything else we should know? | Type: Large text | Optional | Purpose: existing field, catch-all for anything not covered above

## New fields this recommends adding (not currently in the account)

- New or Existing Customer (single select)
- Rooms/Areas Involved (multi-select or text)
- Homeowner/Builder/Decision-Maker Status (single select)

Everything else in this intake reuses fields the account already has,
either as-is or after the Phase 1 consolidation. No net-new field gets
added unless it's listed above, and even these three are simple, single
fields, not a return to over-collecting.
