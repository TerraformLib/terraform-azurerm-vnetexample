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
  value = {
    for id in keys(var.subnets) : id => azurerm_subnet.subnet1[id].id

  }
}
output "out_public_ip_name" {
  description = "Public IP Name"
  value       = azurerm_public_ip.publicIP.name
}

output "bastionhost_name" {
  description = "BastionHost Name"
  value       = azurerm_bastion_host.bastion_host.name
}

output "bastionhost_public_IP" {
  description = "BastionHost Public IP Address"
  value       = azurerm_public_ip.publicIP.id
}