locals {
  tenant      = lower(var.tenant)
  environment = lower(var.environment)
  project     = lower(var.project)
  name        = lower(var.name)
  app         = lower(var.app)
  component   = lower(var.component)
  delimiter   = lower(var.delimiter)
  ver         = lower(var.ver)

  status = lower(var.status)

  input_labels = var.labels

  config_unique_id = var.config_unique_id
  config_ver       = var.config_ver
  config_labels    = var.config_labels
}
