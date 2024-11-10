component "virtual_network" {
    for_each = var.virtual_network_data
    source = "./virtual_network"
    inputs = {
      name = each.value.name
      resource_group_name = component.resource_group[each.value].name
      address_space = var.virtual_network_data.address_space
      location = component.resource_group[each.value].location
    }
    providers = {
      azurerm = provider.azurerm.main
    }
}

component "resource_group" {
    for_each = var.resource_group_data
    source = "./resouce_group"
    inputs = {
      name = each.value.resource_group_name
      location = each.value.location
    }

    providers = {
      azurerm = provider.azurerm.main
    }
}