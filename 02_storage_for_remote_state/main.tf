terraform {

  required_version = ">= 1.0.0"

  required_providers {
    aws = {
      source = "hashicorp/aws"
    }

    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.13.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"

  default_tags {
    tags = {
      owner      = "Fenrir"
      managed-by = "Terraform"
    }
  }
}

provider "azurerm" {
  features {}
}
