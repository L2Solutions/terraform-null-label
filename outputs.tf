output "id" {
  description = "Interpolated Identifier"
  value       = local.id
}

locals {
  output_labels = {
    for k, v in local.labels
    : k => v if v != "" || local.config_labels.enable_empty
  }
}

output "labels" {
  description = "Labels"
  value       = local.output_labels
}

output "tags" {
  description = "Tags"
  value       = local.output_labels
}

locals {
  output_labels_prefixed = {
    for k, v in local.output_labels
    : join(local.delimiter, compact([local.config_labels.prefix, k])) => v
  }
}

output "labels_prefixed" {
  description = "Labels with Prefix"
  value       = local.output_labels_prefixed
}

output "tags_prefixed" {
  description = "Tags with Prefix"
  value       = local.output_labels_prefixed
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

output "ver" {
  description = "Semantic Version"
  value       = local.ver
}
