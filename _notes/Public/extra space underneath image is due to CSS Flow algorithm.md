---
title: extra space underneath image is due to CSS Flow algorithm
tags: [PermanentNote]
---

- #### Designing a layout using CSS may present a classic “bewildering CSS” problem, where there’s a bit of extra space underneath the image that most people call “inline magic space”
	- see example here [# Inline Magic Space (joshwcomeau.com)](https://www.joshwcomeau.com/css/understanding-layout-algorithms/#inline-magic-space)
	- If you inspect it with your developer tools, you'll notice a discrepancy of a few pixels:
- #### The “inline magic space” is caused by a rule within the Flow layout algorithm that inline elements should be affected by `line-height`.
	- If you were focusing exclusively on studying what specific CSS properties do, you'd never understand where this mysterious space is coming from.
		- It isn't explained in the MDN pages for `display` or `line-height`.

> [!note]- Understanding Layout Algorithms – Layout algorithms
> - So, what is a “layout algorithm”? You're probably already familiar with some of them. They include:
> 	- Flexbox
> 	- Positioned (eg. `position: absolute`)
> 	- Grid
> 	- Table
> 	- Flow
> 
> (Technically, they're called layout _modes_, not layout algorithms. But I find “layout algorithm” to be a more helpful label.)> 

## References
- [Application error: a client-side exception has occurred (joshwcomeau.com)](https://www.joshwcomeau.com/css/understanding-layout-algorithms/)

## Metadata
- topic:: [[00 Coding]]
	- related:: [[css notes]]
- updated:: [[2022-07-21]]
- reviewed:: [[2022-07-21]]
- #PermanentNote 
