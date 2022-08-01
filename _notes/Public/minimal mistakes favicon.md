---
title: minimal mistakes favicon
---

- #### Minimal Mistakes Jekyll theme does not provide direct way to add favicon, but we can manually add it using the following steps
	- place favicon logo with name `favicon.png` in the main `/` directory
	- add the following snippet in `_includes/head.html`
		```html
		<link rel="shortcut icon" type="image/png" href="/favicon.png">
		```

## References
- [favicon missing on all pages · Issue #3487 · mmistakes/minimal-mistakes (github.com)](https://github.com/mmistakes/minimal-mistakes/issues/3487)

## Metadata
- topic:: [[00 Coding]]
	- related:: [[Blogging]]
- updated:: [[2022-06-20]]
- reviewed:: [[2022-06-20]]
- #Reference 
