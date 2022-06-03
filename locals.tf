locals {
  tenant      = lower(var.tenant)
  environment = lower(var.environment)
  project     = lower(var.project)
  name        = lower(var.name)
  app         = lower(var.app)
  component   = lower(var.component)
  delimiter   = lower(var.delimiter)

  status = lower(var.status)
  ver    = lower(var.ver)

  var_labels = var.labels

  config_unique_id = defaults(var.config_unique_id, {
    enable        = true
    length        = 8
    enable_suffix = false
  })

  config_ver = defaults(var.config_ver, {
    enable_id = false
  })

  config_labels = defaults(var.config_labels, {
    enable_empty = false
    prefix       = "terraform"
  })
}
