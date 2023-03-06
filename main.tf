# Resource Group 
resource "azurerm_resource_group" "rg1" {
  name     = var.resource_group_name
  location = var.resource_group_location

  tags = {
    environment = var.tags
  }
}
# Virtual Network
resource "azurerm_virtual_network" "vn1" {
  name                = var.virtual_network_name
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
  address_space       = var.vnet_address_space
  tags = {
    environment = var.tags
  }

}
resource "azurerm_subnet" "subnet1" {
  for_each             = var.subnets
  name                 = each.key
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.virtual_network_name
  address_prefixes     = [each.value]

}
