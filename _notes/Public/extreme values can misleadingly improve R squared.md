---
title: extreme values can misleadingly improve R squared
---

- #### R squared dependency on sample’s mean makes it susceptible to extreme values (e.g. outliers) when measuring for linear regression or correlation
	- This is because Pearson’s R measure distances of data points from its x-mean and y-mean – linearity and homoscedasticity assumption is critical
	- ![](https://www.statology.org/wp-content/uploads/2019/01/correl6.jpg)
	- Formula to find the Pearson correlation coefficient, denoted as _R_
		- $$ R_{xy}=\frac
		  {\sum\limits_{i=1}^n(x_i-\bar{x})(y_i-\bar{y})}
		  {
		   \sqrt{\sum\limits_{i=i}^{n}(x_i-\bar{x})^2 }
		   \sqrt{\sum\limits_{i=i}^{n}(y_i-\bar{y})^2 }
		  } $$
	- In the case where you do have outliers, the resultant R including them may mislead by either reducing the strength (when the outlier is off tangent), or improve it greatly (when outlier within the line but far off)
		- ![](https://miro.medium.com/max/641/1*vyOyS2B4Lpyhfxh2uU8GMA.png)

## References
- [Pearson Correlation Coefficient - Statology](https://www.statology.org/pearson-correlation-coefficient/)
- [Pearson Coefficient of Correlation Explained / by Joseph Magiya / Towards Data Science](https://towardsdatascience.com/pearson-coefficient-of-correlation-explained-369991d93404#:~:text=Pearson%E2%80%99s%20correlation%20coefficient%2C%20r%2C%20is%20very%20sensitive%20to,in%20your%20analysis%20can%20lead%20to%20misleading%20results.)

## Metadata
- topic:: [[00 Statistics]]
- updated:: [[2022-09-10]]
- reviewed:: [[2022-09-10]]
- #PermanentNote 
