---
title: swanson mean is error prone for distribution other than normal
tags: [PermanentNote]
---

- #### Swanson’s mean (SM) has no theoretical justification for any distribution other than the normal.
	- This is despite it is being heavily used within the oil and gas industry to approximate continuous probability such as the log-normal.
	- SPE paper SPE-148542-PA (see references below) document the errors induced by this practice. The studies discussed in the preceding demonstrated the rule’s inability to accurately approximate the variance of many distributions
	- Bear in mind that MCS was never recommended as a final approximation, as ESM has been
- #### The equal-areas method was developed to apply to normal distribution that produces an approximation of 25%-50%-25% for P89.9-P50-P10.2
	- It was developed by Jim Matheson and his colleagues at the Stanford Research Institute (SRI) between the late 1960s and the early 1970s (personal communication with Jim Matheson and Peter McNamee).
	- On the basis of this, SRI began using a shortcut of weighting the P90, P50, P10 by 0.25, 0.50, 0.25, which is sometimes referred to at the 25-50-25 approximation. This method was then heavily used and popularized by Strategic Decisions Group (SDG), which was founded by individuals from SRI's decision analysis group.
	- SDG trained hundreds of oil and gas professionals in decision analysis methods and helped to establish existing decision analysis programs at several major corporations, including Chevron; this explains the use of 25-50-25 in oil and gas settings.
- #### SM can be directly applied to log-normal distributions by applying it to the _logarithm_ of _X_, instead of directly to _X._
	- If _X_ is log-normally distributed, then ln _X_ is normally distributed and the moments of _X_ are functions only of the mean _μ_ and variance _σ_2 of ln _X_.
	- This log-SM approximation is a significant improvement over SM and is only slightly more complicated—requiring the use of a logarithm and of an exponential.

## Other paper supporting the inaccuracy of Swanson’s Rule
- #### Megill (1984)
	- finds that ESM underestimates the mean by approximately 10% for modestly skewed distributions and ==45% for more-skewed distribution==
	- Modestly skewed distributions, which he associates with “typical prospect ranges.”, while more-skewed distributions, which he associates with “typical basin-play ranges for field size distributions.”
	- Megill concludes that “Swanson’s rule should not be applied to obtain the mean of play or basin assessments.”
- #### Rose (2001)
	- supports his use of ESM by arguing that reserves above the P1 of a log-normal occur with much less than a 1% frequency, and therefore the log-normal should be truncated above this point. Doing so reduces skewness and does improve the accuracy of ESM.
	- However, Rose supports his argument by analyzing only the mean and examining a single log-normal distribution with a mean of 15.1 and a standard deviation of 28.2—implying a skewness of 3.9. In this case, ESM underestimates the true mean by 1.5%.
	- However, it also underestimates the variance by 59% and the skewness by 78%. Furthermore, under a different truncated log-normal distribution with a skewness of 4.9, ESM underestimates the mean by 10%, the variance by 77%, and the skewness by 83%. SM can be directly applied to log-normal distributions by applying it to the logarithm of X, instead of directly to X. If X is log-normally distributed, then ln X is normally distributed and the moments of X are functions only of the mean µ and variance 2 of ln X. The equations for the first four moments of X appear below:

## References
- [Discretization, Simulation, and Swanson's (Inaccurate) Mean | SPE Economics & Management | OnePetro](https://onepetro.org/EM/article/3/03/128/198261/Discretization-Simulation-and-Swanson-s-Inaccurate) ^4824f4
- [Optimal Sequential Exploration: A Binary Learning Model (decisionprofessionals.com)](https://www.decisionprofessionals.com/assets/storage/docs/Discretization.pdf)
- ### Glossary
	- McNamee and Celona shortcut (MCS)
	- extended Swanson-Megill (ESM)

## Metadata
- topic:: [[00 Engineering Economics]]
- updated:: [[2022-09-25]]
- reviewed:: [[2022-09-25]]
- #PermanentNote #tosummarise 
	- some points are still long (not well synthesised)