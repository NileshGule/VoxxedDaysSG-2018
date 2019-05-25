# Voxxed Days SG - 2018

Repository for Code related to [Voxxed Days Singapore 2018 talk on Modernize Application Developement with Highly Scalable Architecture using Docker and Azure](https://www.youtube.com/watch?v=M5mjJga1joM). 

The application showcases the journey of developer from containerizing application to testing locally using a single node Minikube cluster. It then goes into overdrive mode with deployment to managed Kubernetes cluster in Azure. Icing on the cake is the monitoring solution provided by `Azure Container Monitoring`.

The code structure is organized as

- `src` : contains the source code for the `VDSG2018` solution
  - `TechTalksWeb` : Contains source code for the MVC web frontend named `TechTalksWeb`
  - `TechTalksAPI` : Contains source code for the backend API named `TechTalksAPI`. The API also acts as a producer of RabbitMQ messages.
  - `TechTalksDB` : Contains the initialization script for `TechTalksDB` database and the Dockerfile
  - `TechTalksMQProcessor` : Contains code for onsuming events and writing to the SQL database
  - `TechTalksELKProcessor` : Contains code for consuming events and writing them to a Elastic Search Index
- `DotnetCLI` : Contains the dotnet CLI commands for creating solution, projects and adding external packages
- `Powershell` : contains the Powershell scripts for managing Kubernetes deployments and AKS cluster
- `k8s` : Contains the Kubernetes Manifest files for Minikube, AKS with containerized SQL Server linux and AKS-ManagedSQL running a managed SQL Database in Azure.

## Application deployment scenarios

The application with all the components deployed via containers will look as
![Containerized solution](/images/complete-elk-stack.png)

Database persistance is handled by externalizing the SQL server state using `Persistenet Volumes`
![Persistent Vlumes](/images/persistent-volume.png)

The application uses queue based load levelling pattern
![Queue based load levelling](/images/queue-based-load-levelling.png)

For a production grade scenario, the application uses managed SQL instance instead of a containerized version of SQL Server 2017
![Managed SQL Server](/images/managed-sql-scenario.png)

For monitoring, Prometheus and Grafana provide metrics collection and visualization
![Monitoring](/images/monitoring.png)