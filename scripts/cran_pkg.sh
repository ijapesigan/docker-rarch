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

R -e "                  \
  install.packages(     \
    c(                  \
      'covr',           \
      'devtools',       \
      'distro',         \
      'ggplot2',        \
      'knitr',          \
      'languageserver', \
      'lintr',          \
      'magick',         \
      'markdown',       \
      'microbenchmark', \
      'pdftools',       \
      'pkgdown',        \
      'printr',         \
      'ragg',           \
      'RefManageR',     \
      'remotes',        \
      'rmarkdown',      \
      'rprojroot',      \
      'styler',         \
      'testthat',       \
      'tidyverse',      \
      'qpdf',           \
      'quarto',         \
      'semmcci',        \
      'betaDelta',      \
      'betaSandwich',   \
      'betaNB',         \
      'betaMC'          \
    ),                  \
    repos = 'https://packagemanager.rstudio.com/all/latest' \
  ) \
"


# https://github.com/r-lib/xml2/issues/418

R -e "                  \
  install.packages(     \
    c(                  \
      'pak'             \
    ),                  \
    repos = 'https://packagemanager.rstudio.com/all/latest' \
  ) \
"

R -e "                             \
  pak::pak('KNnut/xml2@fix-build') \
"
