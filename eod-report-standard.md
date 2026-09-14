# The Window Valet — EOD Report Standard

Set 2026-09-09, revised 2026-09-15 with a stricter, more detailed
definition of what counts as an accomplishment. Use this structure for
every EOD going forward, don't re-derive it each time. This revision
replaces the prior two-section version entirely.

**Your job is to report completed client work, not activity. Activity is
not the same as accomplishment.**

## Structure

Three sections, always in this order:

**Accomplished Today**
Only completed client-facing or client-impacting work. Keep each bullet
short, specific, and factual. Start with a strong action verb: Created,
Built, Updated, Fixed, Configured, Implemented, Completed, Tested,
Published, Sent, Added, Removed, Reorganized.

**Pending / Blockers**
Tasks still waiting on approval, clarification, access, credentials,
information, or another person's action.

**Next Steps**
Actual work that should be completed next, work still to be done that
doesn't depend on someone else first.

## What counts as an accomplishment

Include tasks where real, completed work happened:
- Built, created, edited, fixed, configured, or implemented something
- Completed a client-requested task
- Delivered a finished asset: workflow, page, automation, document,
  report, campaign, or update
- Tested something and made an actual fix or change as a result
- Added or updated something inside the client's system
- Completed research, but only if it produced a useful deliverable or a
  clear recommendation, not just reading or reviewing something

Examples that count:
- Updated the Lennar landing page based on the client's requested revisions
- Added the lead source tracking tag to the workflow
- Built the appointment reminder workflow in GoHighLevel
- Fixed the form submission automation and tested it successfully
- Created and sent the updated campaign copy for client review
- Completed the vendor integration review and documented the confirmed
  integration limitations

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
- Clarifying scope, unless actual implementation was completed afterward
- Future plans or next steps

These all belong under Pending/Blockers or Next Steps, never Accomplished
Today. For example, exclude phrasing like: "flagged a redesign that needs
reconciling," "clarified the exact scope," "Josh's decision on X,"
"waiting on the vendor to confirm."

## The test to apply to every bullet

Ask: if the client asked "what did you actually finish for me today,"
would this bullet be a clear, direct answer?

If yes, it goes under Accomplished Today.
If the honest answer is "I reviewed it, discussed it, noticed it, asked
about it, or I'm waiting on it," it does not count, move it to
Pending/Blockers or Next Steps instead.

## Style rules
- Bullet form, not paragraphs. Each bullet is one line, two at most.
- Plain, direct, to the point. Cut filler wording.
- No status labels ("Done," "Blocked," "In Progress"), just say it plainly.
- No em dashes, anywhere.
- No jargon, internal IDs, or commit hashes.
- **Never include pushing to the repo as an accomplishment.** Committing and pushing is internal housekeeping, not something Josh needs to see as a line item.
- **Be specific, not a vague summary.** Name the actual thing (which document, which section, which system), not "updated some files" or "made progress on X."
- **Never repeat an accomplishment across EODs.** Each EOD only covers what's genuinely new since the last one was given AND pushed. The checkpoint is: EOD given, then "push" said, everything up through that point is already reported and stays out of the next one.
- **Never include work done on our own process or tooling, only real client-engagement work.** Refining the EOD format itself, fixing a document's internal styling/structure, changing a file-naming convention, renaming a file, none of that goes in the EOD.
- **Do not exaggerate progress, and do not invent accomplishments to pad the list.** Accuracy matters more than the number of bullets. If only two real tasks were completed today, list only those two.

## Reference example (2026-09-15)

**Accomplished Today**
- Completed the MyBlindCo integration review and documented the confirmed
  capabilities and limitations against the client's requirements
- Drafted the vendor follow-up email closing the two open integration
  gaps and requesting a call this week

**Pending / Blockers**
- The vendor's answers to the follow-up, and confirmation of a call
- Josh's clarification on the exact scope of the tag replacement
- Josh's review and decision on the system optimization proposal
- Either the API key or GHL access needed to build the Mapsly data workflow

**Next Steps**
- Connect a domain so the Lennar funnel can go live
- Add the tracking tag as a recognized source inside the main lead workflow
- Build the same lead-source-tracking fix on the legacy opt-in workflow
- Reach out to the new marketing vendor's team on tracking and attribution
