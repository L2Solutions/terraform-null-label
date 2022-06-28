variable "delimiter" {
  description = "ID Delimiter"
  type        = string
  default     = "-"

  validation {
    condition     = contains(["-", "_"], var.delimiter)
    error_message = "Variable `delimiter` must be either \"-\" or \"_\"."
  }
}

variable "tenant" {
  description = "Tenant Name"
  type        = string

  validation {
    condition     = length(var.tenant) == 0 || (length(var.tenant) >= 2 && length(var.tenant) <= 5)
    error_message = "Variable `tenant` must be two to five(2-5) characters in length."
  }

  validation {
    condition     = can(regex("^[a-zA-Z0-9]+$", var.tenant))
    error_message = "Variable `tenant` may contain only alpha-numeric characters."
  }
}

variable "environment" {
  description = "Environment Name"
  type        = string
  default     = ""

  validation {
    condition     = contains(["", "prod", "stage", "dev", "test"], var.environment)
    error_message = "Variable `environment` must be one of \"prod\", \"stage\", \"dev\", \"test\"."
  }
}

variable "project" {
  description = "Project Name"
  type        = string
  default     = ""

  validation {
    condition     = length(var.project) == 0 || (length(var.project) >= 2 && length(var.project) <= 5)
    error_message = "Variable `project` must be two to five(2-5) characters in length if set."
  }

  validation {
    condition     = can(regex("^[a-zA-Z0-9]*$", var.project))
    error_message = "Variable `project` may contain only alpha-numeric characters."
  }
}

variable "name" {
  description = "Name(app group or deployment)"
  type        = string
  default     = ""

  validation {
    condition     = length(var.name) == 0 || (length(var.name) >= 2 && length(var.name) <= 12)
    error_message = "Variable `name` must be 2-10 characters in length if set."
  }

  validation {
    condition     = length(var.name) == 0 || can(regex("^[a-zA-Z0-9_-]*$", var.name))
    error_message = "Variable `name` may contain only alpha-numeric chraracters."
  }
}

variable "app" {
  description = "Application Name"
  type        = string
  default     = ""

  validation {
    condition     = length(var.app) == 0 || (length(var.app) >= 2 && length(var.app) <= 12)
    error_message = "Variable `app` must be 2-10 characters in length if set."
  }

  validation {
    condition     = length(var.app) == 0 || can(regex("^[a-zA-Z0-9_-]*$", var.app))
    error_message = "Variable `app` may contain only alpha-numeric chraracters."
  }
}

variable "component" {
  description = "Component Name"
  type        = string
  default     = ""

  validation {
    condition     = length(var.component) == 0 || (length(var.component) >= 2 && length(var.component) <= 12)
    error_message = "Variable `component` must be 2-10 characters in length if set."
  }

  validation {
    condition     = length(var.component) == 0 || can(regex("^[a-zA-Z0-9_-]*$", var.component))
    error_message = "Variable `component` may contain only alpha-numeric characters."
  }
}

variable "ver" {
  description = "Version"
  type        = string
  default     = ""

  validation {
    condition     = var.ver == "" || can(regex("^((([0-9]+)\\.([0-9]+)\\.([0-9]+)(?:-([0-9a-zA-Z-]+(?:\\.[0-9a-zA-Z-]+)*))?)(?:\\+([0-9a-zA-Z-]+(?:\\.[0-9a-zA-Z-]+)*))?)$", var.ver))
    error_message = "Variable `ver` must be in ver format."
  }
}

variable "labels" {
  type    = map(string)
  default = {}
}

variable "status" {
  description = "Resource/Object Status"
  type        = string
  default     = "active"

  validation {
    condition     = contains(["", "active", "inactive", "deprecated", "delete"], var.status)
    error_message = "Variable `status` must be one of the conditional values."
  }
}

variable "config_unique_id" {
  description = "Configure Unique Identifier"
  default     = {}

  type = object({
    enable        = optional(bool)
    length        = optional(number)
    enable_suffix = optional(bool)
  })
}

variable "config_ver" {
  description = "Configure Semantic Versioning"
  default     = {}

  type = object({
    enable_id = optional(bool)
  })
}

variable "config_labels" {
  description = "Configure Labels Output"
  default     = {}

  type = object({
    enable_empty = optional(bool)
    prefix       = optional(string)
  })
}
