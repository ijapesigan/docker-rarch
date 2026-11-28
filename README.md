
<!-- README.md is generated from .setup/readme/README.Rmd, which rProject's
docker template writes. Edit .setup/readme/description.md, scripts/cran.txt,
scripts/github.txt, or .setup/scripts/project.R instead. -->

# ijapesigan/rarch

Updated 2026-11-28 04:48:48 UTC.

<!-- badges: start -->
[![Make Project](https://github.com/ijapesigan/docker-rarch/actions/workflows/make.yml/badge.svg)](https://github.com/ijapesigan/docker-rarch/actions/workflows/make.yml)
[![Docker Build and Push [amd64]](https://github.com/ijapesigan/docker-rarch/actions/workflows/docker-build-push-amd64-only.yml/badge.svg)](https://github.com/ijapesigan/docker-rarch/actions/workflows/docker-build-push-amd64-only.yml)
[![Docker Build and Push RArch [amd64] (Daily)](https://github.com/ijapesigan/docker-rarch/actions/workflows/docker-build-push-daily-amd64-only-rarch.yml/badge.svg)](https://github.com/ijapesigan/docker-rarch/actions/workflows/docker-build-push-daily-amd64-only-rarch.yml)
[![Non-ASCII Check](https://github.com/ijapesigan/docker-rarch/actions/workflows/non-ascii-check.yml/badge.svg)](https://github.com/ijapesigan/docker-rarch/actions/workflows/non-ascii-check.yml)
[![Shell Check](https://github.com/ijapesigan/docker-rarch/actions/workflows/shellcheck.yml/badge.svg)](https://github.com/ijapesigan/docker-rarch/actions/workflows/shellcheck.yml)
<!-- badges: end -->

## Description

An R image for projects based on [Arch Linux](https://archlinux.org/),
with rProject, TinyTeX, structural equation modeling, and dynamic and
state-space models (packages installed by the scripts in `scripts/`).

Based on `archlinux`; built for linux/amd64. Source:
<https://github.com/ijapesigan/docker-rarch>.

## Use

Docker (Docker Hub or the GitHub Container Registry):

``` bash
docker run -it ijapesigan/rarch
docker run -it ghcr.io/ijapesigan/rarch
```

Apptainer:

``` bash
apptainer pull rarch.sif docker://ijapesigan/rarch
apptainer shell rarch.sif
```

## Contents

R packages from CRAN (`scripts/cran.txt`), with their dependencies:

- from cran_pkg.sh: rProject: cffr, covr, devtools, distro, knitr,
  lintr, pkgdown, quarto, Rcpp, remotes, RefManageR, rmarkdown,
  roxygen2, rprojroot, stats, styler, tinytex, utils, testthat
- from cran_pkg.sh: tidyverse, DT, dplyr database backends, tidymodels:
  tidyverse, BiocManager, vroom, gert, DT, arrow, dbplyr, DBI, dtplyr,
  duckdb, nycflights13, Lahman, RMariaDB, RPostgres, RSQLite, fst,
  tidymodels
- from cran_pkg.sh: tools and the author’s packages: ggplot2,
  languageserver, magick, markdown, microbenchmark, pdftools, printr,
  ragg, rhub, qpdf, semmcci, betaDelta, betaSandwich, betaNB, betaMC,
  simStateSpace
- OpenMx repository’s build: lavaan, metaSEM, symSEM, semlbci,
  MplusAutomation, ctsem, cTMed

R packages from GitHub (`scripts/github.txt`), installed after CRAN:

- [nx10/httpgd](https://github.com/nx10/httpgd)
- [rstudio/tinytex](https://github.com/rstudio/tinytex)
- [r-lib/cli](https://github.com/r-lib/cli)
- [r-lib/devtools](https://github.com/r-lib/devtools)
- [r-lib/roxygen2](https://github.com/r-lib/roxygen2)
- [ijapesigan/rProject](https://github.com/ijapesigan/rProject)
- [ijapesigan/longMI](https://github.com/ijapesigan/longMI)
- [jeksterslab/semmcci](https://github.com/jeksterslab/semmcci)
- [jeksterslab/betaDelta](https://github.com/jeksterslab/betaDelta)
- [jeksterslab/betaSandwich](https://github.com/jeksterslab/betaSandwich)
- [jeksterslab/betaNB](https://github.com/jeksterslab/betaNB)
- [jeksterslab/betaMC](https://github.com/jeksterslab/betaMC)
- [jeksterslab/simStateSpace](https://github.com/jeksterslab/simStateSpace)
- [jeksterslab/bootStateSpace](https://github.com/jeksterslab/bootStateSpace)
- [jeksterslab/cTMed](https://github.com/jeksterslab/cTMed)
- [jeksterslab/dynUtils](https://github.com/jeksterslab/dynUtils)
- [jeksterslab/dynTools](https://github.com/jeksterslab/dynTools)
- [jeksterslab/fitVARMxID](https://github.com/jeksterslab/fitVARMxID)
- [jeksterslab/metaDyn](https://github.com/jeksterslab/metaDyn)

## Builds

- Docker Build and Push \[amd64\] (`docker-build-push-amd64-only.yml`):
  after Make Project
- Docker Build and Push RArch \[amd64\] (Daily)
  (`docker-build-push-daily-amd64-only-rarch.yml`): daily at 00:00 UTC,
  when the base image is rebuilt
- Make Project (`make.yml`): on push
- Non-ASCII Check (`non-ascii-check.yml`): after Make Project
- Shell Check (`shellcheck.yml`): after Make Project

The images are pushed to Docker Hub and the GitHub Container Registry as
`ijapesigan/rarch:latest`.
