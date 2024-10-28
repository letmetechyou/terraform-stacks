component "virtual_network" {
    source = "./virtual_network"
    inputs = {
      name = var.virtual_network_data.name
      resource_group_name = var.virtual_network_data.resource_group_name
      address_space = var.virtual_network_data.address_space
      location = var.virtual_network_data.location
      provider = provider.azure.this
    }
}