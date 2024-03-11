#!/bin/bash

set -e

R -e "remotes::install_github(      \
    c(                              \
        'ijapesigan/longMI'         \
    )                               \
)"

echo -e "\nInstall longMI, done!"
