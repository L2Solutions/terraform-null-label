locals {
  namespace = lower(var.namespace)
  env       = lower(var.env)
  stage     = lower(var.stage)
  delimiter = lower(var.delimiter)
  tags      = var.tags
}

locals {
  id = lower(join(compact([local.namespace, local.env, local.stage]), local.delimiter))
}

locals {
  out_id        = local.id
  out_delimiter = local.delimiter

  out_tags = merge(
    local.tags,
    {
      Namespace   = local.namespace
      Environment = local.env
      Stage       = local.stage
      Terraform   = true
      id          = local.id
    }
  )
}
