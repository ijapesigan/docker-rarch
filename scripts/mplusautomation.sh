#!/bin/bash

set -e

## MplusAutomation

R -e "                  \
  install.packages(     \
    c(                  \
      'MplusAutomation' \
    ),                  \
    repos = 'https://packagemanager.rstudio.com/all/latest' \
  ) \
"

R -e "library(MplusAutomation)"

echo -e "\nInstall MplusAutomation, done!"
