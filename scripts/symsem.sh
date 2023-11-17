#!/bin/bash

set -e

# semlbci dependencies
R -e "                  \
  install.packages(     \
    c(                  \
      'caracas'         \
    ),                  \
    repos = 'https://packagemanager.rstudio.com/all/latest' \
  ) \
"

# semlbci
R -e "               \
  install.packages(  \
    c(               \
      'symSEM'      \
    ),               \
    repos = 'https://packagemanager.rstudio.com/all/latest' \
  ) \
"

R -e "library(symSEM)"

echo -e "\nInstall symSEM, done!"
