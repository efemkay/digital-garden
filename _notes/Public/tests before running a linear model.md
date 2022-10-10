---
title: tests before running a linear model
tags: [Reference]
---

> Examples below shows R code and functions since I use primarily R for data analysis. You can google for similar function in Python (or other data analysis tool)

- #### Independence of observations (aka no autocorrelation)
	- Use the `cor()` function to test the relationship between your independent variables and make sure they aren’t too highly correlated.
	- `cor(heart.data$biking, heart.data$smoking)`
	- When we run this code, the output is 0.015. The correlation between biking and smoking is small (0.015 is only a 1.5% correlation), so we can include both parameters in our model.
- #### Normality
	- Use the `hist()` function to test whether your dependent variable follows a [normal distribution](https://www.scribbr.com/statistics/normal-distribution/).
		- e.g. `hist(heart.data$heart.disease)`
		- ![Multiple regression histogram](https://cdn.scribbr.com/wp-content/uploads//2020/02/multiple-regression-histogram.png)
	- The distribution of observations is roughly bell-shaped, so we can proceed with the linear regression.
- #### Linearity
	- We can check this using two scatterplots: one for biking and heart disease, and one for smoking and heart disease.
		- e.g. `plot(heart.disease ~ biking, data=heart.data)`
		- ![Multiple regression scatter plot 1](https://cdn.scribbr.com/wp-content/uploads//2020/02/multiple-regression-scatter-plot-1-1.png)
		- e.g. `plot(heart.disease ~ smoking, data=heart.data)`
		- ![Multiple regression scatter plot 2](https://cdn.scribbr.com/wp-content/uploads//2020/02/multiple-regression-scatter-plot-2-1.png)
	- Although the relationship between smoking and heart disease is a bit less clear, it still appears linear. We can proceed with linear regression.
- #### Homoscedasticity
	- We will check this after we make the model.

## References
- [Linear Regression in R | An Easy Step-by-Step Guide (scribbr.com)](https://www.scribbr.com/statistics/linear-regression-in-r/)

## Metadata
- topic:: [[00 Statistics]]
- updated:: [[2022-10-10]]
- reviewed:: [[2022-10-10]]
- #Reference 
