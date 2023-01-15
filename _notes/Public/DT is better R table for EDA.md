---
title: DT is better R table for EDA
tags: [Reference]
---

- #### When doing [[EDA Steps]], sometimes showing prelim findings in table gives better visual with minimal efforts
	- But table visualisation can be quite complex if necessary especially with crosstab and grouped headers like gt table example below
		- ![](https://gt.rstudio.com/reference/figures/gt_parts_of_a_table.svg)
- #### For me, ==DT is a better R table to use during EDA== due to specific features like pagination, ability to filter table column and some built-in functions
	- Pagination / paged table is quite important during EDA as we’re still not sure how to filter the data and potentially want to have the ability to inspect the whole thing without taking too much (html) report real estate
		- This is possible with DT because it’s an html table. similar to rmarkdown::paged_table() and knitr::kable()
	- DT can column filter (thus limit number of rows per page) without having to filter the dataset itself – useful to minimise number of dataset
	- There’s a few built in functions that I find useful such as to format columns with preset for numeric, date and percentage
- #### Alternatives
	- alternative to this would be gt but it cannot do pagination
		- it’s designed to be a more beautiful table, similar to ggplot2
	- rhandsontable is a bit difficult to work with. But it’s useful to make editable table or excel like table with locked rows and columns

## References
- [DT: An R interface to the DataTables library (rstudio.github.io)](https://rstudio.github.io/DT/)
- [Easily Create Presentation-Ready Display Tables • gt (rstudio.com)](https://gt.rstudio.com/)
- [rhandsontable (jrowen.github.io)](https://jrowen.github.io/rhandsontable/)

## Metadata
- topic:: [[00 Coding]]
- created:: [[2022-01-23]]
- updated:: [[2023-01-15]]
- #Reference 