variable "namespace" {
  description = "Primary classification label"
  type        = "string"

  validation {
    condition     = length(var.namespace) > 1 && length(var.namespace) < 6
    error_message = "`namespace` must be two to five(2-5) characters in length."
  }

  validation {
    condition     = can(regex("^[a-zA-Z0-9]+$", var.namespace))
    error_message = "`namespace` may contain only alpha-numeric chraracters."
  }
}

variable "env" {
  description = "Secondary classification label"
  type        = "string"

  validation {
    condition     = contains(["prd", "stg", "dev", "tst"], var.env)
    error_message = "`env` must be one of \"prd\", \"stg\", \"dev\", \"tst\""
  }
}

variable "stage" {
  description = "Tertiary classification label"
  type        = "string"
  default     = ""

  validation {
    condition     = length(var.stage) == 0 || contains(["prd", "stg", "dev", "tst"], var.stage)
    error_message = "`stage` must be one of \"prd\", \"stg\", \"dev\", \"tst\" if set"
  }
}

variable "delimiter" {
  description = "ID Delimiter"
  type        = "string"
  default     = "-"

  validation {
    condition     = contains(["-", "_"], var.delimiter)
    error_message = "`delimiter` must be either \"-\" or \"_\""
  }
}

variable "tags" {
  type    = "object"
  default = {}
}
