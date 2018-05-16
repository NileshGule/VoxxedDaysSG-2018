Param(
    [parameter(Mandatory=$false)]
    [string]$resourceGroupName="VD2018SGResourceGroup",
    [parameter(Mandatory=$false)]
    [string]$clusterName="VD2018SGAKSCluster"
)

# Browse AKS dashboard
Write-Host "Browse AKS cluster $clusterName" -ForegroundColor Yellow
az aks browse `
--resource-group=$resourceGroupName `
--name=$clusterName