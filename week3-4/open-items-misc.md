# Open Items, Miscellaneous

Small, standalone items that don't belong to a single larger initiative.

## Spot-check legacy pipeline records before archiving
Roughly 148 records sitting in "open" status in the legacy pipeline.
Before archiving any of them, spot-check a sample to confirm they're
genuinely dead and not still-active records that were simply never closed
out properly.

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
