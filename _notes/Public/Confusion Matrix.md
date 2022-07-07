---
title: Confusion Matrix
alias: true positive false positive
---

#Concept / (topic:: [[00 Statistics]]) / (updated:: [[2022-03-26]])

- #### Confusion Matrix is the visual representation of the Actual vs Predicted values.
	- It group and measures the performance of classification prediction model and looks like a table-like structure.
	- This is how a Confusion Matrix of a binary classification problem looks like. `ss`
		- ![](https://cdn.analyticsvidhya.com/wp-content/uploads/2021/05/confusion-matrix-1.png)
	- > [!Caution]+
	  Actual Values by convention should be the columns where as prediction as the rows (just like example screenshot above)
- #### Summary metrics can help simplify comparison of data analysis
	- **Accuracy** – how many correct predictions out of all predictions
		- $$ Accuracy=\frac{TP+TN}{TP+FP+TN+FN} $$
	- **Sensitivity (Recall)** – how many correct (true) positive predictions out of all true positives
		- $$ Recall = \frac{TP}{TP+FN} = \frac{TP}{ActualPos} $$
	- **Precision** – how many correct (true) positive predictions out of all predicted positives
		- $$ Precision = \frac{TP}{TP+FP} = \frac{TP}{PredPos} $$

## Review #flashcards/statistics
**What does Sensitivity in Confusion Matrix represents?** || It measures how many correct positives or true positive predictions out of all true positives. It means, “are you able to pickup all the positives?”
<!--SR:!2022-07-05,3,150-->
**Describe the formula for Sensitivity?** || $Recall = \frac{TP}{TP+FN}$
<!--SR:!2022-07-04,2,130-->
**What does Precision in Confusion Matrix represents?** || It measures how many correct positives or true positive out of all predicted positives. It means, “are your bets accurate enough for positive prediction”
<!--SR:!2022-07-05,3,165-->

**Describe the formula for Precision?** || $Precision = \frac{TP}{TP+FP}$
<!--SR:!2022-07-06,4,165-->


## References
- [Confusion Matrix | What is Confusion Matrix | Confusion Matrix for DS (analyticsvidhya.com)](https://www.analyticsvidhya.com/blog/2021/05/in-depth-understanding-of-confusion-matrix/)