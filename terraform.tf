# Configure the Azure provider
provider "azurerm" {
  features {}
}

# Define variables
variable "storage_account_name" {
  description = "Name of the storage account"
  type        = string
}

variable "location" {
  description = "Location for the storage account"
  type        = string
  default     = "West Europe"
}

# Define the resource group
resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = var.location
}

# Define the storage account resource
resource "azurerm_storage_account" "example" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  account_kind             = "StorageV2"
}

# Define outputs
output "storage_account_id" {
  value = azurerm_storage_account.example.id
}

output "storage_account_primary_endpoints" {
  value = azurerm_storage_account.example.primary_blob_endpoint
}