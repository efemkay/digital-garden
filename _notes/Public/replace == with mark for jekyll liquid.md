---
title: replace == with mark for jekyll liquid
---

- #### this latest snippet is a bit  more refined and scalable. need to figure out other possible permutations
	- currently doesn’t work well with my note [[shortcuts I use for email clients]]

```liquid
{% raw %}

<!-- Mod for markdown highlights ("==") -->
<!-- First part is finding closing tag i.e "==" with trailing space " " that DOESN'T have leading space i.e. " == " -->
{%- assign content_array = replaced_content | split:'== ' -%}
{%- assign link_joiner_delimiter = '$@' -%}
{%- for item in content_array -%}
	{% assign last_split = item | split: " " | last %}
	{%- if forloop.index > 1 and last_split != "" -%}
		{%- assign itemparts = item | split:'==' -%}
		{%- assign text_to_hl = itemparts[1] -%}
		{%- assign highlight_md = '==' | append: text_to_hl | append: '==' -%}
		{%- assign highlight_html = '<mark>' | append: text_to_hl | append: '</mark>' -%}
		{%- assign replaced_content = replaced_content | replace: highlight_md,highlight_html -%}
	{%- endif -%}
{%- endfor -%}
<!-- Second part is finding opening tag "==" with leading space " " that DOESN'T have trailing space i.e " == " -->
{%- assign content_array = replaced_content | split:' ==' -%}
{%- for item in content_array -%}
	{% assign first_split = item | split: " " | first %}
	{%- if forloop.index > 1 and first_split != "" -%}
		{%- assign itemparts = item | split:'==' -%}
		{%- assign text_to_hl = itemparts[0] -%}
		{%- assign highlight_md = '==' | append: text_to_hl | append: '==' -%}
		{%- assign highlight_html = '<mark>' | append: text_to_hl | append: '</mark>' -%}
		{%- assign replaced_content = replaced_content | replace: highlight_md,highlight_html -%}
	{%- endif -%}
{%- endfor -%}
<!-- End of FMK Faiz MK mod. find "==" and replace with "<mark>". First attempt -->

{% raw %}
```


##### Old code, was very crude

```liquid
{% raw %}
<!-- FMK Faiz MK mod. find "==" and replace with "<mark>". First attempt -->
{%- for note in site.notes -%}
	{%- assign replaced_content = replaced_content | replace: ' ==', '&nbsp;<mark>' -%}
	{%- assign replaced_content = replaced_content | replace: '== ', '</mark>&nbsp;' -%}
	{%- assign replaced_content = replaced_content | replace: '==&nbsp;', '</mark>&nbsp;' -%}
	{%- assign replaced_content = replaced_content | replace: '==.', '</mark>.' -%}
{%- endfor -%}
{% endraw %}
```

## References
- I manually code this (hence the very crude approach)

## Metadata
- topic:: [[00 Coding]]
	- related:: [[01 Obsidian]], [[01 Jekyll]]
- updated:: [[2022-10-10]]
- reviewed:: [[2022-10-10]]
- #Reference 
