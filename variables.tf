variable "resource-type-prefix" {
  type    = string
  default = ""
}

variable "enable-score-workload" {
  type    = bool
  default = false
}

variable "enable-k8s-namespace" {
  type    = bool
  default = false
}

variable "enable-k8s-service-account" {
  type    = bool
  default = false
}
