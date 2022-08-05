---
title: add mathjax to github pages and jekyll
---

`this note is basically a copy from bodunhu.com blog, but edited for correction`


- ### brief summary on how to add Mathjax v3 support to your Jekyll website
	- Add the following line inside `_config.yml` located in your root directory. Usually it’s already included in most jekyll-based blog setup
		```yaml
		markdown: kramdown
		```
	- Create a file called `mathjax.html` insides `_includes/`, add these lines (these settings come from the Mathjax [documentation](https://docs.mathjax.org/en/latest/web/configuration.html)):
		```html
		<script>
		MathJax = {
		  tex: {
		    inlineMath: [ ['$', '$'], ['\\(', '\\)'] ]
		  },
		  svg: {
		    fontCache: 'global'
		  }
		};
		</script>
		<script
		  type="text/javascript" id="MathJax-script" async
		  src="https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-chtml.js">
		</script>
		```
	- For Jekyll, add this line in your `_includes/head.html` before `</head>`:
		```liquid
		{% include mathjax.html %}
		```
		- the original blog had a typo that written wrongly as
			```
			{% include mathjax.html >}}
			``` 
	- Now you can write in-line math equations in your markdown file like:
		```latex
		\\(f(x) = x^2\\)
		```
		```latex
		$f(x) = x^2$
		```
		- The above text will be render to: $f(x)=x2$

> [!info]- Additional Info on Mathjax v2 and v3
> - If you are already using Mathjax v2 and wish to just convert it to v3, you may also try this configuration [converter](https://mathjax.github.io/MathJax-demos-web/convert-configuration/convert-configuration.html). There is a much more detailed [guide](https://docs.mathjax.org/en/latest/upgrading/v2.html) but it may contain information unnecessary to average Hugo or Jekyll users.html) how to migrate from mathjax v2 to v3.
> - The most useful resource is the official Mathjax [documentation](https://docs.mathjax.org/en/latest/).

## References
- [Add MathJax v3 Support to Jekyll and Hugo (bodunhu.com)](https://www.bodunhu.com/blog/posts/add-mathjax-v3-support-to-jekyll-and-hugo/)
- [MathJax in Jekyll – Arthur O'Dwyer – Stuff mostly about C++ (quuxplusone.github.io)](https://quuxplusone.github.io/blog/2018/08/05/mathjax-in-jekyll/)
	- [MathJax v3 in Jekyll – Arthur O'Dwyer – Stuff mostly about C++ (quuxplusone.github.io)](https://quuxplusone.github.io/blog/2020/08/19/mathjax-v3-in-jekyll/)
## Metadata
- topic:: [[00 Coding]]
	- related:: [[mathjax in github]]
- updated:: [[2022-07-15]]
- reviewed:: [[2022-07-15]]
- #FleetingNote 
