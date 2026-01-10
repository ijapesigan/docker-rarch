#!/bin/bash

set -e

## rProject
R -e "                                                     \
  install.packages(                                        \
    c(                                                     \
      'cffr',                                              \
      'covr',                                              \
      'devtools',                                          \
      'distro',                                            \
      'knitr',                                             \
      'lintr',                                             \
      'pkgdown',                                           \
      'quarto',                                            \
      'Rcpp',                                              \
      'remotes',                                           \
      'RefManageR',                                        \
      'rmarkdown',                                         \
      'roxygen2',                                          \
      'rprojroot',                                         \
      'stats',                                             \
      'styler',                                            \
      'tinytex',                                           \
      'utils',                                             \
      'testthat'                                           \
    ),                                                     \
    repos = c(                                             \
      CRAN = 'https://packagemanager.posit.co/cran/latest' \
    )                                                      \
  )                                                        \
"

## tidyverse
R -e "                                                     \
  install.packages(                                        \
    c(                                                     \
      'tidyverse',                                         \
      'devtools',                                          \
      'rmarkdown',                                         \
      'BiocManager',                                       \
      'vroom',                                             \
      'gert'                                               \
    ),                                                     \
    repos = c(                                             \
      CRAN = 'https://packagemanager.posit.co/cran/latest' \
    )                                                      \
  )                                                        \
"

## DT
R -e "                                                     \
  install.packages(                                        \
    'DT',                                                  \
    repos = c(                                             \
      CRAN = 'https://packagemanager.posit.co/cran/latest' \
    )                                                      \
  )                                                        \
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
    repos = c(       \
      CRAN = 'https://packagemanager.posit.co/cran/latest' \
    )                                                      \
  )                                                        \
"

## a bridge to far? -- brings in another 60 packages
R -e "                                                      \
  install.packages(                                         \
    'tidymodels',                                           \
    repos = c(       \
      CRAN = 'https://packagemanager.posit.co/cran/latest' \
    )                \
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
      'rhub',           \
      'remotes',        \
      'rmarkdown',      \
      'rprojroot',      \
      'styler',         \
      'testthat',       \
      'tidyverse',      \
      'qpdf',                                              \
      'quarto',                                            \
      'semmcci',                                           \
      'betaDelta',                                         \
      'betaSandwich',                                      \
      'betaNB',                                            \
      'betaMC',                                            \
      'simStateSpace'                                      \
    ),                                                     \
    repos = c(                                             \
      CRAN = 'https://packagemanager.posit.co/cran/latest' \
    )                                                      \
  )                                                        \
"


# https://github.com/r-lib/xml2/issues/418

# R -e "                                                     \
#   install.packages(                                        \
#     c(                                                     \
#       'pak'                                                \
#     ),                                                     \
#     repos = c(                                             \
#       CRAN = 'https://packagemanager.posit.co/cran/latest' \
#     )                                                      \
#   )                                                        \
# "

# R -e "                             \
#   pak::pak('KNnut/xml2@fix-build') \
# "
