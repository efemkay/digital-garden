```html
<div class="content">

<!-- split content everytime it finds wiki link open bracket, assign to a variable -->
{%- assign content_array = content | split:'[[' -%}

<!-- loop over the split content to find the closing bracket, anything in between
	is the internal link. Use link_joiner to mush links into one variable -->
{%- assign link_joiner_delimiter = '$@' -%}
{%- for item in content_array -%}

<!-- proceed next only if there's a wikilink. if forloop.index is 1 or less, then there's none -->
	{%- if forloop.index > 1 -%}
		{%- assign itemparts = item | split:']]' -%}
		{%- assign internal_link = itemparts[0] -%}
		{%- assign external_link = itemparts[0] | split:external_link_delimiter -%}
		{%- assign sidenote = itemparts[0] | split:sidenote_delimiter -%}
		
		{%- if external_link[1] == nil -%}
			{%- assign result_posts = site.posts | where: 'title',itemparts[0] -%}
			{%- assign result_posts = site.notes | where: 'title',itemparts[0] -%}
			{%- assign result_pages = site.pages | where: 'title',itemparts[0] -%}
			{%- assign internal_links = internal_links | append: link_joiner_delimiter | append: internal_link -%}
			{%- assign internal_urls = internal_urls | append: link_joiner_delimiter | append: result_posts[0].url | append: result_pages[0].url -%}
		{%- else -%}
			{%- assign external_links = external_links | append: link_joiner_delimiter | append: external_link[0] -%}
			{%- assign external_urls = external_urls | append: link_joiner_delimiter | append: external_link[1] -%}
		{%- endif -%}
		
	{%- endif -%}

{%- endfor -%}
```