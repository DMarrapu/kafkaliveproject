#!/bin/sh

echo "Please enter path to Kafkas directory (installation)?"
read kafka_path

cd $kafka_path

echo "Starting Zookeepera"
nohup ./bin/zookeeper-server-start.sh config/zookeeper.properties &>/dev/null & disown;
echo "Zookeepera started"

echo "Starting Kafkas Servers"
nohup ./bin/kafka-server-start.sh config/server.properties &>/dev/null & disown;
echo "Kafkas Servers started"
