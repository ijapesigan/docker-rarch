#!/bin/bash

set -e

# docker-rarch's own (Arch Linux; the Ubuntu images use docker-r2u's).
# GitHub packages wanted (never their dependencies)
pkgs=(
    nx10/httpgd
    rstudio/tinytex
    r-lib/cli
    r-lib/devtools
    r-lib/roxygen2
    ijapesigan/rProject
    ijapesigan/longMI
    jeksterslab/semmcci
    jeksterslab/betaDelta
    jeksterslab/betaSandwich
    jeksterslab/betaNB
    jeksterslab/betaMC
    jeksterslab/simStateSpace
    jeksterslab/bootStateSpace
    jeksterslab/cTMed
    jeksterslab/dynUtils
    jeksterslab/dynTools
    jeksterslab/fitVARMxID
    jeksterslab/metaDyn
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

echo -e "\nInstall GitHub packages, done!"
