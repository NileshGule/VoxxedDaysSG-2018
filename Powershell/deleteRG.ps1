Param(
    [parameter(Mandatory=$false)]
    [string]$resourceGroupName="VD2018SGResourceGroup"
)

# Delete AKS cluster
Write-Host "Deleting resource group $resourceGroupName" -ForegroundColor Red
time az group delete --name=$resourceGroupName --yes