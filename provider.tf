# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.1"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
  subscription_id = "ae5613de-f49e-47e9-afa0-54dae3dbb045"
  client_id       = "b58913bd-12a8-4720-a540-74f0f6a600e8"
  client_secret   = "b3d955d4-9342-4b8b-9116-d23b2b592737"
  tenant_id       = "5b21e8fd-f562-4c52-9054-1a5c38b33db8"
}
