provider "azurerm" {
  version = "~> 2.21"
  features {}
  subscription_id = var.ARM_SUBSCRIPTION_ID
  client_id       = var.ARM_CLIENT_ID
  client_secret   = var.ARM_CLIENT_SECRET
  tenant_id       = var.ARM_TENANT_ID
  environment     = var.ARM_ENVIRONMENT
}

resource "azurerm_resource_group" "example" {
  name     = "azurermtftest"
  location = var.location

}

resource "azurerm_storage_account" "example" {
  name                     = "azurermtftest"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "example" {
  name                  = "azurermtftest"
  storage_account_name  = azurerm_storage_account.example.name
  container_access_type = "private"
}
