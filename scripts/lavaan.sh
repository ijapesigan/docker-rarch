#!/bin/bash

set -e

## lavaan dependencies
R -e "               \
  install.packages(  \
    c(               \
      'MASS',        \
      'mnormt',      \
      'pbivnorm',    \
      'numDeriv',    \
      'quadprog'     \
    ),               \
    repos = 'https://packagemanager.rstudio.com/all/latest' \
  ) \
"

## lavaan
R -e "               \
  install.packages(  \
    c(               \
      'lavaan'       \
    ),               \
    repos = 'https://packagemanager.rstudio.com/all/latest' \
  ) \
"

R -e "library(lavaan)"

echo -e "\nInstall lavaan, done!"
