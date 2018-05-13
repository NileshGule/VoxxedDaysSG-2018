# VoxxedDaysSG-2018

Repository for Code related to Voxxed Days Singapore 2018 talk on Modernize Application Developement with Highly Scalable Architecture using Docker and Azure

The code structure is organized as

- src : contains the source code for the `VDSG2018` solution
  - TechTalksWeb : Contains source code for the MVC web frontend named `TechTalksWeb`
  - TechTalksAPI : Contains source code for the backend API named `TechTalksAPI`. The API also acts as a producer of RabbitMQ messages.
  - TechTalksDB : Contains the initialization script for `TechTalksDB` database and the Dockerfile
  - TechTalksMQProcessor : Contains the RabbitMQ consumer code
