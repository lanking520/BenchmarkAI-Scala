#!/bin/bash
# For CPU Test
sudo apt-get update
sudo apt-get install maven | y
git clone --recursive https://github.com/apache/incubator-mxnet
cd incubator-mxnet
make -j4
make scalapkg
make scalatest