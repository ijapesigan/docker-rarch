#!/bin/bash

set -e

R -e "remotes::install_github(      \
    c(                              \
        'jeksterslab/metaVAR'      \
    )                               \
)"

R -e "library(metaVAR)"

echo -e "\nInstall metaVAR, done!"
