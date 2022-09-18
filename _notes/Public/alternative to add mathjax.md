---
title: alternative to add mathjax
---

- Here’s an alternative to loading mathjax for showing mathematical equations. Pulled from TeXt theme github repo **but I haven’t test it**
	```html
	{% raw %}
	<script type="text/x-mathjax-config">
		var _config = { tex2jax: {
			inlineMath: [ ['$','$'], ['\\(','\\)'] ]
		}};
		
		{%- if _mathjax_autoNumber == true -%}
			_config.TeX = { equationNumbers: { autoNumber: "all" } };
		{%- endif -%}
		
		MathJax.Hub.Config(_config);
	</script>
	<script type="text/javascript" src="{{ _sources.mathjax }}" async></script>
	{% endraw %}
	```

## References
- [jekyll-TeXt-theme/mathjax.html at master · kitian616/jekyll-TeXt-theme (github.com)](https://github.com/kitian616/jekyll-TeXt-theme/blob/master/_includes/markdown-enhancements/mathjax.html)

## Metadata
- topic:: [[00 Coding]]
	- related:: [[mathjax in github]]
- updated:: [[2022-08-12]]
- reviewed:: [[2022-08-12]]
- #FleetingNote 
