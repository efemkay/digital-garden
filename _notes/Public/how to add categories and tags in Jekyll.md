---
title: how to add categories and tags in Jekyll
---

- #### There seems to be 2 way (that I know of) to add categories or tags archive pages i.e. using Jekyll-Archive plugin or write your own liquid template
	- ##### for Jekyll-Archive plugin
		- Add `gem 'jekyll-archives'` to your site's Gemfile
		- Add the following to your site's `_config.yml`:
			```
			plugins:
			  - jekyll-archives
			```
		- Archives can be configured by using the `jekyll-archives` key in the Jekyll configuration (`_config.yml`) file. See the [Configuration](https://github.com/jekyll/jekyll-archives/blob/master/docs/configuration.md) page for a full list of configuration options.
	- ##### for using Liquid templating here are some references
		- [Adding category and tag archive pages to Jekyll | Principal Solutions Architect @AWSCloud. Technologist. Founder. Helping startups live their best cloud life. (mikeapted.com)](https://www.mikeapted.com/jekyll/2015/12/30/category-and-tag-archives-in-jekyll-no-plugins/)
		- [Tags In Jekyll (charliepark.org)](https://charliepark.org/tags-in-jekyll)

## References
- [[49] Create a Free Data Blog with Jekyll & GitHub Pages (Lauren Burke) - YouTube](https://www.youtube.com/watch?v=7SBXl94xNl8)
	- quick primer on categories and tags in Jekyll but does not show step by step as much

## Metadata
- topic:: [[00 Coding]]
	- related:: [[01 Jekyll]]
- updated:: [[2022-08-28]]
- reviewed:: [[2022-08-28]]
- #Reference 
