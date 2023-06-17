#!/bin/bash

# Install apt and R packages if they are not yet installed.

set -e

# To add additional apt packages,
# for example, to install nano and vim, do the following:
pacman -Syu --noconfirm --needed \
  nano \
  vim

# To add additional R packages,
# for example, to install tidyverse and dplyr, do the following:
Rscript -e "if (!require('tidyverse')) install.packages('tidyverse')"
Rscript -e "if (!require('dplyr')) install.packages('dplyr')"
