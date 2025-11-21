variable "resource-type-prefix" {
  type        = string
  default     = ""
  description = "A prefix to add to the generated resource types"
}

variable "enable-score-workload" {
  type        = bool
  default     = false
  description = "Whether to install the score-workload type"
}

variable "enable-k8s-namespace" {
  type        = bool
  default     = false
  description = "Whether to install the k8s-namespace type"
}

variable "enable-k8s-service-account" {
  type        = bool
  default     = false
  description = "Whether to install the k8s-service-account type"
}
