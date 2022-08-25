## Interpreting the results

- To view the results of the model, you can use the `summary()` function in R:
- `summary(income.happiness.lm)`
- This function takes the most important parameters from the linear model and puts them into a table, which looks like this:
	- ![Simple linear regression summary output in R](https://cdn.scribbr.com/wp-content/uploads//2020/02/simple-linear-regression-summary-output-in-r.png)

- This output table first repeats the formula that was used to generate the results (‘Call’), then summarizes the model residuals (‘Residuals’), which give an idea of how well the model fits the real data.
- Next is the ‘Coefficients’ table. The first row gives the estimates of the y-intercept, and the second row gives the regression coefficient of the model.
- Row 1 of the table is labeled `(Intercept)`. This is the y-intercept of the regression equation, with a value of 0.20. You can plug this into your regression equation if you want to predict happiness values across the range of income that you have observed:

> _happiness_ = **0.20** + 0.71*income ± 0.018

- The next row in the ‘Coefficients’ table is income. This is the row that describes the estimated effect of income on reported happiness:
	- The `Estimate` column is the estimated **effect**, also called the **regression coefficient** or r2 value. The number in the table (0.713) tells us that for every one unit increase in income (where one unit of income = 10,000) there is a corresponding 0.71-unit increase in reported happiness (where happiness is a scale of 1 to 10).
	- The `Std. Error` column displays the **standard error** of the estimate. This number shows how much variation there is in our estimate of the relationship between income and happiness.
	- The `t value` column displays the [**test statistic**](https://www.scribbr.com/statistics/test-statistic/). Unless you specify otherwise, the test statistic used in linear regression is the _t_-value from a two-sided [t-test](https://www.scribbr.com/statistics/t-test/). The larger the test statistic, the less likely it is that our results occurred by chance.
	- The `Pr(>| t |)` column shows the [**_p_-value**](https://www.scribbr.com/statistics/p-value/). This number tells us how likely we are to see the estimated effect of income on happiness if the [null hypothesis](https://www.scribbr.com/statistics/null-and-alternative-hypotheses/) of no effect were true.
		- Because the _p_-value is so low (_p_ < 0.001), we can **reject the null hypothesis** and conclude that income has a statistically significant effect on happiness.
- The last three lines of the model summary are statistics about the model as a whole. The most important thing to notice here is the _p_-value of the model. Here it is significant (_p_ < 0.001), which means that this model is a good fit for the observed data.

## References
- [Simple Linear Regression | An Easy Introduction & Examples (scribbr.com)](https://www.scribbr.com/statistics/simple-linear-regression/#assumptions)
- [Linear Regression in R | An Easy Step-by-Step Guide (scribbr.com)](https://www.scribbr.com/statistics/linear-regression-in-r/)
	- step by step how to run lm using R

## Metadata
- topic:: [[00 Statistics]]
- updated:: [[2022-08-23]]
- reviewed:: [[2022-08-23]]
- #FleetingNote 
