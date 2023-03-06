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

variable "subnets" {
  type = map(any)
}

