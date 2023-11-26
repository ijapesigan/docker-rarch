#!/bin/bash

set -e

pacman -Syu --noconfirm --needed                       \
    cmake                                              \
    nlopt
