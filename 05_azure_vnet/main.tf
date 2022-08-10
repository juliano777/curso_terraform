terraform {

  required_version = ">= 1.0.0"

  required_providers {

    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.13.0"
    }
  }

  backend "azurerm" {
    resource_group_name = "rg-remotestate"
    storage_account_name= "julianometalsprs"
    container_name = "ct-remotestate"
    key = "azure-vnet/terraform.tfstate"
  }
  
}

provider "azurerm" {
  features {}
}
