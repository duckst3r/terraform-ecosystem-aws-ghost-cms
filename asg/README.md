# terraform-module-aws-asg (sub-module for Ghost CMS ecosystem)

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 0.14 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 3.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_null"></a> [null](#provider\_null) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [null_resource.hello_ghost](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ecs_cluster_name"></a> [ecs\_cluster\_name](#input\_ecs\_cluster\_name) | The ECS cluster which will place tasks and manage containers. | `any` | n/a | yes |
| <a name="input_enable_ha"></a> [enable\_ha](#input\_enable\_ha) | Choose whether to activate high availability or not. | `bool` | `false` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | The environment name for deployment. | `string` | `"dev"` | no |
| <a name="input_image_id"></a> [image\_id](#input\_image\_id) | The AMI image to use for ECS optimized instances. | `any` | n/a | yes |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | The instance type to use for deployment. | `string` | `"t2.small"` | no |
| <a name="input_key_name"></a> [key\_name](#input\_key\_name) | The keypair to use for SSH connection. | `any` | n/a | yes |
| <a name="input_prefix"></a> [prefix](#input\_prefix) | A prefix for each resource of the networking module. | `string` | n/a | yes |
| <a name="input_public_subnet_ids"></a> [public\_subnet\_ids](#input\_public\_subnet\_ids) | The public subnets created by networking module. | `list(string)` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | n/a | `map(string)` | `null` | no |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | The VPC in which the autoscaling group will be placed. | `any` | n/a | yes |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->