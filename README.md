## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | 3.46.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.46.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_resource_group.rg1](https://registry.terraform.io/providers/hashicorp/azurerm/3.46.0/docs/resources/resource_group) | resource |
| [azurerm_subnet.subnet1](https://registry.terraform.io/providers/hashicorp/azurerm/3.46.0/docs/resources/subnet) | resource |
| [azurerm_virtual_network.vn1](https://registry.terraform.io/providers/hashicorp/azurerm/3.46.0/docs/resources/virtual_network) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_resource_group_location"></a> [resource\_group\_location](#input\_resource\_group\_location) | RG Location | `string` | `"west us"` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | RG name | `string` | `"rg-var-default"` | no |
| <a name="input_subnets"></a> [subnets](#input\_subnets) | n/a | `map(any)` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | tag name | `string` | `"test"` | no |
| <a name="input_virtual_network_name"></a> [virtual\_network\_name](#input\_virtual\_network\_name) | VN name | `string` | `"vNet-var-default"` | no |
| <a name="input_vnet_address_space"></a> [vnet\_address\_space](#input\_vnet\_address\_space) | the address space of the VNet | `list(any)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_out_resource_group_location"></a> [out\_resource\_group\_location](#output\_out\_resource\_group\_location) | Resource Group Location |
| <a name="output_out_resource_group_name"></a> [out\_resource\_group\_name](#output\_out\_resource\_group\_name) | Resource Group Name |
| <a name="output_out_subnet_name"></a> [out\_subnet\_name](#output\_out\_subnet\_name) | Subnet Name |
| <a name="output_out_virtual_network_name"></a> [out\_virtual\_network\_name](#output\_out\_virtual\_network\_name) | VM Name |
