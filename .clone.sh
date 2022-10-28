#! /usr/bin/bash

git clone git@github.com:jeksterslab/docker-rarch.git
rm -rf "$PWD.git"
mv docker-rarch/.git $PWD
rm -rf docker-rarch
