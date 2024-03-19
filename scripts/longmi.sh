#!/bin/bash

set -e

R -e "remotes::install_github(      \
    c(                              \
        'ijapesigan/longMI'         \
    )                               \
)"

R -e "library(longMI)"

echo -e "\nInstall longMI, done!"
