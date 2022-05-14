# Opinionated Label Module

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |

## Providers

No providers.

## Modules

No modules.

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_delimiter"></a> [delimiter](#input\_delimiter) | ID Delimiter | `string` | `"-"` | no |
| <a name="input_env"></a> [env](#input\_env) | Tertiary classification label | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Secondary classification label | `string` | `""` | no |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | Primary classification label | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | n/a | `map(any)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_delimiter"></a> [delimiter](#output\_delimiter) | ID Delimiter |
| <a name="output_id"></a> [id](#output\_id) | Label ID(8-17 Characters) ex: `prjct-stage-stage` |
| <a name="output_tags"></a> [tags](#output\_tags) | Tag object |
<!-- END_TF_DOCS -->
