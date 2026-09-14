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

## Scope needs clarifying before building, not yet resolved
Josh's instruction to replace "Drip" with "Partner - Warm Lead" may not
cover every workflow that currently uses "Drip." At least one workflow,
"Partner New Leads Opt-in," may be using "Drip" intentionally, not as the
interim placeholder this whole exercise was meant to replace. Confirm
directly with Josh exactly which workflows/tag usages his instruction was
meant to cover before touching anything, rather than assuming every "Drip"
tag in the account is in scope.

## Build steps
1. Once scope is confirmed, replace "Drip" with "Partner - Warm Lead" only
   where Josh confirms it's actually meant to change.
2. Audit every other workflow that currently tags partner-related leads
   under "Drip" or any other interim name for the same status, and bring
   each one in line with "Partner - Warm Lead" before the campaign build
   starts, not after, excluding whatever Josh confirms should stay as-is.
3. Build the Partner nurture campaign itself, branching on this tag.

See `../docs/tag-standardization.html` for the original proposal and
reasoning, this decision supersedes only the tag's exact wording, not the
underlying logic.
