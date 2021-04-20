output "id" {
  description = "Label ID(8-17 Characters) ex: `prjct-stage-stage"
  value       = local.out_id
}

output "out_tags" {
  description = "Tag object"
  value       = local.out_tags
}

output "delimiter" {
  description = "ID Delimiter"
  value       = local.out_delimiter
}
