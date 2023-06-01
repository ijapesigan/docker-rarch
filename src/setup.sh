#!/bin/bash

set -e

# set time zone
ln -s /usr/share/zoneinfo/UTC /etc/localtime

# set locale
echo 'en_US.UTF-8 UTF-8' > /etc/locale.gen
locale-gen
echo 'LANG=en_US.UTF-8' > /etc/locale.conf

# install packages
pacman -Syu --noconfirm --needed                       \
    base                                               \
    base-devel                                         \
    poppler                                            \
    imagemagick                                        \
    wget                                               \
    xz                                                 \
    pandoc                                             \
    git                                                \
    lazygit                                            \
    bat                                                \
    rsync                                              \
    parallel                                           \
    vim                                                \
    nnn                                                \
    tmux                                               \
    gcc-fortran                                        \
    openblas                                           \
    r

# quarto
export QUARTO_VERSION=$(curl -s "https://api.github.com/repos/quarto-dev/quarto-cli/releases/latest" | grep '"tag_name":' | sed -E 's/.*"v*([^"]+)".*/\1/')
curl -Lo quarto.tar.gz "https://github.com/quarto-dev/quarto-cli/releases/download/v${QUARTO_VERSION}/quarto-${QUARTO_VERSION}-linux-amd64.tar.gz"
mkdir -p /usr/local
tar -zxvf quarto.tar.gz -C /usr/local --strip-components=1
rm quarto.tar.gz

# install R packages
# development packages
R -e "install.packages(                                   \
  c(                                                      \
    'covr',                                               \
    'devtools',                                           \
    'distro',                                             \
    'ggplot2',                                            \
    'knitr',                                              \
    'lintr',                                              \
    'magick',                                             \
    'microbenchmark',                                     \
    'pdftools',                                           \
    'pkgdown',                                            \
    'ragg',                                               \
    'remotes',                                            \
    'rmarkdown',                                          \
    'rprojroot',                                          \
    'styler',                                             \
    'testthat',                                           \
    'tidyverse',                                          \
    'qpdf',                                               \
    'semmcci',                                            \
    'betaDelta',                                          \
    'betaSandwich',                                       \
    'betaNB',                                             \
    'betaMC'
  ),                                                      \
  repos = 'https://packagemanager.rstudio.com/all/latest' \
)"

# development packages from GitHub
R -e "remotes::install_github(  \
    c(                          \
        'rstudio/tinytex',      \
        'r-lib/cli',            \
        'r-lib/devtools',       \
        'r-hub/rhub'            \
    )                           \
)"
R -e "remotes::install_github(      \
    c(                              \
        'jeksterslab/rProject',     \
        'jeksterslab/semmcci',      \
        'jeksterslab/betaDelta',    \
        'jeksterslab/betaSandwich', \
        'jeksterslab/betaNB',       \
        'jeksterslab/betaMC'        \
    )                               \
)"
R -e "tinytex::install_tinytex( \
    bundle = 'TinyTeX-2',       \
    force = TRUE,               \
    dir =  '/opt/TinyTeX'       \
)"

# remove the packages downloaded to image's pacman cache dir.
pacman -Sy --noconfirm pacman-contrib
paccache -r -k0

# Clean up
rm -rf /var/lib/apt/lists/*
rm -rf /tmp/*

# Installation information
echo -e "Session information...\n"
R -q -e "sessionInfo()"
echo -e "Installed packages...\n"
R -q -e "unname(installed.packages()[, 1])"
