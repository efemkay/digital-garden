---
alias: Root Mean Squared Error vs R Squared
title: RMSE vs R2
---

- #### RMSE tells us how far apart the predicted values are from the observed values in a dataset, on average. The lower the RMSE, the better a model fits a dataset.
	- The **RMSE** value tells us that the average deviation between the predicted house price made by the model and the actual house price is \$14,342.
	- It is calculated as: $RMSE=\frac{1}{n}\sum(\hat{y}_{i}–y_{i})^{2}$
- #### R2 tells us the proportion of the variance in the response variable of a regression model that can be explained by the predictor variables. This value ranges from 0 to 1.
	- The higher the R2 value, the better a model fits a dataset.
	- The **R2** value tells us that the predictor variables in the model are able to explain xx% of the variation in the values.
	- [[R Squared represents explained deviation from mean]]

> [!note]- Note on RMSE variables
> where:
> - Σ is a symbol that means “sum”
> - Pi is the predicted value for the ith observation
> - Oi is the observed value for the ith observation
> - n is the sample size

> [!note]- Note on R Squared variables
> - SSR represents the sum of squares of residuals
> - SST represents the total sum of squares

- #### RMSE vs. R2: Which Metric Should You Use?
	- When assessing how well a model fits a dataset, it’s useful to calculate _both_ the RMSE and the R2 value because each metric tells us something different.
	- One one hand, RMSE tells us the typical distance between the predicted value made by the regression model and the actual value.
	- On the other hand, R2 tells us how well the predictor variables can explain the variation in the response variable.

## References
- [RMSE vs. R-Squared: Which Metric Should You Use? (statology.org)](https://www.statology.org/rmse-vs-r-squared/)
- [What is Regression? | SSE, SSR, SST | R-squared | Errors (ε vs. e) - YouTube](https://www.youtube.com/watch?v=aq8VU5KLmkY)
	- for SSE, SSR and SST

## Metadata
- topic:: [[00 Statistics]]
- updated:: [[2022-03-24]]
- reviewed:: [[2022-03-24]]
- #LiteratureNote 