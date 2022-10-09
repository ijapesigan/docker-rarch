jeksterslab/template
====================
Ivan Jacob Agaloos Pesigan

<!-- badges: start -->
[![Docker Image CI](https://github.com/jeksterslab/docker-template/actions/workflows/docker.yaml/badge.svg)](https://github.com/jeksterslab/docker-template/actions/workflows/docker.yaml)
<!-- badges: end -->

## Description

Docker and Apptainer/Singularity containers for the `template` project based on Archlinux.

## Build Docker Container

The `Docker Image CI` Github action builds the Docker container and pushes it to Docker Hub.

## Build Apptainer/Singularity Image File

To build the Apptainer/Singularity image file (`template.sif`),
run the following.

```bash
git clone https://github.com/jeksterslab/docker-template.git
cd docker-template
make
```

## Docker Run

```bash
docker run -it jeksterslab/template
```

## Apptainer Shell

```bash
apptainer shell template.sif
```
