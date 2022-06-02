terraform {
  required_version = ">= 0.13"
  backend "azurerm" {
    resource_group_name  = "REDACTED"
    storage_account_name = "REDACTED"
    container_name       = "tfbackend"
    key                  = "terraform.state"
  }
  required_providers { #what does this mean and why is it required.
    mongodbatlas = {
      source = "mongodb/mongodbatlas"
      version = "0.9.1"
    }

    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.59.0"
    }
  }
}

provider "azurerm" {
  features {}

  subscription_id = var.subscription_id
  client_id       = var.service_principal_app_Id
  client_secret   = var.service_principal_password
  tenant_id       = var.tenant_id
}

provider "mongodbatlas" {
  public_key  = var.mongodb_atlas_api_pub_key
  private_key = var.mongodb_atlas_api_pri_key
}

locals {
  infra_version = "1.0"
}
