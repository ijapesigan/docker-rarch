#!/bin/bash

set -e

# semlbci dependencies
R -e "                  \
  install.packages(     \
    c(                  \
      'lavaan',         \
      'mice'            \
    ),                  \
    repos = 'https://packagemanager.rstudio.com/all/latest' \
  ) \
"

# semlbci
R -e "               \
  install.packages(  \
    c(               \
      'semmcci'      \
    ),               \
    repos = 'https://packagemanager.rstudio.com/all/latest' \
  ) \
"

R -e "library(semmcci)"

echo -e "\nInstall semmcci, done!"
