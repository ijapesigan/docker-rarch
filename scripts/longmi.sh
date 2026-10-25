#!/bin/bash

set -e

# docker-rarch's own (Arch Linux; the Ubuntu images use docker-r2u's).
# GitHub packages wanted (never their dependencies)
pkgs=(
    ijapesigan/longMI
)

# system dependencies: pak's lookup does not cover Arch; the compilers and
# BLAS are in archlinux_sys_pkg.sh, and nothing else is needed here

# their R dependencies (CRAN, from each DESCRIPTION) with install2.r,
# then the packages
install2.r --error --skipinstalled pak remotes
deps="$(Rscript -e "d <- pak::pkg_deps(commandArgs(TRUE)); writeLines(d\$package[d\$type == 'standard'])" "${pkgs[@]}")"
if [ -n "${deps}" ]; then
    mapfile -t deps_pkgs <<< "${deps}"
    install2.r --error --skipinstalled -n -1 "${deps_pkgs[@]}"
fi
Rscript -e "remotes::install_github(commandArgs(TRUE), dependencies = FALSE, upgrade = 'never')" "${pkgs[@]}"

R -e "library(longMI)"

echo -e "\nInstall longMI, done!"
