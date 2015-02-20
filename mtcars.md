Regression Models - Miles Per Galon
========================================================
author: Gavin Zhu
date: 2015-02-20

Overview & Introduction
========================================================

-The project is to research how cars's attribute like horse power, manual/automatic, etc. impact the miles per galon. 

-The model is using mtcars dataset as the training data. It uses linear regression.

-A shinny app is built based on the prediction model. Users can go the https://gavin.shinyapps.io/Homework1/ and check the prediction value for their cars. 


Exploratory Analysis
========================================================
There are 12 variables in the dataset. Some of them are highly correlated to miles per galon.

```r
library(datasets); require(stats); require(graphics);
pairs(mtcars, panel = panel.smooth, main = "mtcars")
```

![plot of chunk unnamed-chunk-1](mtcars-figure/unnamed-chunk-1.png) 

Model Creation
========================================================
The final model selects three variables and removes the outlier. 

```r
dt <- subset(mtcars,mpg !=15.0)
fit6 <- lm(mpg ~ factor(am) + hp + wt + wt * factor(am), dt)
summary(fit6)$coefficient
```

```
               Estimate Std. Error t value  Pr(>|t|)
(Intercept)    30.79263     2.5724  11.970 4.429e-12
factor(am)1    13.84775     3.9567   3.500 1.697e-03
hp             -0.03584     0.0102  -3.515 1.633e-03
wt             -2.09632     0.8227  -2.548 1.708e-02
factor(am)1:wt -4.61832     1.4519  -3.181 3.778e-03
```

Executive Summary 
==========
Weight/horse powers/transmission can best predict the miles per galon.
- Manual tranmission is better for miles per galon
- Higher hourse powers is worse for miles per galon
- Higher weight is worse for miles per galon

Go green, choose a green car! 
