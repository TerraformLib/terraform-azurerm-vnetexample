# Resource Group 
resource "azurerm_resource_group" "rg1" {
  name     = var.resource_group_name
  location = var.resource_group_location

  tags = {
    environment = var.tags
  }
}

# Network Security Group
resource "azurerm_network_security_group" "nsg1" {
  name                = var.network_secuirty_group_name
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name

  tags = {
    environment = var.tags
  }
}

# Virtual Network
resource "azurerm_virtual_network" "vn1" {
  name                = var.virtual_network_name
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
  address_space       = ["10.0.0.0/16"]
  dns_servers         = ["10.0.0.4", "10.0.0.5"]

  tags = {
    environment = var.tags
  }

}

resource "azurerm_subnet" "subnet1" {
  depends_on = [
    azurerm_virtual_network.vn1
  ]
  name                 = var.subnet_name
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.virtual_network_name
  address_prefixes     = ["10.0.1.0/24"]

}