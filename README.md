# Terraform Null Labels Module

## A strongly opinionated label module

While this module is opinionated about naming conventions, you can use as many or as few of those names and properties as you like.

The complete `id` output when all fields are present or enabled is in the format of:

```
[tenant]-[environment]-[project]-[name]-[app]-[semver]-[component]-[uniqid]
```

<!-- BEGIN_TF_DOCS -->

## Requirements

| Name                                                                     | Version  |
| ------------------------------------------------------------------------ | -------- |
| <a name="requirement_terraform"></a> [terraform](#requirement_terraform) | >= 1.0.0 |
| <a name="requirement_random"></a> [random](#requirement_random)          | 3.2.0    |

## Providers

| Name                                                      | Version |
| --------------------------------------------------------- | ------- |
| <a name="provider_random"></a> [random](#provider_random) | 3.2.0   |

## Modules

No modules.

## Resources

| Name                                                                                                            | Type     |
| --------------------------------------------------------------------------------------------------------------- | -------- |
| [random_string.unique_id](https://registry.terraform.io/providers/hashicorp/random/3.2.0/docs/resources/string) | resource |

## Inputs

| Name                                                                              | Description                   | Type                                                                                                                     | Default | Required |
| --------------------------------------------------------------------------------- | ----------------------------- | ------------------------------------------------------------------------------------------------------------------------ | ------- | :------: |
| <a name="input_app"></a> [app](#input_app)                                        | Application Name              | `string`                                                                                                                 | `""`    |    no    |
| <a name="input_component"></a> [component](#input_component)                      | Component Name                | `string`                                                                                                                 | `""`    |    no    |
| <a name="input_config_labels"></a> [config_labels](#input_config_labels)          | Configure Labels Output       | <pre>object({<br> enable_empty = optional(bool)<br> prefix = optional(string)<br> })</pre>                               | `{}`    |    no    |
| <a name="input_config_unique_id"></a> [config_unique_id](#input_config_unique_id) | Configure Unique Identifier   | <pre>object({<br> enable = optional(bool),<br> length = optional(number)<br> enable_suffix = optional(bool)<br> })</pre> | `{}`    |    no    |
| <a name="input_config_ver"></a> [config_ver](#input_config_ver)                   | Configure Semantic Versioning | <pre>object({<br> enable_id = optional(bool)<br> })</pre>                                                                | `{}`    |    no    |
| <a name="input_delimiter"></a> [delimiter](#input_delimiter)                      | ID Delimiter                  | `string`                                                                                                                 | `"-"`   |    no    |
| <a name="input_environment"></a> [environment](#input_environment)                | Environment Name              | `string`                                                                                                                 | `""`    |    no    |
| <a name="input_labels"></a> [labels](#input_labels)                               | n/a                           | `map(string)`                                                                                                            | `{}`    |    no    |
| <a name="input_name"></a> [name](#input_name)                                     | Name(app group or deployment) | `string`                                                                                                                 | `""`    |    no    |
| <a name="input_project"></a> [project](#input_project)                            | Project Name                  | `string`                                                                                                                 | `""`    |    no    |
| <a name="input_status"></a> [status](#input_status)                               | Resource/Object Status        | `string`                                                                                                                 | `""`    |    no    |
| <a name="input_tenant"></a> [tenant](#input_tenant)                               | Tenant Name                   | `string`                                                                                                                 | n/a     |   yes    |
| <a name="input_ver"></a> [ver](#input_ver)                                        | Version                       | `string`                                                                                                                 | `""`    |    no    |

## Outputs

| Name                                                                             | Description             |
| -------------------------------------------------------------------------------- | ----------------------- |
| <a name="output_app"></a> [app](#output_app)                                     | App Name                |
| <a name="output_component"></a> [component](#output_component)                   | Component Name          |
| <a name="output_delimiter"></a> [delimiter](#output_delimiter)                   | Delimiter               |
| <a name="output_environment"></a> [environment](#output_environment)             | Environment Name        |
| <a name="output_id"></a> [id](#output_id)                                        | Interpolated Identifier |
| <a name="output_labels"></a> [labels](#output_labels)                            | Labels                  |
| <a name="output_labels_prefixed"></a> [labels_prefixed](#output_labels_prefixed) | Labels with Prefix      |
| <a name="output_name"></a> [name](#output_name)                                  | Name                    |
| <a name="output_project"></a> [project](#output_project)                         | Project Name            |
| <a name="output_tags"></a> [tags](#output_tags)                                  | Tags                    |
| <a name="output_tags_prefixed"></a> [tags_prefixed](#output_tags_prefixed)       | Tags with Prefix        |
| <a name="output_tenant"></a> [tenant](#output_tenant)                            | Tenant Name             |
| <a name="output_ver"></a> [ver](#output_ver)                                     | Semantic Version        |

<!-- END_TF_DOCS -->
