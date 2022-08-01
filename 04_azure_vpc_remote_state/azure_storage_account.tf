resource "azurerm_resource_group" "resource_group_remote" {
  name     = "rg-remotestate"
  location = var.location

  tags = local.common_tags
}

resource "azurerm_storage_account" "storage_account_remote_state" {
  name                     = "julianometalsprs"
  resource_group_name      = azurerm_resource_group.resource_group_remote.name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type

  blob_properties {
    versioning_enabled = true
  }

  tags = local.common_tags
}

resource "azurerm_storage_container" "container_remote_state" {
  name                  = "ct-remotestate"
  storage_account_name  = azurerm_storage_account.storage_account_remote_state.name
  container_access_type = "private"
}
