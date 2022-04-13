locals {
  namespace = lower(var.namespace)
  name      = lower(var.name)
  env       = lower(var.env)
  delimiter = lower(var.delimiter)
  tags      = var.tags
}

locals {
  id = lower(join(local.delimiter, compact([local.namespace, local.name, local.env])))
}

locals {
  out_id        = local.id
  out_delimiter = local.delimiter

  out_tags = merge(
    local.tags,
    {
      Namespace = local.namespace
      Name      = local.name
      Env       = local.env
      Terraform = true
      id        = local.id
    }
  )
}
