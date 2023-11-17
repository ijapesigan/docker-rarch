#!/bin/bash

set -e

# metaSEM dependencies
R -e "                  \
  install.packages(     \
    c(                  \
      'Matrix',         \
      'MASS',           \
      'ellipse',        \
      'mvtnorm',        \
      'numDeriv',       \
      'lavaan'          \
    ),                  \
    repos = 'https://packagemanager.rstudio.com/all/latest' \
  ) \
"

# OpenMx is installed using openmx.sh

# metaSEM
R -e "               \
  install.packages(  \
    c(               \
      'metaSEM'      \
    ),               \
    repos = 'https://packagemanager.rstudio.com/all/latest' \
  ) \
"

R -e "library(metaSEM)"

echo -e "\nInstall metaSEM, done!"
