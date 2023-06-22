#!/bin/bash

set -e

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
cat -e "/srv/build/CONTAINER_RELEASE_MSG"
echo -e "\nBuild done!"
