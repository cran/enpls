## ------------------------------------------------------------------------
library("enpls")
library("ggplot2")

data("logd1k")
x = logd1k$x
y = logd1k$y
head(x)[, 1:5]
head(y)

## ---- fig.width = 8, fig.height = 8, out.width = 600, out.height = 600----
set.seed(42)
fit = enspls.fit(x, y, ratio = 0.7, reptimes = 20, maxcomp = 3)
y.pred = predict(fit, newx = x)

df = data.frame(y, y.pred)
ggplot(df, aes_string(x = "y", y = "y.pred")) +
  geom_abline(slope = 1, intercept = 0, colour = "darkgrey") +
  geom_point(size = 3, shape = 1, alpha = 0.8) +
  coord_fixed(ratio = 1) +
  xlab("Observed Response") +
  ylab("Predicted Response")

## ---- fig.width = 8, fig.height = 8, out.width = 600, out.height = 600----
cv.fit = cv.enspls(x, y, nfolds = 5, ratio = 0.7,
                   reptimes = 10, maxcomp = 3, verbose = FALSE)
print(cv.fit)
plot(cv.fit)

## ---- fig.width = 8, fig.height = 8, out.width = 600, out.height = 600----
fs = enspls.fs(x, y, ratio = 0.7, reptimes = 20, maxcomp = 3)
print(fs, nvar = 10)
plot(fs, nvar = 10)
plot(fs, type = "boxplot", nvar = 10)

## ---- fig.width = 8, fig.height = 8, out.width = 600, out.height = 600----
od = enspls.od(x, y, ratio = 0.8, reptimes = 20, maxcomp = 3)
plot(od, prob = 0.05)
plot(od, criterion = "sd", sdtimes = 2)

