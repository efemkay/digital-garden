```liquid
{% raw %}
<!-- FMK Faiz MK mod. find "==" and replace with "<mark>". First attempt -->
{%- for note in site.notes -%}
	{%- assign replaced_content = replaced_content | replace: ' ==', '&nbsp;<mark>' -%}
	{%- assign replaced_content = replaced_content | replace: '== ', '</mark>&nbsp;' -%}
	{%- assign replaced_content = replaced_content | replace: '==.', '</mark>.' -%}
{%- endfor -%}
{% endraw %}
```