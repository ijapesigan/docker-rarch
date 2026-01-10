ijapesigan/rarch
================
Ivan Jacob Agaloos Pesigan
2026-01-10

<!-- README.md is generated from .setup/readme/README.Rmd. Please edit that file -->

<!-- badges: start -->

[![Make
Project](https://github.com/ijapesigan/docker-rarch/actions/workflows/make.yml/badge.svg)](https://github.com/ijapesigan/docker-rarch/actions/workflows/make.yml)
[![Docker and Apptainer Build and Push \[amd64/arm64\]
(Weekly)](https://github.com/ijapesigan/docker-rarch/actions/workflows/docker-apptainer-build-push-weekly-amd64-arm64.yml/badge.svg)](https://github.com/ijapesigan/docker-rarch/actions/workflows/docker-apptainer-build-push-weekly-amd64-arm64.yml)
[![Docker Build and Push
\[multi\]](https://github.com/ijapesigan/docker-rarch/actions/workflows/docker-build-push-multi.yml/badge.svg)](https://github.com/ijapesigan/docker-rarch/actions/workflows/docker-build-push-multi.yml)
[![Docker Build and Push \[multi\]
(Daily)](https://github.com/ijapesigan/docker-rarch/actions/workflows/docker-build-push-daily-multi-docs.yml/badge.svg)](https://github.com/ijapesigan/docker-rarch/actions/workflows/docker-build-push-daily-multi-docs.yml)
[![Shell
Check](https://github.com/ijapesigan/docker-rarch/actions/workflows/shellcheck.yml/badge.svg)](https://github.com/ijapesigan/docker-rarch/actions/workflows/shellcheck.yml)
<!-- badges: end -->

## Description

Docker and Apptainer/Singularity containers for `R` projects based on
[Arch Linux](https://archlinux.org/).

## GitHub Actions

The `Docker and Apptainer Build and Push [amd64]` GitHub actions
workflow performs the following:

- Builds the Docker image specified by the `Dockerfile`.
- Pushes the image to
  [DockerHub](https://hub.docker.com/r/ijapesigan/rarch) using the tags
  `latest` and `date and time of build (YEAR-MM-DD-HHMMSSMS)`.

## Docker Shell

``` bash
docker run -it ijapesigan/rarch
```

## Apptainer Container

To build the Singularity Image File (SIF), run the following.

``` bash
apptainer pull rarch.sif docker://ijapesigan/rarch:latest
```
