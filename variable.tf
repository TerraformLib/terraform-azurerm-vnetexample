variable "resource_group_name" {
  type        = string
  description = "RG name"
  default     = "rg-var-default"
}

variable "resource_group_location" {
  type        = string
  description = "RG Location"
  default     = "west us"
}

variable "virtual_network_name" {
  type        = string
  description = "VN name"
  default     = "vNet-var-default"
}

variable "vnet_address_space" {
  type        = list(any)
  description = "the address space of the VNet"
  #default     = ["10.13.0.0/16"]
}

variable "tags" {
  type        = string
  description = "tag name"
  default     = "test"
}

variable "network_secuirty_group_name" {
  type        = string
  description = "NSG name"
  default     = "nsg-var-default"
}

variable "subnets" {
  type = map(any)
  default = {
    subnet_1 = {
      name             = "subnet_1"
      address_prefixes = ["10.13.1.0/24"]
    }
    subnet_2 = {
      name             = "subnet_2"
      address_prefixes = ["10.13.2.0/24"]
    }
    subnet_3 = {
      name             = "subnet_3"
      address_prefixes = ["10.13.3.0/24"]
    }
    bastion_subet = {
      name             = "AzureBastionSubnet"
      address_prefixes = ["10.13.250.0/24"]
    }
  }
}

variable "public_ip_name" {
  type        = string
  description = "public IP name"
  default     = "public_ip-var-default"
}

variable "bastionhost_name" {
  type        = string
  description = "Name of Bastion Host"
  default     = "bastion_host-var-default"
}