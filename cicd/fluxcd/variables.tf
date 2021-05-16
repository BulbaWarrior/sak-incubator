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

variable "git_url" {
  default     = "git@github.com:BulbaWarrior/flux-get-started"
  type        = string
  description = "git url to take manifests from"
}

variable "git_branch" {
  default     = "main"
  type        = string
  description = "git url to take manifests from"
}
