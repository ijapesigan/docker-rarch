#!/bin/bash

set -e

# install2.r on Arch Linux: Arch's R has no littler, so it comes from
# CRAN, with r and install2.r put on the PATH. CRAN packages come from
# Posit Package Manager (source packages on Arch)
echo 'options(repos = c(CRAN = "https://packagemanager.posit.co/cran/latest"))' >> "$(R RHOME)/etc/Rprofile.site"
R -e "install.packages(c('littler', 'docopt'))"
littler="$(Rscript -e "cat(system.file(package = 'littler'))")"
ln -sf "${littler}/bin/r" /usr/local/bin/r
ln -sf "${littler}/examples/install2.r" /usr/local/bin/install2.r
install2.r --help > /dev/null

echo -e "\nInstall littler, done!"
