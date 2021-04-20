variable "namespace" {
  description = "Primary classification label"
  type        = string

  validation {
    condition     = length(var.namespace) > 1 && length(var.namespace) < 6
    error_message = "Variable `namespace` must be two to five(2-5) characters in length."
  }

  validation {
    condition     = can(regex("^[a-zA-Z0-9]+$", var.namespace))
    error_message = "Variable `namespace` may contain only alpha-numeric chraracters."
  }
}

variable "env" {
  description = "Secondary classification label"
  type        = string

  validation {
    condition     = contains(["prod", "stage", "dev", "test"], var.env)
    error_message = "Variable `env` must be one of \"prod\", \"stage\", \"dev\", \"test\"."
  }
}

variable "stage" {
  description = "Tertiary classification label"
  type        = string
  default     = ""

  validation {
    condition     = length(var.stage) == 0 || contains(["prod", "stage", "dev", "test"], var.stage)
    error_message = "Variable `stage` must be one of \"prod\", \"stage\", \"dev\", \"test\" if set."
  }
}

variable "delimiter" {
  description = "ID Delimiter"
  type        = string
  default     = "-"

  validation {
    condition     = contains(["-", "_"], var.delimiter)
    error_message = "Variable `delimiter` must be either \"-\" or \"_\"."
  }
}

variable "tags" {
  type    = map
  default = {}
}
