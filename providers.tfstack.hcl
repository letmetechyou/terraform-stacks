# Configure the Microsoft Azure Provider
required_providers {
  azurerm = {
    source  = "hashicorp/azurerm"
    version = "~> 4.00.0"
  }
}

provider "azurerm" "main" {
  config {
    features {
      
    }
  }
}