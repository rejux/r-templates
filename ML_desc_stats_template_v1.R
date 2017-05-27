#!/usr/bin/env Rscript
# vim: set fileencoding=utf-8
# vim: set tabstop=4 expandtab shiftwidth=4 softtabstop=4

## ================================================================================== 
##
## File: machine-learning-desc-stat-template-v1.R
## Desc: R program template for (minimal) descriptive statistics
## Author: Regis KLA, klaregis@gmail.com, https://klaregis-portal.appspot.com/
## Version: v1
##
## ================================================================================== 

# Doc:
# 
# Put a little documentation of your project here:
# 	+ business domain regarding the data
# 	+ objective of the chalenge
#   + ...
# 
# @author NAME, <EMAIL>, <WEB SITE>
# @Version <VERSION>
# @Date <DATE>

# Describe the usage of your program and provide a launch command example
# 
# Usage: 
# ./machine-learning-desc-stat-template-v1.R [arg1] [arg2] ... [argN]
# 
# Example: 
# ./machine-learning-desc-stat-template-v1.R [arg1 val] [arg2 val] ... [argN val]

## ==============
## 1. Libs
## ==============

# a) Load the required libraries

	# Example: 
	# library(mlbench)

# b) set seed: this doesn't hirt nothing so do it systematically. It allows the interpreter to always produce
# the same results when the same conditions meet (e.g. values, ...)

	# Example:
	# seed <- 1234

## ==============
## 2. Functions
## ==============

# a) Define and define a set of functions that will be reused later

	# Example:
	# A useful (simple) function to log on console to be used exactly "à la C" (e.g. the C programming way):
	# printf <- function(...) cat(sprintf(...)) 

## ===================
## 2. Data Loading
## ===================

# b) Load dataset

	# Example: the Ionosphere dataset from mlbench package
	# data(Ionosphere)
	# dataset <- Ionosphere

	# Example: from CSV file
	# dataset <- read.table(...)

## ===================
## 3. Data Summary
## ===================

# a) Raw display & Data quality & Descriptive statistics
	
	# Example: display a fragment of the brut or raw data (e.g. as it has been loaded)
	# nrow(dataset)
	# ncol(dataset)
	# head(dataset)

	# Example: discover the columns data types
	# sapply(dataset, levels) 

	## =========================
	## 3.1. Early Preprocessing
	## =========================

	# Here some early preprocessing maybe done before going on! For instance, some 
	# columns MUST be transformed: 
	# * from string to numeric (e.g. simple transfo, or encoding)
	# * from nothing to numeric (e.g. imputing)
	# * or simply removed because they bring no information (e.g. constant values)
	# * ...

		# Example: transform a column of string values to numeric values (e.g. column name = V1)
		# dataset$V1 <- as.numeric(as.character(dataset$V1))

		# Example we learnt that V2 is a constant. Thus, it brings no added value and consumes disk space
		# So we remove/drop it
		# dataset <- dataset[,-2]

		# Put over early preprocessing actions here.

	## =========================
	## 3.2. Desc. Statistics
	## =========================

	# values ranges: val_range()
	# desc: for each column know the ranging values
	# example: sapply(X, val_range)	

	# percentiles: percentile()
	# desc: show the value or score below which x% of the population may be found 
	# example:
	# quantile_vector <- c(.1, .25, .5, .75) # 10%, 25%, 50%, 75%
	# sapply(X, percentile, quantile_vector=quantile_vector)                

	# the mean: mean()
	# desc: evaluate the mean all the columns. If a column is not numeric a warning is raised.
	# example: sapply(dataset, mean)

	# the standard deviation (aka standard error): sd()
	# desc: evaluate the column values dispersion regarding the mean.
	# example: sapply(dataset, sd)

	# the standard error of the mean
	# desc:it is the standard deviation of a sampling distribution of a statistic 
	# example: sapply(dataset, std_error)

## ===================
## 4. Data Cleaning
## ===================

# - prepare the next "data cleaning" step by finding response to some questions: 
# 	- are all data are numeric?
# 	- do I need 1-hot encoding?
# 	- do I need dummies encoding?
# 	- do I miss data and need imputation?
# 	- do I need centering/scaling data?
# 	- do I need to remove correlated predictors?
# 	- do I need to reduce skewness? 
# 	- ... 



