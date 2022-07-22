---
title: using css combinators to target specific element
---

- css combinators
	- descendant selector (space)
	- child selector (>)
	- adjacent sibling selector (+)
	- general sibling selector (~)
- using combinators, I can target specific element, especially if the element does not have id or specific class
	- example per below
		```css
		div[data-heading^="Metadata"] + div > ul {
			background-color: var(--background-accent); border-radius: 0.4rem;
		}
		```

## Metadata
- topic:: [[00 Coding]]
	- related:: [[css snippets]]
- updated:: [[2022-07-15]]
- reviewed:: [[2022-07-15]]
- #LiteratureNote 

## References
- [CSS Combinators (w3schools.com)](https://www.w3schools.com/Css/css_combinators.asp)
- [Child and Sibling Selectors | CSS-Tricks - CSS-Tricks](https://css-tricks.com/child-and-sibling-selectors/)