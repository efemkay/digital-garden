---
title: scatter plot using Obsidian Chart
tags: [Reference]
---

- #### This scatter plot is using Obsidian Chart plugin (that uses chart js). The syntax is different a bit and code block is using advanced-chart insted
	- the following code block will produce the chart below. If I don’t want line, just change the `"type": line` to `"type": scatter`

---
##### code block
```js
{
	"type": "line",
	"data":
	{
		"datasets":
		[{
			"label": "Scatter Dataset",
			"data": [
				{ "x": 10, "y": 2.30 }, 
				{ "x": "20", "y": "3.00" }, 
				{ "x": "30", "y": "3.40" }, 
				{ "x": "40", "y": "3.69" }],
			"backgroundColor": "rgb(255, 99, 132)" 
		}] 
	},
	"options": { "scales": { "x": { "type": "linear", "position": "bottom"} } }
}
```

---
##### rendered chart
```advanced-chart
{
	"type": "line",
	"data":
	{
		"datasets":
		[{
			"label": "Scatter Dataset",
			"data": [
				{ "x": 10, "y": 2.30 }, 
				{ "x": "20", "y": "3.00" }, 
				{ "x": "30", "y": "3.40" }, 
				{ "x": "40", "y": "3.69" }],
			"backgroundColor": "rgb(255, 99, 132)" 
		}] 
	},
	"options": { "scales": { "x": { "type": "linear", "position": "bottom"} } }
}
```

---

```js
{
	"type": "scatter",
	"data":
	{
		"datasets":
		[{
			"label": "Scatter Dataset",
			"data": [
				{"x":-10, "y":0},
				{"x":-0, "y":5},
				{"x":5, "y":7}
				],
			"backgroundColor": "rgb(255, 99, 132)" 
		}] 
	},
	"options": { "scales": { "x": { "type": "linear", "position": "bottom"} } }
}
```

## Metadata
- topic:: [[00 Coding]]
- updated:: [[2022-09-30]]
- reviewed:: [[2022-09-30]]
- #Reference 
