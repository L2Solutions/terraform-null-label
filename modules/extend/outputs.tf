output "id" {
  description = "Interpolated Identifier"
  value       = module.labels.id
}

output "input_labels" {
  description = "Input Labels"
  value       = module.labels.input_labels
}

output "labels" {
  description = "Labels"
  value       = module.labels.labels
}

output "tags" {
  description = "Tags"
  value       = module.labels.labels
}

output "labels_prefixed" {
  description = "Labels with Prefix"
  value       = module.labels.labels_prefixed
}

output "tags_prefixed" {
  description = "Tags with Prefix"
  value       = module.labels.labels_prefixed
}

output "delimiter" {
  description = "Delimiter"
  value       = module.labels.delimiter
}

output "tenant" {
  description = "Tenant Name"
  value       = module.labels.tenant
}

output "environment" {
  description = "Environment Name"
  value       = module.labels.environment
}

output "project" {
  description = "Project Name"
  value       = module.labels.project
}

output "name" {
  description = "Name"
  value       = module.labels.name
}

output "app" {
  description = "App Name"
  value       = module.labels.app
}

output "component" {
  description = "Component Name"
  value       = module.labels.component
}

output "ver" {
  description = "Semantic Version"
  value       = module.labels.ver
}
