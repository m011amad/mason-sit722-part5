# Initialises Terraform providers and sets their version numbers.

terraform {
  backend "azurerm" {
    resource_group_name  = "deakinuni"
    storage_account_name = "terraformbackendmason"
    container_name       = "terraform"
    key                  = "prod.terraform.tfstate"
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.71.0"
    }
  }

  required_version = ">= 1.5.6"
}

provider "azurerm" {
  features {}
  skip_provider_registration = true
}
