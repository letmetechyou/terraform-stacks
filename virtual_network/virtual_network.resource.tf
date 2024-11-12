variable "address_space" {

}

variable "virtual_network_name" {
  
}

variable "location" {
  
}

resource "azurerm_virtual_network" "virtual_network" {
  # Required
  name = var.virtual_network_name
  resource_group_name = var.resource_group.name
  address_space = var.address_space
  location      = var.resource_group.location
}

variable "resource_group" {
  type = object({
    name = string
    location = string
  })
}