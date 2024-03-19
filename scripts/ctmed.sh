#!/bin/bash

set -e

R -e "remotes::install_github(      \
    c(                              \
        'jeksterslab/cTMed'         \
    )                               \
)"

R -e "library(cTMed)"

echo -e "\nInstall cTMed, done!"
