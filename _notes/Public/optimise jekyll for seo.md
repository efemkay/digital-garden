
- So that takes care of _Title_ and _Description_. But remember, you have to explicitly add Title and Description in the Front Matter to all your posts as shown in the example below. It doesn’t matter how long your description is in the Frontmatter. It will be truncated to 160 characters in the meta tag.
	```prose
	---
	title: How to Create a Beautiful Jekyll Blog?
	description: I created this beautiful looking Jekyll blog by forking a repository. You can also fork it to make it yours. Jekyll is a simple blog generator. The community is growing and the number of plugins is also growing. I have moved all my blogs to Jekyll!
	---
	
	content
	
	```
- Open Graph is found by facebook as a way to understand a link better. When you share your website link, there are chances that some things may miss out or some unwanted data is being detected. In order to avoid this and for your link to be better recognized by social media sites, you have to implement Open Graph.
	- Open Graph tags for Jekyll
		```html
		<meta property="og:locale" content="en_US">
		<meta property="og:type" content="article">
		<meta property="og:title" content="{%if page.title %}{{ page.title }}{% else %}{{ site.title }}{% endif %}">
		<meta property="og:url" content="{{ site.url }}{{ page.url }}">
		<meta property="og:image" content="{{ site.url }}/thumbs/{{ page.image }}" />
		<meta property="og:site_name" content="WebJeda Blog">
		<meta property="article:publisher" content="http://www.facebook.com/webjeda" />
		<meta property="article:author" content="https://www.facebook.com/sharu725" />
		<meta property="article:published_time" content="{{ page.date }}" />
		<meta property="og:description" content="{% if page.description %}{{ page.description }}{% else %}{{ site.description }}{% endif %}">
		```


## References
- [10 Must do Jekyll SEO optimizations | Webjeda](https://blog.webjeda.com/optimize-jekyll-seo/)

## Metadata
- topic:: [[00 Coding]]
	- related:: [[01 Jekyll]]
- updated:: [[2022-09-23]]
- reviewed:: [[2022-09-23]]
- #Reference 
