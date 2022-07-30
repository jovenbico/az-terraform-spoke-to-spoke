terraform {

  required_version = ">=0.12"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>2.0"
    }
  }
}

provider "azurerm" {
  skip_provider_registration = true
  features {}
}

locals {
  rg-name       = "1-0452c8bf-playground-sandbox"
  prefix-spoke1 = "spoke1"
  prefix-spoke2 = "spoke2"
}

data "azurerm_resource_group" "spoke1-vnet-rg" {
  name = local.rg-name
}

data "azurerm_resource_group" "spoke2-vnet-rg" {
  name = local.rg-name
}