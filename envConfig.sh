#!/bin/bash
# For CPU Test
sudo apt-get update
sudo apt-get install -y maven
git clone --recursive https://github.com/apache/incubator-mxnet
cd incubator-mxnet
make -j4
make scalapkg
make scalatest
cd ..
git clone https://github.com/lanking520/BenchmarkAI-Scala.git
cd BenchmarkAI-Scala
mvn package
bash bin/download.sh
bash bin/new_scala.sh resnet152/resnet-152 kitten.jpg images/ 1