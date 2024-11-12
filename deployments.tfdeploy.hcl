identity_token "azurerm" {
  audience = [ "api://AzureADTokenExchange" ]
}

deployment "centralus" {
  inputs = {
    location = "centralus"
    address_space = ["192.168.1.0/24"]
    resource_group_name = "tfstacks-centralus"
    virtual_network_name = "tfstacks-centralus-vnet"
    tenant_id = ""
    identity_token = identity_token.azurerm.jwt
    client_id = ""
    subscription_id = ""
  }
}

deployment "eastus" {
  inputs = {
    location = "eastus"
    address_space = ["192.168.2.0/24"]
    resource_group_name = "tfstacks-eastus"
    virtual_network_name = "tfstacks-eastus-vnet"
    tenant_id = ""
    identity_token = identity_token.azurerm.jwt
    client_id = ""
    subscription_id = ""
  }
}

deployment "eastus2" {
  inputs = {
    location = "eastus2"
    address_space = ["192.168.3.0/24"]
    resource_group_name = "tfstacks-eastus2"
    virtual_network_name = "tfstacks-eastus2-vnet"
    tenant_id = ""
    identity_token = identity_token.azurerm.jwt
    client_id = ""
    subscription_id = ""
  }
}