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
  address_space       = var.vnet_address_space
  tags = {
    environment = var.tags
  }

}

resource "azurerm_subnet" "subnet1" {
  depends_on = [
    azurerm_virtual_network.vn1
  ]
  for_each             = var.subnets
  name                 = each.value["name"]
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.virtual_network_name
  address_prefixes     = each.value["address_prefixes"]

}

resource "azurerm_public_ip" "publicIP" {
  name                = var.public_ip_name
  resource_group_name = var.resource_group_name
  location            = var.resource_group_location
  allocation_method   = "Static"
  sku                 = "Standard"

  tags = {
    environment = var.tags
  }
}

resource "azurerm_bastion_host" "bastion_host" {
  name                = var.bastionhost_name
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name

  ip_configuration {
    name                 = "configuration"
    subnet_id            = azurerm_subnet.subnet1["bastion_subet"].id
    public_ip_address_id = azurerm_public_ip.publicIP.id
  }
}