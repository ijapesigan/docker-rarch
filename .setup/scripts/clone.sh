#!/bin/bash

git clone git@github.com:ijapesigan/docker-rarch.git
rm -rf "$PWD.git"
mv docker-rarch/.git "$PWD"
rm -rf docker-rarch
