terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = ">=3.2.0"
    }
  }

  required_version = ">= 1.3.0, < 2.0.0"
}
