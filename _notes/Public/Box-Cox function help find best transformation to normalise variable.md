---
title: Box-Cox function help find best transformation to normalise variable
tags: [PermanentNote]
---

- #### Box-Cox transformation will do series of test to find the best transformation method to normalise your variable
	- This is useful when you’re working on a more complex variable and the suitable method for normalising the variable isn’t visually clear. See [[transformation can make relationship linear]]
	- As this is iterative in nature, I don’t think it’s possible to do manually like other transformation. Snippet below is R code to run the transformation
		```r
		boxcox(object,    # lm or aov objects or formulas
		       lambda = seq(-2, 2, 1/10), # Vector of values of lambda
		       plotit = TRUE,  # Create a plot or not
		       interp,         # Logical. Controls if spline interpolation is used
		       eps = 1/50,     # Tolerance for lambda. Defaults to 0.02.
		       xlab = expression(lambda), # X-axis title
		       ylab = "log-Likelihood",   # Y-axis title
		       …) # Additional arguments for model fitting
		
		# install.packages(MASS)
		library(MASS)
		# x is an array or single variable/column from a dataframe
		boxcox(lm(x ~ 1))
		```

## References
- [Box-Cox transformation in R [boxcox function from MASS package] (r-coder.com)](https://r-coder.com/box-cox-transformation-r/)

## Metadata
- topic:: [[00 Statistics]]
- updated:: [[2022-10-10]]
- reviewed:: [[2022-10-10]]
- #PermanentNote 
