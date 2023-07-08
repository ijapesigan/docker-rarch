#!/bin/bash

# Install apt and R packages if they are not yet installed.

set -e

# To add additional apt packages,
# for example, to install tmux and vim, do the following:
pacman -Syu --noconfirm --needed \
  tmux \
  vim

# To add additional R packages,
# for example, to install tidyverse and dplyr, do the following:
Rscript -e "pkg <- 'tidyverse'; if (!require(pkg)) install.packages(pkg, repos = 'https://packagemanager.rstudio.com/all/latest')"
Rscript -e "pkg <- 'dplyr'    ; if (!require(pkg)) install.packages(pkg, repos = 'https://packagemanager.rstudio.com/all/latest')"
