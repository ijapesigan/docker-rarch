#!/bin/bash

set -e

bash archlinux_sys_pkg.sh
bash cran_pkg.sh
bash github_pkg.sh
bash tinytex.sh
bash custom.sh
bash post.sh
