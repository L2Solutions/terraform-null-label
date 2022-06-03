terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.2.0"
    }
  }

  experiments = [module_variable_optional_attrs]

  required_version = ">= 1.0.0"
}
