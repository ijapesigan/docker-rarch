#!/bin/bash

set -e

bash archlinux_sys_pkg.sh
bash cran_pkg.sh
bash github_pkg.sh
bash tinytex.sh
bash custom.sh
bash lavaan.sh
bash openmx_sys.sh
bash openmx.sh
bash dynr.sh
bash post.sh
