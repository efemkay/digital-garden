- #### Metadata
	- topic:: [[00 Coding]]
	- updated:: [[2022-06-09]]
	- reviewed:: [[2022-06-09]]
	- #CodeNote 
- #### Use `attribute` selector to single out html element
	- use `[attribute^="value"]` to select elements with the specified attribute, whose value starts with the specified value.
		- `^=` indicates find only attribute that starts with the value fed to it
		- `$=` for end and 
		- `*=` for anywhere
- #### Efficient css coding (minimizing preceding classes)
	- using `:is()` will allow the preceding class selection to be attached to every element in the `:is()`
		```css
		.markdown-preview-view :is(h1, h2, h3, h4 ,h5, h6) em,
		.cm-header.cm-em {
			color: red;
		}
		```
	- copied from pseudometa via discord [[2022-04-13]]
## References
- [CSS Attribute Selector (w3schools.com)](https://www.w3schools.com/css/css_attribute_selectors.asp)