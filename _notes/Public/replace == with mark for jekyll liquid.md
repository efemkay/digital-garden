---
title: replace == with mark for jekyll liquid
---

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
- updated:: [[2022-09-18]]
- reviewed:: [[2022-09-18]]
- #Reference 
