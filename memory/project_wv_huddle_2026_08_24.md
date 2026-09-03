---
name: project-wv-huddle-2026-08-24
description: "Window Valet huddle 2026-08-24 with Josh: Week 2 is testing-only, plus two new confirmed enhancement requests to the Lead Response system and self-booked appointments"
metadata: 
  node_type: memory
  type: project
  originSessionId: 97fabf23-c797-47cc-909f-b89a5ac94fb1
  modified: 2026-08-24T13:45:53.275Z
---

Huddle with Josh, 2026-08-24, 9:00-9:17 AM EDT. Two scope items confirmed directly by Josh (not a stray mid-week idea, this was a dedicated huddle), building on [[project_window_valet_ghl_audit]]'s Week 2 Lead Response & Admin Accountability system:

1. **New 1-hour escalation tier to Josh himself.** On top of the existing 10-min first-contact window and 30-min escalation to Renee, Josh wants an SMS sent directly to him if a lead is STILL untouched after 1 hour total. Confirmed buildable by John Carlo in the huddle.

2. **Self-booked appointments need human confirmation, same as a new lead.** Josh flagged that the team currently assumes any self-booked appointment is qualified and doesn't verify details, creating risk of unqualified or badly-timed appointments slipping through. Josh wants self-booked appointments (only self-booked, explicitly NOT appointments the team books manually) routed through a confirmation step, same treatment as a new lead needing follow-up. John Carlo's proposed approach: auto-generate a reminder/task for the team to reach out on self-booked appointments specifically, confirming/adjusting details before the appointment happens.

3. **No change:** assigned booking users stay Erica and Justin, confirmed as-is.

**Why:** Josh's own words frame the self-booked risk clearly, the team currently treats a self-booked slot as pre-qualified when it isn't, so a bad-fit or mistimed appointment can reach the calendar with zero human check. The 1-hour escalation to Josh is an extra safety net on top of Renee's, not a replacement.

**How to apply:** Build both as extensions of the existing "1. New Lead" / "1.1 New Lead Follow-Up Task Chain" system rather than new parallel systems. Before building, need from Josh/Kyle: (a) Josh's phone number for the SMS step, (b) how self-booked vs team-booked appointments are actually distinguished in the current calendar/booking setup (booking source field, specific calendar ID, or something else) so the condition can key off it correctly.
