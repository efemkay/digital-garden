---
title: Jekyll Garden uses lunr js
tags: [Reference]
---

[Jekyll-Garden/jekyll-garden.github.io: A Digital Garden Theme for Jekyll. Jekyll Garden lets you create a static HTML version of your markdown notes and publish via Github pages. Made for Obsidian users!](https://github.com/Jekyll-Garden/jekyll-garden.github.io)
- If I need to include search either in the “header” or all notes, I need to include the following html snippets (but of course minus the liquid if-else statement)
- it is using [Lunrjs](https://lunrjs.com/) and capable of full text search – since it is indexed, it is also very fast
- for Jekyll-Garden it is located in `_includes\Feed.html`
- Minimal Mistakes also offer Lunrjs search (alongside with other options such as Algolia and Google)

```html
{%- if site.preferences.search.enabled -%}
	<!-- search bar -->
	<div class="block">
		<input class="input is-medium" type="text" placeholder="Search notes.." id="search-input" autocomplete="off">
		<div id="search-results" class="search-results"></div>
	</div>
	<script type="text/javascript" src="{{ site.baseurl }}/assets/js/vendor/lunr.min.js"></script>
	<script src="{{ site.baseurl }}/assets/js/Search.js"></script>
{%- endif -%}
```

## Metadata
- topic:: [[00 Coding]]
	- related::
- updated:: [[2022-07-12]]
- reviewed:: [[2022-07-12]]
- #Reference 
