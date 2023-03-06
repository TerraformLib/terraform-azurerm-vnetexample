resource_group_name     = "rg-network-tfvars"
resource_group_location = "east us"
virtual_network_name    = "vnet-eastus"
tags                    = "devv"
vnet_address_space      = ["10.13.0.0/16"]
subnets = {
  web_sub  = "10.13.1.0/24"
  app_sub  = "10.13.2.0/24"
  data_sub = "10.13.3.0/24"
}
