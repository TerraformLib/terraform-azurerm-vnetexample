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

variable "subnet_name" {
  type        = string
  description = "Subnet name"
  default     = "subnet-var-default"
}