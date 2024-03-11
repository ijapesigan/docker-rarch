#!/bin/bash

set -e
    
# ctsem dependencies
R -e "                \
  install.packages(   \
    c(                \
      'cOde',         \
      'data.table',   \
      'Deriv',        \
      'expm',         \
      'ggplot2',      \
      'MASS',         \
      'Matrix',       \
      'mize',         \
      'mvtnorm',      \
      'plyr',         \
      'RcppParallel', \
      'rstan',        \
      'rstantools',   \
      'tibble',       \
      'BH',           \
      'Rcpp',         \
      'RcppEigen',    \
      'RcppParallel', \
      'StanHeaders'
    ),                \
    repos = 'https://packagemanager.rstudio.com/all/latest' \
  ) \
"

# ctsem
R -e "                \
  install.packages(   \
    c(                \
      'ctsem'         \
    ),                \
    repos = 'https://packagemanager.rstudio.com/all/latest' \
  ) \
"

echo -e "\nInstall ctsem, done!"
