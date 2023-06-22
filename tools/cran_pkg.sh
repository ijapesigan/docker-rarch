#!/bin/bash

set -e

## tidyverse
R -e "               \
  install.packages(  \
    c(               \
      'tidyverse',   \
      'devtools',    \
      'rmarkdown',   \
      'BiocManager', \
      'vroom',       \
      'gert'         \
    ),               \
    repos = 'https://packagemanager.rstudio.com/all/latest' \
  ) \
"

## dplyr database backends
R -e "                \
  install.packages(   \
    c(                \
      'arrow',        \
      'dbplyr',       \
      'DBI',          \
      'dtplyr',       \
      'duckdb',       \
      'nycflights13', \
      'Lahman',       \
      'RMariaDB',     \
      'RPostgres',    \
      'RSQLite',      \
      'fst'           \
    ),                \
    repos = 'https://packagemanager.rstudio.com/all/latest' \
  ) \
"

## a bridge to far? -- brings in another 60 packages
R -e "                                                      \
  install.packages(                                         \
    'tidymodels',                                           \
    repos = 'https://packagemanager.rstudio.com/all/latest' \
  )                                                         \
"

R -e "                \
  install.packages(   \
    c(                \
      'covr',           \
      'devtools',       \
      'distro',         \
      'ggplot2',        \
      'knitr',          \
      'languageserver', \
      'lintr',          \
      'magick',         \
      'microbenchmark', \
      'pdftools',       \
      'pkgdown',        \
      'ragg',           \
      'remotes',        \
      'rmarkdown',      \
      'rprojroot',      \
      'styler',         \
      'testthat',       \
      'tidyverse',      \
      'qpdf',           \
      'semmcci',        \
      'betaDelta',      \
      'betaSandwich',   \
      'betaNB',         \
      'betaMC'          \
    ),                \
    repos = 'https://packagemanager.rstudio.com/all/latest' \
  ) \
"
