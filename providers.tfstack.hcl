# Configure the Microsoft Azure Provider
required_providers {
  azurerm = {
    source  = "hashicorp/azurerm"
    version = "~> 4.00.0"
  }

  random = {
    source  = "hashicorp/random"
    version = "~> 3.5.1"
  }
}

provider "azurerm" "main" {}

provider "random" "main" {}