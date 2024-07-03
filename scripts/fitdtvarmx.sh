#!/bin/bash

set -e

R -e "remotes::install_github(      \
    c(                              \
        'jeksterslab/fitDTVARMx'      \
    )                               \
)"

R -e "library(fitDTVARMx)"

echo -e "\nInstall fitDTVARMx, done!"
