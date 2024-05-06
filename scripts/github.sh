#!/bin/bash

set -e

R -e "               \
  install.packages(  \
    c(               \
      'usethis',     \
      'gitcreds'     \
    ),               \
    repos = 'https://packagemanager.rstudio.com/all/latest' \
  ) \
"

R -e "usethis::create_github_token()"
R -e "usethis::edit_r_environ()"
R -e "gitcreds::gitcreds_set()"
