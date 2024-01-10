#!/bin/sh

echo "Please enter path to Kafkas directory (installation)?"
read kafka_path

cd $kafka_path

echo "Please enter bootstrap-server (on local computer it is localhost:9092)?"
read bootstrap_server

echo "All existing topics are:"
./bin/kafka-topics.sh  --bootstrap-server $bootstrap_server --list

consumer_reading_topic="readings"
tariff_topic="tariff"
dev_partitions=3
prod_partitions=5
dev_replication_factor=1
prod_replication_factor=3

echo "Creating topic $consumer_reading_topic"
./bin/kafka-topics.sh --create --bootstrap-server $bootstrap_server --replication-factor $dev_replication_factor --partitions $dev_partitions --topic $consumer_reading_topic

echo "Topic created $consumer_reading_topic"
./bin/kafka-topics.sh  --bootstrap-server $bootstrap_server --describe --topic $consumer_reading_topic

echo "Creating topic $tariff_topic"
./bin/kafka-topics.sh --create --bootstrap-server $bootstrap_server --replication-factor $dev_replication_factor --partitions $dev_partitions --topic $tariff_topic

echo "Topic created $tariff_topic"
./bin/kafka-topics.sh  --bootstrap-server $bootstrap_server --describe --topic $tariff_topic

echo "All topics are:"
./bin/kafka-topics.sh  --bootstrap-server $bootstrap_server --list

# Use below commands to delete topic
#echo "Deleting topic $consumer_reading_topic"
#./bin/kafka-topics.sh  --bootstrap-server $bootstrap_server --delete --topic $consumer_reading_topic
#echo "Deleting topic $tariff_topic"
#./bin/kafka-topics.sh  --bootstrap-server $bootstrap_server --delete --topic $tariff_topic
#echo "All topics are:"
#./bin/kafka-topics.sh  --bootstrap-server $bootstrap_server --list
