resource "azurerm_resource_group" "app-grp" {
  name     = "app-grp"
  location = local.resource_location
}


resource "azurerm_virtual_network" "vnet1" {
  name                = local.resource_virtual_netwrok.name
  location            = local.resource_location
  resource_group_name = azurerm_resource_group.app-grp.name
  address_space       = local.resource_virtual_netwrok.address_space

  subnet {
    name           = local.resource_subnets.names[0]
    address_prefixes = local.resource_subnets.web
  }

  subnet {
    name           = local.resource_subnets.names[1]
    address_prefixes = local.resource_subnets.app
    
  }
  depends_on = [azurerm_resource_group.app-grp]
}


