# Voxxed Days SG - 2018

Repository for Code related to Voxxed Days Singapore 2018 talk on Modernize Application Developement with Highly Scalable Architecture using Docker and Azure. The application showcases the journey ofdeveloper from containerizing application to testing locally using a single node Minikube cluster. It then goes into overdrive mode with deployment to managed Kubernetes cluster in Azure. Icing on the cake is the monitoring solution provided by `Azure Container Monitoring`.

The code structure is organized as

- src : contains the source code for the `VDSG2018` solution
  - TechTalksWeb : Contains source code for the MVC web frontend named `TechTalksWeb`
  - TechTalksAPI : Contains source code for the backend API named `TechTalksAPI`. The API also acts as a producer of RabbitMQ messages.
  - TechTalksDB : Contains the initialization script for `TechTalksDB` database and the Dockerfile
  - TechTalksMQProcessor : Contains the RabbitMQ consumer code
- DotnetCLI : Contains the dotnet CLI commands for creating solution, projects and adding external packages
- Powershell : contains the Powershell scripts for managing Kubernetes deployments and AKS cluster 