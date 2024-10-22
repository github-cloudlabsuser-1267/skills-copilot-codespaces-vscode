# Connect to Azure
Connect-AzAccount

# Define variables
$storageAccountName = "mystorageaccount"
$resourceGroupName = "example-resources"
$location = "West Europe"

# Create a resource group
New-AzResourceGroup -Name $resourceGroupName -Location $location

# Create a storage account
$storageAccount = New-AzStorageAccount -ResourceGroupName $resourceGroupName `
                                       -Name $storageAccountName `
                                       -Location $location `
                                       -SkuName Standard_LRS `
                                       -Kind StorageV2

# Output storage account details
$storageAccount.Id
$storageAccount.PrimaryEndpoints.Blob