locals {
  tenant      = lower(var.tenant)
  environment = lower(var.environment)
  project     = lower(var.project)
  name        = lower(var.name)
  app         = lower(var.app)
  component   = lower(var.component)
  delimiter   = lower(var.delimiter)

  status = lower(var.status)
  semver = lower(var.semver)

  var_tags = var.tags

  config_unique_id = defaults(var.config_unique_id, {
    enable        = true
    length        = 8
    enable_suffix = false
  })

  config_semver = defaults(var.config_semver, {
    enable_id = false
  })

  config_tags = defaults(var.config_tags, {
    enable_empty = false
  })
}
