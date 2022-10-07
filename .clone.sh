#! /usr/bin/bash

git clone git@github.com:jeksterslab/docker-template.git
rm -rf "$PWD.git"
mv docker-template/.git $PWD
rm -rf docker-template
