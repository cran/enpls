## ----knitropts,echo=FALSE,message=FALSE----------------------------------
if (require('knitr')) opts_chunk$set(fig.width = 5, fig.height = 5, fig.align = 'center', tidy = FALSE, warning = FALSE, cache = TRUE)

## ----prelim,echo=FALSE---------------------------------------------------
enpls.version = '1.0'

## ----load-package--------------------------------------------------------
require(enpls)
data(alkanes)
x = alkanes$x
y = alkanes$y

## ----enpls.fs,fig.cap='Top ten important variables of the \\texttt{alkanes} dataset'----
set.seed(42)
varimp = enpls.fs(x, y)
print(varimp, nvar = 10L)
plot(varimp, nvar = 10L)

## ----enpls.od,fig.cap='Outlier detection result of the \\texttt{alkanes} dataset'----
od = enpls.od(x, y)
plot(od, criterion = 'sd')

## ----enpls.en------------------------------------------------------------
enpls.fit = enpls.en(x, y)

## ----predict.enpls.en,fig.cap='Experimental values vs. predicted values'----
y.pred = predict(enpls.fit, newx = x)
plot(y, y.pred, xlim = range(y), ylim = range(y), 
     xlab = 'Experimental', ylab = 'Predicted')
abline(a = 0L, b = 1L)

## ----cv.enpls,eval=FALSE-------------------------------------------------
#  cv.enplsfit = cv.enpls(x, y)
#  print(cv.enpls.fit)
#  
#  ## Cross Validation Result for Ensemble Partial Least Squares
#  ## ---
#  ## RMSE = 3.2935, R2 = 0.999968
#  
#  plot(cv.enpls.fit)

