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
	- ##### Create a custom parameter within Power Query
		- It’s in the Home tab under Manage Parameters – refer to the list of “terms” before
	- ##### Modify the sample query and replace the hardcoded “term” with the custom parameter
		- create a function from it by right clicking the query and select “Create Function”
	- ##### Add Custom Column Invoke Function in the list of “terms”
		- expand as needed

## Reference
- [Creating Loops in M — Day to Data Stuff](https://www.daytodatastuff.co.uk/blog/creating-loops-in-m)

## Metadata
- topic:: [[00 Coding]]
	- related:: [[Power Query]]
- updated:: [[2022-09-04]]
- reviewed:: [[2022-09-04]]
- #FleetingNote 
