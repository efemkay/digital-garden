---
title: R Squared represents explained deviation from mean
share: true
dg-publish: true
---

- #### SSR represents expected deviation while SSE is the unexplained deviation
	- SSR represents the ==expected (or explained) deviation from the mean==. In another word, if we have a prediction line that’s not the same as the average, this deviation (represented by m and c in y = mx + c) is the expected deviation that is accounted for by the prediction formula
	- SSE meanwhile represents the unexplained part, where the prediction value surpassed the expected deviation from the mean. E.g. $\bar{y}=5$ and $\hat{y}=7$ while $y=9$, this means $SSE = (9-7)^2$
	- Because of this [[extreme values can misleadingly improve R squared]]
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

> [!info]- additional info - What does R2 quantify
> - The value R2 quantifies goodness of fit. It compares the fit of your model to the fit of a horizontal line through the mean of all Y values.
> - You can think of R2 as the fraction of the total variance of Y that is explained by the model (equation). With experimental data (and a sensible model) you will always obtain results between 0.0 and 1.0.
> - Another way to think about R2 is the square of the correlation coefficient between the actual and predicted Y values.
> - [GraphPad Prism 8 Curve Fitting Guide - R squared](https://www.graphpad.com/guides/prism/8/curve-fitting/reg_intepretingnonlinr2.htm)

- R is Pearson Correlation Coefficient

## References
- [What is Regression? / SSE, SSR, SST / R-squared / Errors (ε vs. e) - YouTube](https://www.youtube.com/watch?v=aq8VU5KLmkY)

## Metadata
- #### Metadata
	- topic:: [[00 Statistics]]
	- updated:: [[2022-09-10]]
	- reviewed:: [[2022-09-10]]
	- #PermanentNote 