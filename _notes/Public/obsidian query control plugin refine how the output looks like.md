---
title: Obsidian Query Control plugin refine how the output looks like
tags: [Reference]
---

- #### [Obsidian Query Control plugin](https://github.com/nothingislost/obsidian-query-control) add refinement features to the vanilla Obsidian query for a better experience on note retrieval and reading
	- The features included are custom title, expanding note’s context (to include sub/children elements), and primarily, show the results as rendered Markdown
	- Here’s a sample of Obsidian query with the plugin’s additional control
		~~~prose
		```query
		block:([[people meta]])
		title: People Meta Query
		collapsed: true
		context: true
		hideTitle: false
		renderMarkdown: true
		```
		~~~
	- Without the plugin, the normal obsidian query is quite simple (e.g. below)
		~~~prose
		```query
		task-todo:""
		```
		~~~
	- see my own tweak here [[Improved Obsidian query with NIL Query Control and custom css]]

## Metadata
- topic:: [[01 Obsidian]]
- updated:: [[2022-07-06]]
- reviewed:: [[2022-07-06]]
- #Reference 