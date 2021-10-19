# This module is now located at <https://registry.terraform.io/modules/OmniTeqSource/label/null/latest>

# Opinionated Label Module

## Requirements

No requirements.

## Providers

No providers.

## Modules

No modules.

## Resources

No resources.

## Inputs

| Name                                                         | Description                    | Type     | Default | Required |
| ------------------------------------------------------------ | ------------------------------ | -------- | ------- | :------: |
| <a name="input_delimiter"></a> [delimiter](#input_delimiter) | ID Delimiter                   | `string` | `"-"`   |    no    |
| <a name="input_env"></a> [env](#input_env)                   | Secondary classification label | `string` | n/a     |   yes    |
| <a name="input_namespace"></a> [namespace](#input_namespace) | Primary classification label   | `string` | n/a     |   yes    |
| <a name="input_stage"></a> [stage](#input_stage)             | Tertiary classification label  | `string` | `""`    |    no    |
| <a name="input_tags"></a> [tags](#input_tags)                | n/a                            | `map`    | `{}`    |    no    |

## Outputs

| Name                                                           | Description                                       |
| -------------------------------------------------------------- | ------------------------------------------------- |
| <a name="output_delimiter"></a> [delimiter](#output_delimiter) | ID Delimiter                                      |
| <a name="output_id"></a> [id](#output_id)                      | Label ID(8-17 Characters) ex: `prjct-stage-stage` |
| <a name="output_tags"></a> [tags](#output_tags)                | Tag object                                        |
