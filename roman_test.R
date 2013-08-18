#!/usr/bin/RScript

is.installed <- function(pkg) is.element(pkg, installed.packages()[,1])
if (!is.installed('svUnit')) {
  install.packages('svUnit', repos='http://R-Forge.R-project.org', type = 'source')
  # or install.packages("svUnit", repos="http://R-Forge.R-project.org")
}

library(svUnit)

source('Roman.R')

test (arabic_to_roman) <- function () {

  arabics <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 14, 20,
             29, 30, 40, 50, 69, 100, 104, 400, 500, 900, 999, 1000, 2013)

   romans <- c('I', 'II', 'III', 'IV', 'V', 'VI', 'VII', 'VIII', 'IX', 'X', 'XI', 'XIV', 'XX',
	          'XXIX', 'XXX', 'XL', 'L', 'LXIX', 'C', 'CIV', 'CD', 'D', 'CM', 'CMXCIX', 'M', 'MMXIII')

    for (i in 1:length(arabics)) {
       checkEquals (romans[i], arabic_to_roman(arabics[i]))    	
    }
}

clearLog()
(runTest(arabic_to_roman))