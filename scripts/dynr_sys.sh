#!/bin/bash

set -e

# gsl
pacman -Syu --noconfirm --needed                       \
    gsl
    
# nloptr
pacman -Syu --noconfirm --needed                       \
    cmake

# misc3d
pacman -Syu --noconfirm --needed                       \
    tcl                                                \
    tk
