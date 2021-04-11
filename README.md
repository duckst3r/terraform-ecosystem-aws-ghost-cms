# terraform-ecosystem-aws-ghost-cms

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 0.14 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 3.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 3.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_networking"></a> [networking](#module\_networking) | ./networking |  |

## Resources

| Name | Type |
|------|------|
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_partition.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/partition) | data source |
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_enable_ha"></a> [enable\_ha](#input\_enable\_ha) | Choose whether to activate high availability or not. | `bool` | `false` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | The environment name for deployment. | `string` | `"production"` | no |
| <a name="input_project"></a> [project](#input\_project) | The project name. | `string` | `"ghost"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | n/a | `map(string)` | `null` | no |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Versioning
This repository follows [Semantic Versioning 2.0.0](https://semver.org/)
## Git Hooks

This repository uses [pre-commit](https://pre-commit.com/) hooks.
### Usage

```
pre-commit install
pre-commit install -t commit-msg
```
