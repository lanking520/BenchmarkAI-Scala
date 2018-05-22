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
mvn clean package
cd bin
bash download.sh
bash new_scala.sh