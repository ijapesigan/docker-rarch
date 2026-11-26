#!/bin/bash

set -e

# the V8 R package (a dependency of some CRAN packages) uses a static
# libv8: Arch has no libv8 package
export DOWNLOAD_STATIC_LIBV8=1

if [ -f /run/secrets/GITHUB_PAT ]; then
    GITHUB_PAT=$(cat /run/secrets/GITHUB_PAT)
    export GITHUB_PAT
fi

if [ -n "$GITHUB_PAT" ]; then
    echo "GITHUB_PAT is set (length=$(echo -n "$GITHUB_PAT" | wc -c))"
else
    echo "GITHUB_PAT NOT set"
fi

bash archlinux_sys_pkg.sh
bash littler.sh
bash openmx_sys.sh
bash dynr_sys.sh
bash rproject.sh
bash tinytex.sh
bash install-cran.sh
bash openmx.sh
bash dynr.sh
bash install-github.sh
bash mpdemo.sh
bash custom.sh
bash check.sh
bash post.sh
