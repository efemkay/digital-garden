---
title: ROC curve gives visual cue for optimal TPR FPR in classification model
---

- #### ROC curve makes it easy to visualize Sensitivity and Specificity and find optimal balance between the two in classification model
	- ROC is a plot of FPR against TPR. FPR (False Positive Rate) is calculated as 1-Specificity while TPR (True Positive Rate) is Sensitivity. Both of which are the cumulative. refer to [[Confusion Matrix]]
	- By increasing the threshold TPR, FPR decreases but, specificity increases. Inversely, by decreasing the threshold, the value of TPR, FPR increases, and specificity decreases.
	- the plot gives a quicker visual cues to find desired thresh-hold, as alternative to generating [[Confusion Matrix]] for different thresh-holds 
		- Most of the time, the top-left value on the ROC curve should give you a quite good threshold,
	- Depend on how many false positives you are willing to accept, you decide the optimal threshold. For example, if you don’t want to have too many false positives, you should have a high threshold value. This will, however, also give you a lot more false negatives. 
	- ![](https://developers.google.com/static/machine-learning/crash-course/images/ROCCurve.svg)
	- ![](https://www.statology.org/wp-content/uploads/2021/08/read_roc2-768x599.png)
- #### In logistic regression model, the cut-off would be the probability but in simple binary classification (e.g. Titanic dataset predict by age) it’s the age
	- ROC curve is plot by calculating TP, FP, TN and FN for strategic intervals of cut off or threshold
		- ![](https://indxar.com/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBazRhIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--7070297bd760c2735aaed9bb8f56cd04e7901140/%E3%82%B9%E3%82%AF%E3%83%AA%E3%83%BC%E3%83%B3%E3%82%B7%E3%83%A7%E3%83%83%E3%83%88%202021-06-04%20173911.png)
	- for my study on UTC vs $x$ of Price to predict positive NPV, the $x$ would be the cut-off or threshold, while different model can be Price = Average Price or Price = Discounted Price
		- ![](https://www.statology.org/wp-content/uploads/2021/08/read_roc3-768x590.png)

## References
- [Understand ROC curve and AUC with Excel | INDXAR](https://indxar.com/contents/1274)
- [What Is ROC Curve?. In machine learning, ROC curve is an… | by Saurav Jadhav | Analytics Vidhya | Medium](https://medium.com/analytics-vidhya/what-is-roc-curve-1f776103c998)
- [Classification: ROC Curve and AUC  |  Machine Learning  |  Google Developers](https://developers.google.com/machine-learning/crash-course/classification/roc-and-auc)
- [How to Interpret a ROC Curve (With Examples) - Statology](https://www.statology.org/interpret-roc-curve/)

## Metadata
- topic:: [[00 Statistics]]
- updated:: [[2022-08-05]]
- reviewed:: [[2022-08-05]]
- #PermanentNote 