---
title: Confusion Matrix
alias: true positive false positive
---

- #### Confusion Matrix is the visual representation of the Actual vs Predicted values.
	- It group and measures the performance of classification prediction model and looks like a table-like structure.
	- This is how a Confusion Matrix of a binary classification problem looks like. `ss`
		- ![](https://cdn.analyticsvidhya.com/wp-content/uploads/2021/05/confusion-matrix-1.png)
		- ![](https://iq.opengenus.org/content/images/2021/11/summary.png)
	- > [!Caution]+
	  Actual Values by convention should be the columns where as prediction as the rows (just like example screenshot above)
- #### Summary metrics can help simplify comparison of data analysis
	- To better understand this, let’s take an example of Covid test (for say 100 people) to detect whether or not they have Covid
	- **Accuracy** – how many correct predictions out of all predictions
		- How many who tested as positive and do have Covid and plus how many who tested as negative and don’t have it, divided by total number of people
		- $$ Accuracy=\frac{TP+TN}{TP+FP+TN+FN} $$
	- **Sensitivity (Recall)** – *a subset of accuracy focusing on TP only*
		- how many correct (true) positive predictions out of all true positives
		- How many who tested positive and **do** have Covid, divide by number of people who actually **do** have Covid
		- $$ Recall = \frac{TP}{TP+FN} = \frac{TP}{ActualPos} $$
	- **Specificity** – *a subset of accuracy focusing on TN only*
		- how many who tested as negative and **do not** have Covid, divide by number of people who actually **do not** have Covid
		- $$ Specificity = \frac{TN}{TN + FP} = \frac{TN}{ActualNeg}$$
	- **Precision** – how many correct (true) positive predictions out of all predicted positives
		- e.g. If we place a bet, how accurate is that bet. a subset of accuracy but for one category only (in the case of binary classification)
		- $$ Precision = \frac{TP}{TP+FP} = \frac{TP}{PredPos} $$

## Review #flashcards/statistics
**What does Sensitivity in Confusion Matrix represents?** || It measures how many correct positives or true positive predictions out of all true positives. It means, “are you able to pickup all the positives?”
<!--SR:!2022-08-26,23,150-->
**Describe the formula for Sensitivity?** || $Recall = \frac{TP}{TP+FN}$
<!--SR:!2022-08-21,18,130-->
**What does Precision in Confusion Matrix represents?** || It measures how many correct positives or true positive out of all predicted positives. It means, “are your bets accurate enough for positive prediction”
<!--SR:!2022-08-05,17,165-->

**Describe the formula for Precision?** || $Precision = \frac{TP}{TP+FP}$
<!--SR:!2022-08-04,16,165-->


## References
- [Confusion Matrix | What is Confusion Matrix | Confusion Matrix for DS (analyticsvidhya.com)](https://www.analyticsvidhya.com/blog/2021/05/in-depth-understanding-of-confusion-matrix/)
- [Data Science in Medicine — Precision & Recall or Specificity & Sensitivity? | by Alon Lekhtman | Towards Data Science](https://towardsdatascience.com/should-i-look-at-precision-recall-or-specificity-sensitivity-3946158aace1)
- [Precision, Recall, Sensitivity and Specificity (opengenus.org)](https://iq.opengenus.org/precision-recall-sensitivity-specificity/)

## Metadata
- topic:: [[00 Statistics]]
- updated:: [[2022-08-03]]
- reviewed:: [[2022-08-03]]
- #LiteratureNote 
