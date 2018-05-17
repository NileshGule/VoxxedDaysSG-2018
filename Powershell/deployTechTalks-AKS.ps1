Param(
    [parameter(Mandatory=$false)]
    [bool]$ProvisionAKSCluster=$false
)


if($ProvisionAKSCluster)
{
    Write-Host "Provisioning AKS cluster with default parameters" -ForegroundColor Cyan
    & ((Split-Path $MyInvocation.InvocationName) + "\initializeAKS.ps1") 
}

Write-Host "Starting deployment of TechTalks application and services" -ForegroundColor Yellow
Set-Location ~/projects/VoxxedDaysSG-2018/Kubernetes

Write-Host "Creating namespace"  -ForegroundColor Yellow
kubectl apply --filename 00_VDNamespace.yml
Write-Host "Namespace created successfully" -ForegroundColor Cyan

Write-Host "Creating storage class" -ForegroundColor Yellow
kubectl apply --filename 01_StorageClass.yml
Write-Host "Storage class created successfully" -ForegroundColor Cyan

Write-Host "Creating Persistant Volume Claim" -ForegroundColor Yellow
kubectl apply --filename 02_PersistantVolumeClaim.yml
Write-Host "Persistant Volume Claim created successfully" -ForegroundColor Cyan

Write-Host "Deploying ELK service" -ForegroundColor Yellow
Set-Location ~/projects/VoxxedDaysSG-2018/k8s/AKS/ElasticSearch
kubectl apply --recursive --filename . 

Write-Host "ELK service deployed successfully" -ForegroundColor Cyan

Write-Host "Deploying RabbitMQ service" -ForegroundColor Yellow
Set-Location ~/projects/VoxxedDaysSG-2018/k8s/AKS/RabbitMQ
kubectl apply --recursive --filename . 

Write-Host "RabbitMQ service deployed successfully" -ForegroundColor Cyan

Write-Host "Deploying Tech Talks DB service" -ForegroundColor Yellow
Set-Location ~/projects/VoxxedDaysSG-2018/k8s/AKS/TechTalksDB
kubectl apply --recursive --filename . 

Write-Host "Tech talks DB service deployed successfully" -ForegroundColor Cyan

Write-Host "Deploying Tech Talks API service" -ForegroundColor Yellow
Set-Location ~/projects/VoxxedDaysSG-2018/k8s/AKS/TechTalksAPI
kubectl apply --recursive --filename . 

Write-Host "Tech talks API service deployed successfully" -ForegroundColor Cyan

Write-Host "Deploying Tech Talks web frontend" -ForegroundColor Yellow
Set-Location ~/projects/VoxxedDaysSG-2018/k8s/AKS/TechTalksWeb
kubectl apply --recursive --filename . 

Write-Host "Tech talks web frontend deployed successfully" -ForegroundColor Cyan

Write-Host "Deploying Tech Talks Processor" -ForegroundColor Yellow
Set-Location ~/projects/VoxxedDaysSG-2018/k8s/AKS/TechTalksProcessor
kubectl apply --recursive --filename . 

Write-Host "Tech talks Processor deployed successfully" -ForegroundColor Cyan

Write-Host "Deploying Tech Talks ELK Consumer" -ForegroundColor Yellow
Set-Location ~/projects/VoxxedDaysSG-2018/k8s/AKS/TechTalksELKProcessor
kubectl apply --recursive --filename . 

Write-Host "Tech Talks ELK Consumer deployed successfully" -ForegroundColor Cyan

Write-Host "All the services related to Tech Talks application have been successfully deployed" -ForegroundColor Cyan

Set-Location ~/projects/VoxxedDaysSG-2018/Powershell