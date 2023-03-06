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

output "out_subnet_name" {
  description = "Subnet Name"
  value = {
    for id in keys(var.subnets) : id => azurerm_subnet.subnet1[id].id

  }
}
