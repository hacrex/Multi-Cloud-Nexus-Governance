provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "nexus" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_virtual_network" "nexus" {
  name                = var.vnet_name
  address_space       = [var.cidr]
  location            = azurerm_resource_group.nexus.location
  resource_group_name = azurerm_resource_group.nexus.name
}

resource "azurerm_subnet" "nexus" {
  name                 = "workloads"
  resource_group_name  = azurerm_resource_group.nexus.name
  virtual_network_name = azurerm_virtual_network.nexus.name
  address_prefixes     = [cidrsubnet(var.cidr, 4, 0)]
}
