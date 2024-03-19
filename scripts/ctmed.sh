#!/bin/bash

set -e

R -e "remotes::install_github(      \
    c(                              \
        'jeksterslab/CTMed'      \
    )                               \
)"

R -e "library(CTMed)"

echo -e "\nInstall CTMed, done!"
