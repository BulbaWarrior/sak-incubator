variable "namespace" {
  default     = "flux"
  type        = string
  description = "name of the namespace to install flux to"
}

variable "create_namespace" {
  default     = true
  type        = bool
  description = "whether or not the specified namespace should be created"
}
