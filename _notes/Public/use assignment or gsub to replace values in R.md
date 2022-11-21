---
title: use assignment or gsub to replace values in R
---

- #### If the value to be replaced is the entire cell value (like replacing “-” with 0), it’s easier to use simple assignment. For the rest, we can use `gsub` together with `lapply`
	- We need to use gsub to allow us to use regex feature to find a specific string to replace, while `lapply()` function is more efficient when you need to do so on multiple columns

```r
# simple assignment if we can "regex" the entire cell value
df_sum[df_sum=="-"] <- 0

# gsub with lapply is better when you have to knitpick certain string
df_sum = lapply(df_sum, FUN=function(x) gsub(",", "", x)) %>% as.data.frame()
```


## Metadata
- topic:: [[00 Coding]]
	- related:: [[01 R programming]]
- updated:: [[2022-08-28]]
- reviewed:: [[2022-08-28]]
- #Reference 
