#!/bin/bash

set -e

# docker-rarch's own (Arch Linux; the Ubuntu images use docker-r2u's).
# CRAN packages wanted (never their dependencies)
pkgs=(cTMed)

# system dependencies: pak's lookup does not cover Arch; the compilers and
# BLAS are in archlinux_sys_pkg.sh, and nothing else is needed here

# the packages and their R dependencies
install2.r --error --skipinstalled -n -1 "${pkgs[@]}"

R -e "library(cTMed)"

echo -e "\nInstall cTMed, done!"
