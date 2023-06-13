# jeksterslab/rarch

Ivan Jacob Agaloos Pesigan

<!-- badges: start -->
[![Docker and Apptainer Build and Push (Weekly)](https://github.com/jeksterslab/docker-rarch/actions/workflows/docker-apptainer-build-push-weekly.yml/badge.svg)](https://github.com/jeksterslab/docker-rarch/actions/workflows/docker-apptainer-build-push-weekly.yml)
<!-- badges: end -->

## Description

Docker and Apptainer/Singularity containers for `R` projects based on [Arch Linux](https://archlinux.org/).

## GitHub Actions

The `Docker and Apptainer Build and Push (Weekly)` GitHub actions workflow performs the following:

- Builds the Docker image specified by the `Dockerfile`.
- Pushes the image to [DockerHub](https://hub.docker.com/repository/docker/jeksterslab/rarch/general) using the tags `latest` and `date and time of build (YEAR-MM-DD-HHMMSS)`.
- Builds the Singularity Image File (SIF) using Apptainer based on the Docker Hub image from the previous step.
- Creates a GitHub release named `sif-YEAR-MM-DD-HHMMSS`. Note that `sif-YEAR-MM-DD-HHMMSS.zip` contains the SIF. 

## Docker Shell

```bash
docker run -it jeksterslab/rarch
```

## Apptainer Shell

Download and unzip `sif-YEAR-MM-DD-HHMMSS.zip` from the GitHub release to extract `rarch.sif`.

```bash
apptainer shell rarch.sif
```
