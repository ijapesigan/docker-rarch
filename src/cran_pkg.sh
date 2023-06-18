#!/bin/bash

set -e

## tidyverse
R -e "             \
  pkg <- c(        \
    'tidyverse',   \
    'devtools',    \
    'rmarkdown',   \
    'BiocManager', \
    'vroom',       \
    'gert'         \
  );               \
  for (i in seq_along(pkg)) { \
    if (!require(pkg[i])) { \
       install.packages(pkg[i], repos = 'https://packagemanager.rstudio.com/all/latest') \ 
    } \
  } \                                
"

## dplyr database backends
R -e "              \
  pkg <- c(         \
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
    'fst'          \
  );               \
  for (i in seq_along(pkg)) { \
    if (!require(pkg[i])) { \
       install.packages(pkg[i], repos = 'https://packagemanager.rstudio.com/all/latest') \ 
    } \
  } \                                
"

## a bridge to far? -- brings in another 60 packages
R -e "           \
  pkg <- c(      \
    'tidymodels' \
  );             \
  for (i in seq_along(pkg)) { \
    if (!require(pkg[i])) { \
       install.packages(pkg[i], repos = 'https://packagemanager.rstudio.com/all/latest') \ 
    } \
  } \                                
"

R -e "                \
  pkg <- c(           \
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
  );                  \
  for (i in seq_along(pkg)) { \
    if (!require(pkg[i])) { \
       install.packages(pkg[i], repos = 'https://packagemanager.rstudio.com/all/latest') \ 
    } \
  } \                                
"
