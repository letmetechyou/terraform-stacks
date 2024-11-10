terraform {
  required_version = ">=1.5.7"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=4.00"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = ">=2.43"
    }
  }

  backend "azurerm" {}
}

provider "azurerm" {
  features {}
}

provider "azuread" {
}