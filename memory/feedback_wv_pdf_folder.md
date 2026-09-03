---
name: feedback-wv-pdf-folder
description: "All Window Valet PDF deliverables go into the dedicated Window Valet folder, not the claude-code root"
metadata: 
  node_type: memory
  type: feedback
  originSessionId: 97fabf23-c797-47cc-909f-b89a5ac94fb1
  modified: 2026-08-31T13:39:54.133Z
---

Every PDF generated for the Window Valet engagement goes into the folder that already exists, `C:\Users\John Joseph Perez\Downloads\claude-code\the window valet\` (lowercase, with "the"), not a newly-created "Window Valet" folder. That folder already held prior deliverables (Window_Valet_Reply_Gap_Proposal.pdf, an audit/ subfolder) before this rule was ever stated, confirming it's the established one.

**Why:** the user wants Window Valet deliverables kept together in their existing folder rather than mixed in with everything else in claude-code, or duplicated into a second, similarly-named folder.

**How to apply:** when generating any PDF for Window Valet (proposals, audits, roadmaps, reports), save/move it into `the window valet\` exactly, check it exists first rather than assuming a folder name and creating a new one. Combine with [[feedback_update_files_in_place]], if a Window Valet PDF already exists there, update it in place rather than creating a new copy.
