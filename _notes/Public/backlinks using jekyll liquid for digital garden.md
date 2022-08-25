---
title: backlinks using jekyll liquid for digital garden
---

- #### Jekyll Garden template assumes the digital garden in markdown are using wiki links for internal links
	- for markdown links `[]()` it is assumed as external links
	- works fine if you’re using Obsidian (or even Logseq) as your digital garden editor and organiser

```html
{% raw %}
<!-- Add backlinks to the current page -->

{%- assign link_count = 0 -%}
{%- assign wiki_link_title = '[' | append: page.title | append: ']' -%}

<!-- Search through site.notes/posts/pages is there a wikilinks -->
{%- for note in site.notes -%}
	{%- if note.url != page.url -%}
		{%- if note.content contains wiki_link_title -%}
			{%- assign link_count = link_count | plus:1 -%}
		{%- endif -%}
	{%- endif -%}
{%- endfor -%}

{%- for note in site.posts -%}
	{%- if note.url != page.url -%}
		{%- if note.content contains wiki_link_title -%}
			{%- assign link_count = link_count | plus:1 -%}
		{%- endif -%}
	{%- endif -%}
{%- endfor -%}

{%- for note in site.pages -%}
	{%- if note.url != page.url -%}
		{%- if note.content contains wiki_link_title -%}
			{%- assign link_count = link_count | plus:1 -%}
		{%- endif -%}
	{%- endif -%}
{%- endfor -%}

<!-- If there's a backlinks, add the div (placeholder) and show them -->
{%- if link_count > 0 -%}
	{%- assign wiki_link_title = '[' | append: page.title | append: ']' -%}
	{%- assign display_class = 'hide' -%}
	{%- if site.preferences.backlinks.enabled -%}
		{%- assign display_class = 'show' -%}
	{%- endif -%}
	
	<div class="related {{display_class}}" id="jekyll-seamless-backlinks">
		<h5 class="meta-title centre-title">Links to this note</h5>
		<div class="related-wrapper">
			{%- for note in site.notes -%}
				{%- if note.url != page.url -%}
					{%- if note.content contains wiki_link_title -%}
						<div class="related-group"><a href="{{ site.baseurl }}{{note.url}}">
							<h6>{{ note.title }}</h6>
							<p class="excerpt" style="margin: 0px; color: var(--color-text-main) !important;">{{ note.content | strip_html | strip | remove: "[[" | remove: "]]" | remove: "-" | escape | truncate: 100 }}</p>
						</a></div>
					{%- endif -%}
				{%- endif -%}
			{%- endfor -%}
		</div>
		
		<br/>
	</div>
	
{%- endif -%}

{% endraw %}

```