---
title: max function in power query
---
- #### Metadata
	- topic:: [[00 Coding]]
		- related:: [[Power Query]], [[Power BI]]
	- updated:: [[2022-06-21]]
	- reviewed:: [[2022-06-21]]
	- #PersonalNote #CodeNote 
- #### I can use `List.Max` to find a max of two values (or a custom array), especially for using max of 0 or the @column (active row for the column)
	- use curly braces to encapsulate the values to compare i.e. `List.Max({[0, @column]})`
	- this is based on MS Docs’s example and worked in my test
		```powerquery
		List.Max({1, 4, 7, 3, -2, 5}, 1)
		```
	- syntax help
		```powerquery
		List.Max(**list** as list, optional **default** as any, optional **comparisonCriteria** as any, optional **includeNulls** as nullable logical) as any
		```

## References
- [List.Max - PowerQuery M | Microsoft Docs](https://docs.microsoft.com/en-us/powerquery-m/list-max)