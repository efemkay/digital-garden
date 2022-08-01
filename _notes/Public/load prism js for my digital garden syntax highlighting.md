---
title: load prism js for my digital garden syntax highlighting
---

- #### Add prism.js and prism.css based on CDN to my blog or website (digital-garden) to give a proper syntax highlighting
	- add the following line to `<head>`
		- `<link href="https://{{cdn}}/prismjs@v1.x/themes/prism.css" rel="stylesheet" />`
	- add the following lines to `<body>`. come to think, perhaps can only on the `<head>`?
		- `<script src="https://{{cdn}}/prismjs@v1.x/components/prism-core.min.js"></script>`
		- `<script src="https://{{cdn}}/prismjs@v1.x/plugins/autoloader/prism-autoloader.min.js"></script>`
- my preferred cdn for prism js
	- [prism - Libraries - cdnjs - The #1 free and open source CDN built to make life easier for developers](https://cdnjs.com/libraries/prism)
	- `https://cdnjs.cloudflare.com/ajax/libs/prism/9000.0.1/components/prism-core.min.js`
	- https://cdnjs.cloudflare.com/ajax/libs/prism/9000.0.1/themes/prism-dark.min.css
	- https://cdnjs.cloudflare.com/ajax/libs/prism/9000.0.1/themes/prism.min.css
	- https://cdn.jsdelivr.net/npm/prismjs@1.28.0/plugins/autoloader/prism-autoloader.min.js
- more complete example per below

```html
<!DOCTYPE html>
<html>
<head>
	...
	<link href="https://{{cdn}}/prismjs@v1.x/themes/prism.css" rel="stylesheet" />
</head>
<body>
	...
	<script src="https://{{cdn}}/prismjs@v1.x/components/prism-core.min.js"></script>
	<script src="https://{{cdn}}/prismjs@v1.x/plugins/autoloader/prism-autoloader.min.js"></script>
</body>
</html>
```

## References
- [Prism (prismjs.com)](https://prismjs.com/#basic-usage-cdn)

## Metadata
- topic:: [[00 Coding]]
- updated:: [[2022-07-30]]
- reviewed:: [[2022-07-30]]
- #Reference 
