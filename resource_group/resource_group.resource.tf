variable "resource_group_name" {}
variable "location" {}

resource "azurerm_resource_group" "resource_group" {
  name     = var.resource_group_name
  location = var.location
  }

  output "resource_group" {
    value = {
      id = azurerm_resource_group.resource_group.id
      name = azurerm_resource_group.resource_group.name
      location = azurerm_resource_group.resource_group.location
    }
  }