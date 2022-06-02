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
  subscription_id = "079e3806-2e1f-4518-bf26-96c78372d728"
  tenant_id = "5b21e8fd-f562-4c52-9054-1a5c38b33db8"
  
}
