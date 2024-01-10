package com.fpcl.ingest

import java.util.Properties

object DataIngestorPartialSolution {
  // Initialize your logger here


  def main(args: Array[String]): Unit = {
    // Parse the arguments `args`
    // Pass <topic> and <bootstrap-servers> as arguments
    // Alternatively you can read <topic> and <bootstrap-servers> from properties file and pass the path of
    // properties file as an argument to the program.

    // Declare a variable for topic and initialize it
    // Declare a variable for bootstrap server and initialize it

    // Generate some dummy data to test

    // Call the ingest method
    // ingestData(topic, bootstrapServers, dummyData)

    // Optional: verify using Kafka util consumer command
  }

  def ingestData(topic: String, bootstrapServers: String, data: Seq[(String, String)]): Unit = {
    // Initialize properties
    val properties = new Properties
    // Add Kafka properties.

    // Declare a KafkaProducer


    // Ingest all the data to Kafka
  }
}
