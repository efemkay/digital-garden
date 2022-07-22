---
title: Obsidian plugin enable mobile
---

- #### Metadata
	- topic:: [[00 Obsidian]]
	- updated:: [[2022-03-14]]
	- reviewed:: [[2022-03-14]]
	- #CodeNote 
---
- #### We can change the plugin settings to enable on mobile by changing the manifest.json
	- under each plugin folder, look for manifest.json
	- change `"isDesktopOnly":` from `true` to `false`, per below
		```prose
		{
		  ...
		  "isDesktopOnly": false
		}
		```