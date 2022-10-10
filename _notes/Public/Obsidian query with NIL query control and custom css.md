---
title: Obsidian query with NIL query control and custom css
tags: [Reference]
---

- #### Obsidian’s standard query syntax are simple and has not control on formatting
	- here’s an example, you can only specify the search term and scope
		````md
		```query
		block: (searchterm)
		```
		````
- #### NIL’s Query Control plugin added formatting syntax to control the query with key feature on rendering markdown
	- The key feature is the option to show the results in rendered markdown (HTML)
	- Additionally it also add options for title, set the state for collapse, context, hiding title/results and sorting
		````md
		```query
		path: foo tag:#obsidian
		title: custom query name
		collapsed: true | false
		context: true | false
		hideTitle: true | false
		hideResults: true | false
		renderMarkdown: true | false
		sort: alphabetical | alphabeticalReverse | byModifiedTime | byModifiedTimeReverse | byCreatedTime | byCreatedTimeReverse
		```
		````
- #### I’ve written some custom css to control how the title and the controls positioned for more streamlined look
	- I use `display: grid` to control the position and makes the title and control on the same line
		```css
		/* adjustment for query search results */
		.internal-query {
			display: grid; grid-template-columns: 1fr 1fr;
			border-bottom: 1px solid var(--background-modifier-border); }
		.internal-query .internal-query-header {
			font-weight: bold; color: var(--h5-color); padding: var(--size-4-2); }
		.internal-query .nav-header {
			grid-column: 2/3; justify-self: end;}
		.internal-query .search-result-container {
			grid-column: 1/3; border: unset; background-color: unset;}
		```


## References
- [nothingislost/obsidian-query-control: An experimental Obsidian plugin that adds controls to embedded queries (github.com)](https://github.com/nothingislost/obsidian-query-control)

## Metadata
- #### Metadata
	- topic:: [[01 Obsidian]]
	- updated:: [[2022-09-30]]
	- reviewed:: [[2022-09-30]]
	- #Reference 