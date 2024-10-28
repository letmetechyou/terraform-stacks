# Configure the Microsoft Azure Provider
required_providers {
  azure = {
    source  = "hashicorp/azurerm"
    version = "~> 4.00.0"
  }

  random = {
    source  = "hashicorp/random"
    version = "~> 3.5.1"
  }
}

provider "azurerm" "this" {
    features {}
}

provider "random" "this" {}