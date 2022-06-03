# Terraform Null Labels Module

## A strongly opinionated label module

While this module is opinionated about naming conventions, you can use as many or as few of those names and properties as you like.

The complete `id` output when all fields are present or enabled is in the format of:

```
[tenant]-[environment]-[project]-[name]-[app]-[semver]-[component]-[uniqid]
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | 3.2.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_random"></a> [random](#provider\_random) | 3.2.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [random_string.unique_id](https://registry.terraform.io/providers/hashicorp/random/3.2.0/docs/resources/string) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_app"></a> [app](#input\_app) | Application Name | `string` | `""` | no |
| <a name="input_component"></a> [component](#input\_component) | Component Name | `string` | `""` | no |
| <a name="input_config_semver"></a> [config\_semver](#input\_config\_semver) | Configure Semantic Versioning | <pre>object({<br>    enable_id = optional(bool)<br>  })</pre> | `{}` | no |
| <a name="input_config_tags"></a> [config\_tags](#input\_config\_tags) | Configure Tags Output | <pre>object({<br>    enable_empty = optional(bool)<br>    prefix       = optional(string)<br>  })</pre> | `{}` | no |
| <a name="input_config_unique_id"></a> [config\_unique\_id](#input\_config\_unique\_id) | Configure Unique Identifier | <pre>object({<br>    enable        = optional(bool),<br>    length        = optional(number)<br>    enable_suffix = optional(bool)<br>  })</pre> | `{}` | no |
| <a name="input_delimiter"></a> [delimiter](#input\_delimiter) | ID Delimiter | `string` | `"-"` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment Name | `string` | `""` | no |
| <a name="input_name"></a> [name](#input\_name) | Name(app group or deployment) | `string` | `""` | no |
| <a name="input_project"></a> [project](#input\_project) | Project Name | `string` | `""` | no |
| <a name="input_semver"></a> [semver](#input\_semver) | Version | `string` | `""` | no |
| <a name="input_status"></a> [status](#input\_status) | Resource/Object Status | `string` | `""` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | n/a | `map(any)` | `{}` | no |
| <a name="input_tenant"></a> [tenant](#input\_tenant) | Tenant Name | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_app"></a> [app](#output\_app) | App Name |
| <a name="output_component"></a> [component](#output\_component) | Component Name |
| <a name="output_delimiter"></a> [delimiter](#output\_delimiter) | Delimiter |
| <a name="output_environment"></a> [environment](#output\_environment) | Environment Name |
| <a name="output_id"></a> [id](#output\_id) | Interpolated Identifier |
| <a name="output_name"></a> [name](#output\_name) | Name |
| <a name="output_project"></a> [project](#output\_project) | Project Name |
| <a name="output_semver"></a> [semver](#output\_semver) | Semantic Version |
| <a name="output_tags"></a> [tags](#output\_tags) | Tags |
| <a name="output_tenant"></a> [tenant](#output\_tenant) | Tenant Name |
<!-- END_TF_DOCS -->
