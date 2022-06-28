module "labels" {
  source = "../../"

  tenant      = local.config.tenant
  environment = local.config.environment
  project     = local.config.project
  name        = local.config.name
  app         = local.config.app
  component   = local.config.component
  ver         = local.config.ver

  labels = local.config.input_labels

  config_unique_id = local.config_unique_id
}
