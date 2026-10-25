
<!-- README.md is generated from .setup/readme/README.Rmd, which rProject's
docker template writes. Edit .setup/readme/description.md, scripts/cran.txt,
scripts/github.txt, or .setup/scripts/project.R instead. -->

# ijapesigan/rarch

<!-- badges: start -->

[![Docker Build and Push
\[amd64\]](https://github.com/ijapesigan/docker-rarch/actions/workflows/docker-build-push-amd64-only.yml/badge.svg)](https://github.com/ijapesigan/docker-rarch/actions/workflows/docker-build-push-amd64-only.yml)
[![Docker Build and Push RArch \[amd64\]
(Daily)](https://github.com/ijapesigan/docker-rarch/actions/workflows/docker-build-push-daily-amd64-only-rarch.yml/badge.svg)](https://github.com/ijapesigan/docker-rarch/actions/workflows/docker-build-push-daily-amd64-only-rarch.yml)
[![Make
Project](https://github.com/ijapesigan/docker-rarch/actions/workflows/make.yml/badge.svg)](https://github.com/ijapesigan/docker-rarch/actions/workflows/make.yml)
[![Non-ASCII
Check](https://github.com/ijapesigan/docker-rarch/actions/workflows/non-ascii-check.yml/badge.svg)](https://github.com/ijapesigan/docker-rarch/actions/workflows/non-ascii-check.yml)
[![Shell
Check](https://github.com/ijapesigan/docker-rarch/actions/workflows/shellcheck.yml/badge.svg)](https://github.com/ijapesigan/docker-rarch/actions/workflows/shellcheck.yml)
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
