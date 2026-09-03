---
name: project-wv-ad-lead-pipeline-fix
description: "Resolution of Cody/Shade Strategy's report that Window Valet ad leads were creating contacts but not reaching the pipeline"
metadata: 
  node_type: memory
  type: project
  originSessionId: 97fabf23-c797-47cc-909f-b89a5ac94fb1
  modified: 2026-08-24T19:44:48.974Z
---

Root cause found and fixed 2026-08-25: the Google Ads side had a disconnected automation further down the chain that wasn't activated, so leads created a contact but the remaining connected automation never ran to move them into the pipeline. Kyle/John activated the remaining connected automation and confirmed it resolved the flow. The Facebook Lead Form workflows were checked separately and had no errors, they were never the actual cause.

**Why:** this closes out the original urgent report from Cody (Shade Strategy) that opened this week's Window Valet work, related to [[project_window_valet_ghl_audit]]. The investigation initially got sidetracked by an unrelated Draft workflow finding ("01. New Lead Opt in Workflow," a website Strategy form issue, not an ad-lead issue), before circling back to find the real cause on the Google Ads side.

**How to apply:** if ad-lead pipeline complaints resurface, check for automation steps in the Google Ads webhook chain that are built but not activated, that was the actual failure mode here, not a webhook validation or condition-logic bug as first suspected.
