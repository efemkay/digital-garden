---
title: R Squared represents explained deviation from mean
share: true
dg-publish: true
---

- #### SSR represents expected deviation while SSE is the unexplained deviation
	- SSR represents the ==expected (or explained) deviation from the mean==. In another word, if we have a prediction line that’s not the same as the average, this deviation (represented by m and c in y = mx + c) is the expected deviation that is accounted for by the prediction formula
	- SSE meanwhile represents the unexplained part, where the prediction value surpassed the expected deviation from the mean. E.g. $\bar{y}=5$ and $\hat{y}=7$ while $y=9$, this means $SSE = (9-7)^2$
- #### R Squared tells us the proportion of the variance in the response variable of a regression model that can be explained by the predictor variables. 
	- By this virtue, the R Squared with its formula i.e. $R^2=SSR/SST$ (where SST is sum of SSR and SSE) is representing how much the regression line (or the prediction line) can explain the deviation from the mean. The remaining is basically unexplained deviation (SSE).
	- This value ranges from 0 to 1. The higher the R2 value, the better a model fits a dataset.
- #### Formula References
	- $R^2= SSR/SST$
	- $SSR = \sum (\hat{y}_{i}-\bar{y})^{2}$
		- this expected (or explained) deviation from the mean, explaining part of the deviation
	- $SSE = \sum (y_{i}-\hat{y}_{i})^{2}$
		- this is **unexplained deviation** from the mean
	- $SST=SSR+SSE=\sum(y_{i}-\bar{y})^{2}$

## References
- [What is Regression? | SSE, SSR, SST | R-squared | Errors (ε vs. e) - YouTube](https://www.youtube.com/watch?v=aq8VU5KLmkY)

## Metadata
- #### Metadata
	- topic:: [[00 Statistics]]
	- updated:: [[2022-03-24]]
	- reviewed:: [[2022-03-24]]
	- #PermanentNote 