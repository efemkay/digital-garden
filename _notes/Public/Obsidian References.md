---
title: Obsidian References
---

- #### Metadata
	- topic:: [[00 Obsidian]]
	- updated:: [[2022-03-20]]
	- reviewed:: [[2022-03-20]]
	- #CodeNote #guide 

## Non Core Markdown Features
### [[LATEX]]
### Mermaid Guide
- #### Flowchart
	```
	graph TD;  
		A-->B;  
		A-->C;  
		B-->D;  
		C-->D;
	```
- #### Gantt Chart
	```
	gantt  
	dateFormat YYYY-MM-DD  
	title Adding GANTT diagram to mermaid  
	excludes weekdays 2014-01-10  
	  
	section A section  
	Completed task :done,    des1, 2014-01-06,2014-01-08  
	Active task :active,  des2, 2014-01-09, 3d  
	Future task : des3, after des2, 5d  
	Future task2 : des4, after des3, 5d
	```

## Obsidian Extended Features (Plugins-based)
### Dataview
- [[dataview js]]
- [[dataview syntax]]
- [[dataview queries]]
### Query
- [[obsidian query]]
## References
- [mermaid - Markdownish syntax for generating flowcharts, sequence diagrams, class diagrams, gantt charts and git graphs. (mermaid-js.github.io)](https://mermaid-js.github.io/mermaid/#/)