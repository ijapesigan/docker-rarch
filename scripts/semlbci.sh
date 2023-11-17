#!/bin/bash

set -e

# semlbci dependencies
R -e "                  \
  install.packages(     \
    c(                  \
      'lavaan',         \
      'nloptr',         \
      'MASS',           \
      'ggplot2',        \
      'ggrepel',        \
      'rlang',          \
      'pbapply'         \
    ),                  \
    repos = 'https://packagemanager.rstudio.com/all/latest' \
  ) \
"

# semlbci
R -e "               \
  install.packages(  \
    c(               \
      'semlbci'      \
    ),               \
    repos = 'https://packagemanager.rstudio.com/all/latest' \
  ) \
"

R -e "library(semlbci)"

echo -e "\nInstall semlbci, done!"
