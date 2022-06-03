locals {
  unique_id_hash = sha256(random_string.unique_id.id)

  unique_id        = substr(local.unique_id_hash, 0, local.config_unique_id.length)
  unique_id_suffix = local.config_unique_id.enable ? local.unique_id : ""

  semver_id = local.config_semver.enable_id ? replace(local.semver, ".", local.delimiter) : ""

  id_parts = compact([
    local.tenant,
    local.environment,
    local.project,
    local.name,
    local.app,
    local.semver_id,
    local.component,
    local.unique_id_suffix
  ])

  id = lower(join(local.delimiter, local.id_parts))

  tags = merge(
    local.var_tags,
    {
      tenant      = local.tenant
      environment = local.environment
      project     = local.project
      name        = local.name
      app         = local.app
      component   = local.component

      version = local.semver
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
