component "resource_group" {
  source = "./resource_group"

  inputs = {
    location    = var.location
    resource_group_name = var.resource_group_name
  }

  providers = {
    azurerm = provider.azurerm.this
  }
}

component "virtual_network" {
  source = "./virtual_network"

  inputs = {
    address_space    = var.address_space
    virtual_network_name = var.virtual_network_name
    location         = component.resource_group.resource_group
    resource_group = component.resource_group.resource_group
  }

  providers = {
    azurerm = provider.azurerm.this
  }
}
