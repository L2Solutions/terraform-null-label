output "id" {
  description = "Interpolated Identifier"
  value       = local.id
}

locals {
  output_tags = {
    for k, v in local.tags
    : join(local.delimiter, compact([local.config_tags.prefix, k]))
    => v if v != "" || local.config_tags.enable_empty
  }
}

output "tags" {
  description = "Tags"
  value       = local.output_tags
}

output "delimiter" {
  description = "Delimiter"
  value       = local.delimiter
}

output "tenant" {
  description = "Tenant Name"
  value       = local.tenant
}

output "environment" {
  description = "Environment Name"
  value       = local.environment
}

output "project" {
  description = "Project Name"
  value       = local.project
}

output "name" {
  description = "Name"
  value       = local.name
}

output "app" {
  description = "App Name"
  value       = local.app
}

output "component" {
  description = "Component Name"
  value       = local.component
}

output "semver" {
  description = "Semantic Version"
  value       = local.semver
}
