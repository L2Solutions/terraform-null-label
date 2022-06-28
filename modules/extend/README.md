# Terraform Null Label Extend Module

Extend an instance of the labels module. Pass in an existing instance or its `labels` output.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_labels"></a> [labels](#module\_labels) | ../../ | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_config"></a> [config](#input\_config) | Object containing label configuration, typically an instance of the base module | <pre>object({<br>    tenant      = optional(string)<br>    environment = optional(string)<br>    project     = optional(string)<br>    name        = optional(string)<br>    app         = optional(string)<br>    component   = optional(string)<br>    ver         = optional(string)<br><br>    delimiter = optional(string)<br><br>    labels = optional(map(string))<br>    status = optional(string)<br><br>    input_labels = optional(map(string))<br><br>    config_ver = optional(object({<br>      enable_id = optional(bool)<br>    }))<br><br>    config_labels = optional(object({<br>      enable_empty = optional(bool)<br>      prefix       = optional(string)<br>    }))<br>  })</pre> | n/a | yes |
| <a name="input_config_labels"></a> [config\_labels](#input\_config\_labels) | Configure Labels Output | <pre>object({<br>    enable_empty = optional(bool)<br>    prefix       = optional(string)<br>  })</pre> | `{}` | no |
| <a name="input_config_unique_id"></a> [config\_unique\_id](#input\_config\_unique\_id) | Configure Unique Identifier | <pre>object({<br>    enable        = optional(bool)<br>    length        = optional(number)<br>    enable_suffix = optional(bool)<br>  })</pre> | `{}` | no |
| <a name="input_config_ver"></a> [config\_ver](#input\_config\_ver) | Configure Semantic Versioning | <pre>object({<br>    enable_id = optional(bool)<br>  })</pre> | `{}` | no |

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
