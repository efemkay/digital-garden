---
title: log scale for R plot
tags: [Reference]
---

- #### We can use the [Scales](https://scales.r-lib.org/) package ready function to make the axis scaled non linearly e.g. `scale_x_continuous()` or `scale_x_log10(...)`
	- we can further cut off the plot (visually) using the `limits` argument guided by [coord_cartesian](https://ggplot2.tidyverse.org/reference/coord_cartesian.html) syntax
	- useful ones are
		- `scale_x_log10()`
		- `scale_x_sqrt()`
		- `scale_x_continuous(trans=‘log2’)`


## References
- [How to Create a ggplot Frequency Plot in R (koalatea.io)](https://koalatea.io/r-gglot-frequency-plot/)
- [ggplot2 axis scales and transformations - Easy Guides - Wiki - STHDA](http://www.sthda.com/english/wiki/ggplot2-axis-scales-and-transformations)
- [Position scales for continuous data (x & y) — scale_continuous • ggplot2 (tidyverse.org)](https://ggplot2.tidyverse.org/reference/scale_continuous.html)

## Metadata
- topic:: [[00 Coding]]
	- [[01 R programming]]
- updated:: [[2022-10-23]]
- reviewed:: [[2022-10-23]]
- #Reference 
