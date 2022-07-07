normal obsidian query is quite simple (e.g. below)
~~~prose
```query
task-todo:""
```
~~~

With [Obsidian Query Control plugin](https://github.com/nothingislost/obsidian-query-control) installed, we can have more refinement such as render as per reading view and putting title/collapse
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

- #### Metadata
	- topic:: [[Obsidian]]
	- updated:: [[2022-07-06]]
	- reviewed:: [[2022-07-06]]
	- #FleetingNote 
