variable "kubectl_namespace" {}

variable "helm_namespace" {}

variable "helm_repository" {}

variable "chart_version" {}

variable "dependencies" {
  type = list(string)
}

variable "enable_azure_policy" {
  type    = string
  default = "0"
}

variable "values" {
  default = ""
  type    = string
}

variable "opa_limits_cpu" {
  default = "1000m"
  type    = string
}

variable "opa_limits_memory" {
  default = "512Mi"
  type    = string
}

variable "opa_requests_cpu" {
  default = "100m"
  type    = string
}

variable "opa_requests_memory" {
  default = "256Mi"
  type    = string
}

variable "image_hub" {
  default     = "openpolicyagent"
  type        = string
  description = "The name of the hub from which images will be pulled."
}

variable "image_pull_secrets" {
  type        = list(string)
  default     = []
  description = "The names of the ImagePullSecrets that the ServiceAccount will have access to."
}
variable "opa_audit_limits_cpu" {
  default = "1000m"
  type    = "string"
}

variable "opa_audit_limits_memory" {
  default = "512Mi"
  type    = "string"
}

variable "opa_audit_requests_cpu" {
  default = "100m"
  type    = "string"
}

variable "opa_audit_requests_memory" {
  default = "256Mi"
  type    = "string"
}
