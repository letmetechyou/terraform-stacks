output "virtual_network_output" {
  value = zipmap(keys(azurerm_virtual_network.virtual_network), values(azurerm_virtual_network.virtual_network)[*])
}

output "virtual_network_output_names" {
  value = { for key, value in azurerm_virtual_network.virtual_network : value.name => value }
}

output "resource_group_output" {
	value = zipmap(values(azurerm_resource_group.resource_group)[*].name, values(azurerm_resource_group.resource_group)[*])
}

output "resource_group_output_names" {
  value = { for key, value in azurerm_resource_group.resource_group : value.name => value }
}