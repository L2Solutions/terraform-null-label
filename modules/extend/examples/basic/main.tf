module "base" {
  # Base Labels Module
  source = "../../../../"

  tenant      = "tf"
  environment = "test"
}

module "extend_project" {
  # Extend Module
  source = "../../"

  config = merge(
    module.base, # Or `module.base.labels
    {
      project = "mods"
    }
  )
}

module "extend_unique_suffix" {
  # Extend Module
  source = "../../"

  config = module.extend_project

  config_unique_id = {
    enable_suffix = true
  }
}

output "base" {
  value = module.base
}

output "extend_project" {
  value = module.extend_project
}

output "extend_unique_suffix" {
  value = module.extend_unique_suffix
}
