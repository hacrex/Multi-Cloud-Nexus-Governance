resource "azurerm_virtual_network" "vnet" {
  name                = "nexus-vnet-azure"
  address_space       = ["10.2.0.0/16"]
  location            = "East US"
  resource_group_name = "nexus-rg"
}
