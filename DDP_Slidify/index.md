---
title       : Vehicle MPG Estimator Application
subtitle    : Developing Data Poducts - Course Project
author      : Chris Horvath
job         : data
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Vehicle MPG Estimator 

- The development of a model to estimate the MPG for vehicles is valuble to the general publish and that was accomplish by leveraging the R Shiny library and hosted by the RStudio shiny.io platform.
- Review application with following link:
*https://chrishorvath11.shinyapps.io/Developing-Data-Products---Course-Project/*
- This application will provide simple access to this valuble data.

---

## Input Data and Regression Methods Used

### Motor Trend Car Road Tests

> Henderson and Velleman (1981), Building multiple regression models interactively. Biometrics, 37, 391-411.

### Linear Regression

```r
data(mtcars)
modFit <- lm(formula = mpg ~ cyl + hp + wt + am, data = mtcars)
```
- See the Full Model evaluation at:
*https://github.com/chrishorvath/Developing-Data-Products---Course-Project*

---

## Model details


```
## 
## Call:
## lm(formula = mpg ~ cyl + hp + wt + am, data = mtcars)
## 
## Residuals:
##     Min      1Q  Median      3Q     Max 
## -3.4765 -1.8471 -0.5544  1.2758  5.6608 
## 
## Coefficients:
##             Estimate Std. Error t value Pr(>|t|)    
## (Intercept) 36.14654    3.10478  11.642 4.94e-12 ***
## cyl         -0.74516    0.58279  -1.279   0.2119    
## hp          -0.02495    0.01365  -1.828   0.0786 .  
## wt          -2.60648    0.91984  -2.834   0.0086 ** 
## am           1.47805    1.44115   1.026   0.3142    
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 2.509 on 27 degrees of freedom
## Multiple R-squared:  0.849,	Adjusted R-squared:  0.8267 
## F-statistic: 37.96 on 4 and 27 DF,  p-value: 1.025e-10
```

---

## R dataset - mtcars

**A data frame with 32 observations on 11 variables.**

| Index | Field | Detail |
------- | ----- | ------ |
| [, 1] | mpg | Miles/(US) gallon |
| [, 2]  | cyl | Number of cylinders |
| [, 3]	| disp | Displacement (cu.in.) |
| [, 4]	| hp | Gross horsepower |
| [, 5]	| drat | Rear axle ratio |
| [, 6]	| wt | Weight (lb/1000) |
| [, 7]	| qsec | 1/4 mile time |
| [, 8]	| vs | V/S |
| [, 9]	| am | Transmission (0 = automatic, 1 = manual) |
| [,10]	| gear | Number of forward gears |
| [,11]	| carb | Number of carburetors |
