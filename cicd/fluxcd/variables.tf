variable "namespace" {
  default     = "flux"
  type        = string
  description = "name of the namespace to install flux to"
}

variable "provision_namespace" {
  default     = true
  type        = bool
  description = "If true terraform will provision a namespace with specified name. Set to false when you want to deploy flux into an existing namespace"
}
