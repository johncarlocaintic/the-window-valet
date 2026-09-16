# The Window Valet — EOD Report Standard

Set 2026-09-09, revised 2026-09-16 with stricter client-facing reporting rules. Use this structure for every EOD going forward. This revision replaces the prior version where needed.

**Your job is to report completed client work, not internal activity. The EOD will be sent directly to the client, so it must only include information that is useful, professional, and client-facing.**

## Structure

Three sections, always in this order:

**Accomplished Today**
Only completed client-facing or client-impacting work. Keep each bullet short, specific, and factual. Start with a strong action verb: Created, Built, Updated, Fixed, Configured, Implemented, Completed, Tested, Published, Sent, Added, Removed, Reorganized.

**Pending / Blockers**
Tasks still waiting on approval, clarification, access, credentials, information, or another person's action.

**Next Steps**
Actual work that should be completed next, work still to be done that doesn't depend on someone else first.

---

## What counts as an accomplishment

Include tasks where real, completed client work happened:

- Built, created, edited, fixed, configured, or implemented something
- Completed a client-requested task
- Delivered a finished asset: workflow, page, automation, document, report, campaign, or update
- Tested something and made an actual fix or change as a result
- Added or updated something inside the client's system
- Completed research only if it produced a useful deliverable or confirmed recommendation

Examples that count:

- Updated the Lennar landing page based on requested revisions
- Added the lead source tracking tag to the workflow
- Built the appointment reminder workflow in GoHighLevel
- Fixed the form submission automation and tested it successfully
- Created and sent updated campaign copy for review
- Completed the vendor integration review and documented confirmed limitations

---

## What does NOT count as an accomplishment

Never put these under Accomplished Today:

- Asking someone for clarification
- Waiting for client approval
- Waiting for access, API keys, credentials, or information
- Identifying something that still needs to be done
- Saying someone needs to review or decide something
- General account observations
- Internal coordination that did not result in completed client work
- Simply reading emails or messages
- Flagging an issue without resolving or documenting a concrete outcome
- Clarifying scope unless actual implementation was completed afterward
- Future plans or next steps

These belong under Pending / Blockers or Next Steps.

---

## Client-facing language rules

The EOD is sent directly to the client. Write it as a professional progress update, not an internal development log.

Never include:

- Client names
- Team member names
- Developer names
- Internal conversations
- Who requested something
- Who needs to decide something
- Internal discussions or handoffs

Use neutral client-facing wording instead:

Examples:

Avoid:
- "Josh's approval"
- "Waiting on Josh's answers"
- "Sent to Josh"
- "Josh's input is no longer needed"

Use:
- "Client approval"
- "Waiting on client clarification"
- "Sent for client review"
- "The item was resolved and no longer requires additional clarification"

The goal is to communicate:
1. What was completed
2. What requires attention
3. What happens next

without exposing internal workflow details.

---

## The test to apply to every bullet

Ask:

"If the client asked, 'What did you actually finish for me today?', would this bullet be a clear, direct answer?"

If yes, it goes under Accomplished Today.

If the honest answer is:
"I reviewed it, discussed it, noticed it, asked about it, or I'm waiting on it"

it does not count as an accomplishment.

Move it to Pending / Blockers or Next Steps instead.

---

## Style rules

- Bullet form, not paragraphs.
- Each bullet should be one line, maximum two lines.
- Plain, direct, and professional.
- Cut filler wording.
- No status labels ("Done," "Blocked," "In Progress").
- No em dashes anywhere.
- No jargon, internal IDs, commit hashes, or developer notes.
- Never include pushing to the repo as an accomplishment. Committing and pushing is internal housekeeping.
- Never include internal process improvements or tooling changes unless they directly created a client-facing result.
- Do not include work done on improving the EOD format itself.
- Do not include file renaming, internal organization, or documentation formatting unless it was part of a client deliverable.
- Be specific. Name the actual deliverable, workflow, page, system, or document instead of vague summaries.
- Never repeat an accomplishment across EODs. Each EOD only covers genuinely new work since the previous EOD was delivered.
- Do not exaggerate progress or invent accomplishments. Accuracy matters more than the number of bullets.

---

## Handling issues and bugs

If an issue is found but not fixed:

Do not place it under Accomplished Today.

Example:

Avoid:
- "Found and confirmed a calendar timezone bug."

Use:

Pending / Blockers:
- "Calendar timezone issue requires resolution before appointment testing can continue."

If the issue was documented as a useful client deliverable:

Acceptable:
- "Documented the confirmed calendar issue and its impact on appointment scheduling."

---

## Example

**Accomplished Today**

- Completed the lead form automation testing and confirmed successful opportunity creation, tagging, assignment, and SMS delivery.
- Updated the Field Audit with verified pipeline findings and documented confirmed system behavior.
- Completed the Customer Intake Process document with the latest workflow updates.

**Pending / Blockers**

- Waiting on clarification for remaining field requirements before finalizing the next implementation phase.
- Appointment testing is pending resolution of the calendar timezone issue.

**Next Steps**

- Finalize the next implementation phase after receiving required clarification.
- Apply approved workflow updates and complete final testing.
