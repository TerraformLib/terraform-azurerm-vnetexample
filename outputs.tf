output "out_resource_group_name" {
  description = "Resource Group Name"
  value       = azurerm_resource_group.rg1.name
}

output "out_resource_group_location" {
  description = "Resource Group Location"
  value       = azurerm_resource_group.rg1.location
}

output "out_virtual_network_name" {
  description = "VM Name"
  value       = azurerm_virtual_network.vn1.name
}


output "out_network_secuirty_group_name" {
  description = "NSG Name"
  value       = azurerm_network_security_group.nsg1.name
}

output "out_subnet_name" {
  description = "Subnet Name"
  value       = azurerm_subnet.subnet1.name
}