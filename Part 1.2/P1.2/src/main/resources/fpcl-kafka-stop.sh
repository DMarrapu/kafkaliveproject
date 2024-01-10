#!/bin/sh

echo "Please enter path to Kafkas directory?"
read kafka_path

cd $kafka_path

echo "Stopping Kafkas Server"
nohup ./bin/kafka-server-stop.sh
echo "Kafkas Server stopped"

echo "Stopping Zookeepera"
nohup ./bin/zookeeper-server-stop.sh
echo "Zookeepera stopped"


