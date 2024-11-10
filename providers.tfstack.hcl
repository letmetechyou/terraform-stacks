# Configure the Microsoft Azure Provider
required_providers {
  azurerm = {
    source  = "hashicorp/azurerm"
    version = "~> 4.00.0"
  }
}

provider "azurerm" "main" {
  config {
    features {}
    subscription_id = var.subscription_id
    client_id = var.client_id
    client_secret = var.client_secret
  }
}