#!/bin/bash

set -e

# simstatespace
R -e "               \
  install.packages(  \
    c(               \
      'simStateSpace'      \
    ),               \
    repos = 'https://packagemanager.rstudio.com/all/latest' \
  ) \
"

R -e "library(simStateSpace)"

echo -e "\nInstall simStateSpace, done!"
