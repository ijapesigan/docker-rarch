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
QUARTO_VERSION=$(curl -s "https://api.github.com/repos/quarto-dev/quarto-cli/releases/latest" | grep '"tag_name":' | sed -E 's/.*"v*([^"]+)".*/\1/')
export QUARTO_VERSION
curl -Lo quarto.tar.gz "https://github.com/quarto-dev/quarto-cli/releases/download/v${QUARTO_VERSION}/quarto-${QUARTO_VERSION}-linux-amd64.tar.gz"
mkdir -p /usr/local
tar -zxvf quarto.tar.gz -C /usr/local --strip-components=1
rm -rf quarto*

# pfetch
git clone https://github.com/dylanaraps/pfetch.git
install pfetch/pfetch /usr/local/bin/
ls -l /usr/local/bin/pfetch

# duckdb
pacman -Syu --noconfirm --needed                       \
    mariadb

# v8
{
  echo [archpkgs]
  echo SigLevel = Optional TrustedOnly
  echo Server = https://garbuszus.de/archpkgs/\$arch
} >> /etc/pacman.conf
pacman -Syu --noconfirm --needed v8-r
