---
title: confidence interval vs prediction interval
tags: [LiteratureNote]
---

## Prediction Interval
- **prediction interval** is a type of **confidence interval** (CI) used with predictions in regression analysis; it is a range of values that predicts the value of a new observation, based on your existing model. … A prediction interval is where you expect a future value to fall.
- #### Prediction interval expresses inherent uncertainty in the particular data point **on top of the sampling uncertainty** – this makes them wider than the confidence interval.
	- This is from the basis that there could be multiple prediction value derived from a single predictor value. Especially true for simple linear regression like predicting NPV from UTC or house price from neighbourhood median income.
- Prediction interval generated from a simple linear regression model will be narrowest when the value of x used to generate the predicted y value is close to the mean value of x. c.
	- The higher the r-square value, the wider will be the prediction interval based on a simple linear regression model.

## Confidence Interval
- Confidence intervals express sampling uncertainty in quantities estimated from many data points. The more data, the less sampling uncertainty, and hence the thinner the interval.
- Confidence Interval will be thinner/narrower where the model has more data – hence the sampling uncertainty is smaller.
	- A **confidence interval** is a range of values that is likely to contain a population parameter with a certain level of confidence
- for median income values of 2 through 5 and wider at more extreme values. This is because, for most records in the data, the income is somewhere between 2 and 5. For such cases, the model has more data, hence the sampling uncertainty is smaller.

Second, the prediction interval is much wider than the confidence interval. This is because expresses more uncertainty. On top of the sampling uncertainty, the prediction interval also expresses inherent uncertainty in the particular data point.

## References
- [Confidence Intervals vs Prediction Intervals | Towards Data Science (notion.so)](https://www.notion.so/Confidence-Intervals-vs-Prediction-Intervals-Towards-Data-Science-a5963b551ece4bafa92677f905a68bbc)
	- extract from the original article in medium. good explanation but require good basic stats comprehension
- [What is a prediction interval in linear regression? - In a world of unknown (bewedwell.com)](https://bewedwell.com/fortune-teller/what-is-a-prediction-interval-in-linear-regression.html#:~:text=The%20prediction%20interval%20generated%20from%20a%20simple%20linear,interval%20based%20on%20a%20simple%20linear%20regression%20model.)
	- a relatively more layman explanation but does provide much insights

## Metadata
- topic:: [[00 Statistics]]
- updated:: [[2022-08-29]]
- reviewed:: [[2022-08-29]]
- #LiteratureNote 
