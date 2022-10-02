---
title: mermaid gantt chart template
tags: [Reference]
---

- #### Here’s a sort of complete example of the code block
	````md
	```mermaid
	gantt
		title Gantt Chart Title
		dateFormat YYYY-MM-DD
		axisFormat %d/%m
		section Section Name
			Milestone Name : milestone, 2022-09-05, 0d
		section Section Name 2
			Activity Name : act-code, 2022-11-14, 2022-11-20
	```
	````
- #### Use `axisFormat` to have the axis in simpler format that will fit especially when timeline is a bit long
	- available format is the typical code for defining dates
	- [Mermaid Input Date Format](https://mermaid-js.github.io/mermaid/#/gantt?id=input-date-format)
- #### For flowchart see link below
	- [[Mermaid Flowchart Guide]]

## References
- [[Feature request] gantt diagram axis format · Issue #269 · mermaid-js/mermaid (github.com)](https://github.com/mermaid-js/mermaid/issues/269)

## Metadata
- topic:: [[00 Coding]]
- updated:: [[2022-09-29]]
- reviewed:: [[2022-09-29]]
- #Reference 
