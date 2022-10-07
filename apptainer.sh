#!/bin/bash

# pre TMP ----------------------------------------------------------------------
mkdir -p "$HOME/tmp"
TODAY=$(date +"%Y-%m-%d-%H%M")
TMP_FOLDER=$(mktemp -d -q "$HOME/tmp/$TODAY-XXXXXXXX" || exit 1)
# ------------------------------------------------------------------------------

APPTAINER_TMPDIR="$TMP_FOLDER" \
      APPTAINER_CACHEDIR="$TMP_FOLDER" \
      apptainer build template.sif \
      docker://jeksterslab/template

# post TMP ---------------------------------------------------------------------
rm -rf -- "$TMP_FOLDER"
trap - EXIT
exit
# ------------------------------------------------------------------------------
