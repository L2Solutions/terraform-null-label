# Opinionated Label Module

MOVED TO OMNITEQ

## Requirements

No requirements.

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
| <a name="input_env"></a> [env](#input\_env) | Secondary classification label | `string` | n/a | yes |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | Primary classification label | `string` | n/a | yes |
| <a name="input_stage"></a> [stage](#input\_stage) | Tertiary classification label | `string` | `""` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | n/a | `map` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_delimiter"></a> [delimiter](#output\_delimiter) | ID Delimiter |
| <a name="output_id"></a> [id](#output\_id) | Label ID(8-17 Characters) ex: `prjct-stage-stage` |
| <a name="output_tags"></a> [tags](#output\_tags) | Tag object |
