module "simple" {
  source = "../../"

  tenant      = "tnt"
  environment = "dev"
  project     = "prj"

  config_labels = {
    enable_empty = true
    prefix       = "pre"
  }
}

module "complex" {
  source = "../../"

  tenant      = "tnt2"
  environment = "dev"
  project     = "prj"
  name        = "hello-world"
  app         = "api"
  ver         = "0.0.1"
  component   = "bucket"
  status      = "inactive"

  config_unique_id = {
    enable_suffix = true
  }
}

output "simple" {
  value = module.simple
}

output "complex" {
  value = module.complex
}
