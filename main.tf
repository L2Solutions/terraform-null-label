locals {
  unique_id_hash = sha256(random_string.unique_id.id)

  unique_id        = local.config_unique_id.enable ? substr(local.unique_id_hash, 0, local.config_unique_id.length) : ""
  unique_id_suffix = local.config_unique_id.enable_suffix ? local.unique_id : ""

  ver_id = local.config_ver.enable_id ? replace(local.ver, ".", local.delimiter) : ""

  id_parts = compact([
    local.tenant,
    local.environment,
    local.project,
    local.name,
    local.app,
    local.ver_id,
    local.component,
    local.unique_id_suffix
  ])

  id = lower(join(local.delimiter, local.id_parts))

  labels = merge(
    local.var_labels,
    {
      tenant      = local.tenant
      environment = local.environment
      project     = local.project
      name        = local.name
      app         = local.app
      component   = local.component

      version = local.ver
      status  = local.status

      instance = local.unique_id
      id       = local.id

      terraform = true
    }
  )
}

resource "random_string" "unique_id" {
  keepers = {
    tenant      = local.tenant
    environment = local.environment
    project     = local.project
    name        = local.name
    app         = local.app
    component   = local.component
  }

  length = 128
}
