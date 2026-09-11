# Partner Tag Standardization, Decided 2026-09-11

Josh reviewed the tag standardization proposal and the Immediate Priorities
document together and gave a direct decision.

## Decision
Approved, with a name change. The standardized tag is **"Partner - Warm Lead"**,
not the recommended "Warm Lead." Josh's reasoning: he does not want partner
leads confused with normal customer nurture leads, so the tag needs to read
as partner-specific on its own, not rely on context.

## What this unlocks
Explicit green light to build the Partner nurture campaign, the same
Drip/Nurture mechanics already proven for end customers, branching by
whether a partner carries this tag.

## Build steps
1. Replace the interim "Drip" tag on "Partner New Leads Opt-in" with
   "Partner - Warm Lead."
2. Audit every other workflow that currently tags partner-related leads
   under "Drip" or any other interim name for the same status, and bring
   each one in line with "Partner - Warm Lead" before the campaign build
   starts, not after.
3. Build the Partner nurture campaign itself, branching on this tag.

See `../docs/tag-standardization.html` for the original proposal and
reasoning, this decision supersedes only the tag's exact wording, not the
underlying logic.
