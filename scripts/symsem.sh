#!/bin/bash

set -e

# symsem dependencies
R -e "                  \
  install.packages(     \
    c(                  \
      'reticulate',     \
      'caracas'         \
    ),                  \
    repos = 'https://packagemanager.rstudio.com/all/latest' \
  ) \
"

# symsem
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
