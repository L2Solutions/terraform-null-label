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

## Providers

No providers.

## Modules

No modules.

## Resources

No resources.

## Inputs

| Name                                                         | Description                    | Type       | Default | Required |
| ------------------------------------------------------------ | ------------------------------ | ---------- | ------- | :------: |
| <a name="input_delimiter"></a> [delimiter](#input_delimiter) | ID Delimiter                   | `string`   | `"-"`   |    no    |
| <a name="input_env"></a> [env](#input_env)                   | Tertiary classification label  | `string`   | n/a     |   yes    |
| <a name="input_name"></a> [name](#input_name)                | Secondary classification label | `string`   | `""`    |    no    |
| <a name="input_namespace"></a> [namespace](#input_namespace) | Primary classification label   | `string`   | n/a     |   yes    |
| <a name="input_tags"></a> [tags](#input_tags)                | n/a                            | `map(any)` | `{}`    |    no    |

## Outputs

| Name                                                           | Description                                       |
| -------------------------------------------------------------- | ------------------------------------------------- |
| <a name="output_delimiter"></a> [delimiter](#output_delimiter) | ID Delimiter                                      |
| <a name="output_id"></a> [id](#output_id)                      | Label ID(8-17 Characters) ex: `prjct-stage-stage` |
| <a name="output_tags"></a> [tags](#output_tags)                | Tag object                                        |

<!-- END_TF_DOCS -->
