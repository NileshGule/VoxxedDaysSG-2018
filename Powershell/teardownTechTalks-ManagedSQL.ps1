Param(
    [parameter(Mandatory=$false)]
    [bool]$ProvisionAKSCluster=$false
)


if($ProvisionAKSCluster)
{
    Write-Host "Provisioning AKS cluster with default parameters" -ForegroundColor Cyan
    & ((Split-Path $MyInvocation.InvocationName) + "\initializeAKS.ps1") 
}

Write-Host "Starting deletion of TechTalks application and services" -ForegroundColor Yellow


Write-Host "Deleting Tech Talks Processor" -ForegroundColor Yellow
Set-Location ~/projects/VoxxedDaysSG-2018/k8s/AKS-ManagedSQL/TechTalksProcessor
kubectl delete --recursive --filename . 

Write-Host "Tech talks Processor deleted successfully" -ForegroundColor Cyan

Write-Host "Deleting Tech Talks web frontend" -ForegroundColor Yellow
Set-Location ~/projects/VoxxedDaysSG-2018/k8s/AKS-ManagedSQL/TechTalksWeb
kubectl delete --recursive --filename . 

Write-Host "Tech talks web frontend deleted successfully" -ForegroundColor Cyan

Write-Host "Deleting Tech Talks API service" -ForegroundColor Yellow
Set-Location ~/projects/VoxxedDaysSG-2018/k8s/AKS-ManagedSQL/TechTalksAPI
kubectl delete --recursive --filename . 

Write-Host "Tech talks API service deleted successfully" -ForegroundColor Cyan

Set-Location ~/projects/VoxxedDaysSG-2018/k8s/AKS-ManagedSQL

Write-Host "Deleting namespace"  -ForegroundColor Yellow
kubectl delete --filename 00_VDNamespace.yml
Write-Host "Namespace deleted successfully" -ForegroundColor Cyan


Write-Host "All the services related to Tech Talks application have been successfully deleted" -ForegroundColor Cyan

Set-Location ~/projects/VoxxedDaysSG-2018/Powershell