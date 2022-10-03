---
title: iterative web scrape using Power Query
---

- #### Power Query can be used for iterative web scraping but will require the use of **Parameters** and **Invoke Custom Function**
	- The setup is not the most intuitive if you’re coming from R or Python but it’s logical once the steps are clear to us
	- You will need to build the sample query (that’s not iterative yet) with hardcoded parameters as a start – this will be basis for injecting a list of “terms” to iterate.
	- Invoke Custom Function will be used to “marry” the sample query with dynamic “terms” and the list of “terms” to be iterated
- #### Using this approach is good if the scraping is simple but will be a lot harder to modify if we want finer control like scraping ethics and transformation
	- Some website put scraping notice that we may want to check before scraping. Most of the time we want to put delay for scraping ethics, and the do some data transformation. Power Query definitely can do the above steps, but the nature of UI-based steps will make it harder if you’re already familiar with programming languages.
- #### Here are the general steps to go over
	- ##### Prepare list of “terms” that need to be iterated
	- ##### Create a sample query with a hardcoded “term” as basis for iteration later
		- ![](https://images.squarespace-cdn.com/content/v1/5e95f51f53d4fc3d628d178f/1603736934289-K0H3R1B7EF87NXZ2Q1IK/SecondCode.JPG?format=1500w)
	- ##### Create a custom parameter within Power Query
		- ![](https://images.squarespace-cdn.com/content/v1/5e95f51f53d4fc3d628d178f/1603737902267-KHBFKGVC8ZFR0Y6W5UKX/param1.JPG?format=1000w)
		- It’s in the Home tab under Manage Parameters – refer to the list of “terms” before
	- ##### Modify the sample query and replace the hardcoded “term” with the custom parameter
		```pq
		let
		    Source = Web.Page(Web.Contents("https://klse.i3investor.com/web/stock/financial-quarter"&SearchTerm)),
		    Data0 = Source{0}[Data],
		    #"Filtered Rows" = Table.SelectRows(Data0, each not Text.Contains([Date Ann. Date], "Financial")),
		    #"Removed Other Columns" = Table.SelectColumns(#"Filtered Rows",{"Date Ann. Date", "Date Quarter", "Financial Result Revenue", "Financial Result PBT", "Financial Result NP", "Financial Result NP to SH", "Financial Ratio NP Margin", "Financial Ratio ROE", "Per Share Item EPS", "Per Share Item DPS", "Per Share Item NAPS", "Performance QoQ", "Performance YoY"})
		in
		    #"Removed Other Columns"
		```
		
		- create a function from it by right clicking the query and select “Create Function”
	- ##### Add Custom Column Invoke Function in the list of “terms”
		- expand as needed

## Reference
- [Creating Loops in M — Day to Data Stuff](https://www.daytodatastuff.co.uk/blog/creating-loops-in-m)

## Metadata
- topic:: [[00 Coding]]
	- related:: [[01 Power Query]]
- updated:: [[2022-10-01]]
- reviewed:: [[2022-10-01]]
- #Reference 
