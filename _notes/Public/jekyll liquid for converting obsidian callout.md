---
title: jekyll liquid for converting obsidian callout
tags: [Reference]
---

- #### this liquid snippet will find blockquote in jekyll website and detect whether it’s an obsidian callout – if so, tag with the appropriate class
	- still missing, I should add `class="callout"` as well
	- [[jekyll process converts markdown first before applying layout]]

```liquid

{% raw %}

{% assign replaced_content = content %}
{% assign content_array = replaced_content | split: '[!' %}

{% for item in content_array %}
	{% if forloop.index > 1 %}
		{% assign postparts = item | split: ']' %}
		{% assign callout_type = postparts[0] %}
		{% assign callout_syntax = '[!' | append: postparts[0] | append: ']' %}
		{% assign callout_syntax_plus = callout_syntax | append: '+' %}
		{% assign callout_syntax_minus = callout_syntax | append: '-' %}
		{% assign preparts = item | split: '<blockquote>' %}
		{% assign bq_part = '<blockquote' | append: ' class="' | append: callout_type | append: '">' %}
		{% assign bq_to_replace = '<blockquote>' | append: preparts[1] %}
		{% assign bq_replacement = bq_part | append: preparts[1] %}
		{% assign replaced_content = replaced_content | replace: bq_to_replace, bq_replacement  %}
		{% assign replaced_content = replaced_content | remove: callout_syntax_plus  %}
		{% assign replaced_content = replaced_content | remove: callout_syntax_minus  %}
		{% assign replaced_content = replaced_content | remove: callout_syntax  %}
	{% endif %}
{% endfor %}

{{ replaced_content }}

{% endraw %}
```

## Metadata
- topic:: [[00 Coding]]
	- related:: [[01 Obsidian]], [[01 Jekyll]]
- created:: [[2022-10-10]]
- updated:: [[2023-01-15]]
- #Reference 
