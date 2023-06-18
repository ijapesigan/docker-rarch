#!/bin/bash

set -e

R -e "install.packages(                                   \
  c(                                                      \
    'covr',                                               \
    'devtools',                                           \
    'distro',                                             \
    'ggplot2',                                            \
    'knitr',                                              \
    'languageserver',                                     \
    'lintr',                                              \
    'magick',                                             \
    'microbenchmark',                                     \
    'pdftools',                                           \
    'pkgdown',                                            \
    'ragg',                                               \
    'remotes',                                            \
    'rmarkdown',                                          \
    'rprojroot',                                          \
    'styler',                                             \
    'testthat',                                           \
    'tidyverse',                                          \
    'qpdf',                                               \
    'semmcci',                                            \
    'betaDelta',                                          \
    'betaSandwich',                                       \
    'betaNB',                                             \
    'betaMC'                                              \
  ),                                                      \
  repos = 'https://packagemanager.rstudio.com/all/latest' \
)"
