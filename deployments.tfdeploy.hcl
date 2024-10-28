deployment "centralus" {
  inputs = {
    name = "vnet1-centralus"
    resource_group_name = "centralus-rg"
    location = "centralus"
    address_space = "10.0.0.0/24"
  }
}

deployment "eastus2" {
  inputs = {
    name = "vnet1-eastus2"
    resource_group_name = "eastus2-rg"
    location = "eastus2"
    address_space = "10.1.0.0/24"
  }
}