variable "config" {
  description = "Object containing label configuration, typically an instance of the base module"
  type = object({
    tenant      = optional(string)
    environment = optional(string)
    project     = optional(string)
    name        = optional(string)
    app         = optional(string)
    component   = optional(string)
    ver         = optional(string)

    delimiter = optional(string)

    labels = optional(map(string))
    status = optional(string)

    input_labels = optional(map(string))

    config_ver = optional(object({
      enable_id = optional(bool)
    }))

    config_labels = optional(object({
      enable_empty = optional(bool)
      prefix       = optional(string)
    }))
  })
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
