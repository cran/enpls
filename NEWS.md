# CHANGES IN enpls VERSION 1.0 (2014-10-03)

## NEW FEATURES

* initial release

# CHANGES IN enpls VERSION 1.1 (2015-11-26)

##  BUG FIXES

* Fixed the bugs in automatic component number selection which could make
the intercept-only model rank best. Thanks for the test and patch from
Max Kuhn <max.kuhn@pfizer.com>.

# CHANGES IN enpls VERSION 2.0 (2016-06-19)

## NEW FEATURES

* Project website: [http://enpls.org](http://enpls.org)

## IMPROVEMENTS

* General improvements on plotting functions

## BUG FIXES

* Fixed major bugs in cv.enpls and plotting functions
* Many other bug fixes

# CHANGES IN enpls VERSION 3.0 (2016-06-22)

## NEW FEATURES

* Add sparse partial least squares regression

## IMPROVEMENTS

* Improvements on documentation; rewritten vignette

# CHANGES IN enpls VERSION 4.0 (2016-08-28)

## IMPROVEMENTS

* General improvements on function documentation
* Changing the argument name `MCtimes` to `reptimes`
* Changing the option name `"bootstrap"` to `"boot"`

# CHANGES IN enpls VERSION 4.2 (2016-09-02)

## IMPROVEMENTS

* Reduced memory footprints for `enpls.fit()` and `enspls.fit()`

## NEW FEATURES

* New functions `enpls.rmse()`, `enpls.mae()`, and `enpls.rmsle()` for computing RMSE, MAE, and RMSLE
