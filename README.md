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
| <a name="input_config_labels"></a> [config\_labels](#input\_config\_labels) | Configure Labels Output | <pre>object({<br>    enable_empty = optional(bool)<br>    prefix       = optional(string)<br>  })</pre> | `{}` | no |
| <a name="input_config_unique_id"></a> [config\_unique\_id](#input\_config\_unique\_id) | Configure Unique Identifier | <pre>object({<br>    enable        = optional(bool)<br>    length        = optional(number)<br>    enable_suffix = optional(bool)<br>  })</pre> | `{}` | no |
| <a name="input_config_ver"></a> [config\_ver](#input\_config\_ver) | Configure Semantic Versioning | <pre>object({<br>    enable_id = optional(bool)<br>  })</pre> | `{}` | no |
| <a name="input_delimiter"></a> [delimiter](#input\_delimiter) | ID Delimiter | `string` | `"-"` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment Name | `string` | `""` | no |
| <a name="input_labels"></a> [labels](#input\_labels) | n/a | `map(string)` | `{}` | no |
| <a name="input_name"></a> [name](#input\_name) | Name(app group or deployment) | `string` | `""` | no |
| <a name="input_project"></a> [project](#input\_project) | Project Name | `string` | `""` | no |
| <a name="input_status"></a> [status](#input\_status) | Resource/Object Status | `string` | `"active"` | no |
| <a name="input_tenant"></a> [tenant](#input\_tenant) | Tenant Name | `string` | n/a | yes |
| <a name="input_ver"></a> [ver](#input\_ver) | Version | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_app"></a> [app](#output\_app) | App Name |
| <a name="output_component"></a> [component](#output\_component) | Component Name |
| <a name="output_delimiter"></a> [delimiter](#output\_delimiter) | Delimiter |
| <a name="output_environment"></a> [environment](#output\_environment) | Environment Name |
| <a name="output_id"></a> [id](#output\_id) | Interpolated Identifier |
| <a name="output_input_labels"></a> [input\_labels](#output\_input\_labels) | Input Labels |
| <a name="output_labels"></a> [labels](#output\_labels) | Labels |
| <a name="output_labels_prefixed"></a> [labels\_prefixed](#output\_labels\_prefixed) | Labels with Prefix |
| <a name="output_name"></a> [name](#output\_name) | Name |
| <a name="output_project"></a> [project](#output\_project) | Project Name |
| <a name="output_tags"></a> [tags](#output\_tags) | Tags |
| <a name="output_tags_prefixed"></a> [tags\_prefixed](#output\_tags\_prefixed) | Tags with Prefix |
| <a name="output_tenant"></a> [tenant](#output\_tenant) | Tenant Name |
| <a name="output_ver"></a> [ver](#output\_ver) | Semantic Version |
<!-- END_TF_DOCS -->
