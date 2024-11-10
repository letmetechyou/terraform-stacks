# resource "azurerm_resource_group" "resource_group" {
#   for_each = try({for key, value in var.virtual_network_data : key => value if value.enabled}, {})
#   name = var.virtual_network_data.resource_group_name
#   location = var.virtual_network_data.location
# }

resource "azurerm_virtual_network" "virtual_network" {

	# Required
	name                = var.virtual_network_data.name
	resource_group_name = coalesce(azurerm_resource_group.resource_group[each.key].name, var.virtual_network_data.resource_group_name ) 
	address_space       = var.virtual_network_data.address_space
	location            = var.virtual_network_data.location

	# Optional
	bgp_community			= var.virtual_network_data.bgp_community
	dns_servers 			= var.virtual_network_data.dns_servers
	edge_zone 			= var.virtual_network_data.edge_zone
	flow_timeout_in_minutes 	= var.virtual_network_data.flow_timeout_in_minutes

	dynamic "ddos_protection_plan" {
		for_each = var.virtual_network_data["ddos_protection_plan"] == null ? [] : [1]

		content {
			id     = var.virtual_network_data.ddos_protection_plan.id
			enable = var.virtual_network_data.ddos_protection_plan.enable
		}
	}

	# Optional encryption dynamic block
	dynamic "encryption" {
		for_each = var.virtual_network_data["encryption"] == null ? [] : [1]

		content {
			enforcement = var.virtual_network_data.encryption.enforcement
		}
	}

	# Optional subnet dynamic block
		dynamic "subnet" {
			for_each = var.virtual_network_data.subnets == null ? [] : {for subnet in var.virtual_network_data.subnet : subnet.name => subnet if subnet.enabled}

		content {
			name           = subnet.value.name
			address_prefixes = subnet.value.address_prefix
			security_group = subnet.value.security_group
		}
	}

	tags = var.virtual_network_data.tags
}
