#!/bin/bash

set -e

R -e "remotes::install_github(      \
    c(                              \
        'jeksterslab/fitCTVARMx'      \
    )                               \
)"

R -e "library(fitCTVARMx)"

echo -e "\nInstall fitCTVARMx, done!"
