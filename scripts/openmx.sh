#!/bin/bash

set -e

# OpenMx dependencies
R -e "                \
  install.packages(   \
    c(                \
      'BH',           \
      'covr',         \
      'digest',       \
      'ggplot2',      \
      'ifaTools',     \
      'knitr',        \
      'lifecycle',    \
      'lme4',         \
      'markdown',     \
      'MASS',         \
      'Matrix',       \
      'mvtnorm',      \
      'numDeriv',     \
      'Rcpp',         \
      'RcppEigen',    \
      'RcppParallel', \
      'reshape2',     \
      'rmarkdown',    \
      'roxygen2',     \
      'rpf',          \
      'snowfall',     \
      'StanHeaders',  \
      'testthat'      \
    ),                \
    repos = 'https://packagemanager.rstudio.com/all/latest' \
  ) \
"

R -e "                                                 \
  install.packages(                                    \
    'OpenMx',                                          \
    contriburl = contrib.url(                          \
      repos = 'https://openmx.ssri.psu.edu/software/', \
      type = 'source'                                  \
    ),                                                 \
    dependencies = NA,                                 \
    verbose = TRUE                                     \
  );                                                   \
  demo('BivariateCorrelation', package = 'OpenMx')     \
"

echo -e "\nInstall OpenMx, done!"
