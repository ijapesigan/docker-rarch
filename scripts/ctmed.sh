#!/bin/bash

set -e

# cTMed dependencies
install2.r --error --skipinstalled -n -1 \
    Rcpp                                 \
    RcppArmadillo                        \
    numDeriv                             \
    ctsem                                \
    simStateSpace                        \
    expm

# cTMed
install2.r --error --skipinstalled -n -1 \
    cTMed

R -e "library(cTMed)"

echo -e "\nInstall cTMed, done!"
