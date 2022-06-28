locals {
  config = var.config

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
