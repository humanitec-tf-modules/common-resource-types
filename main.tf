
resource "platform-orchestrator_resource_type" "score-workload" {
  for_each    = var.enable-score-workload ? toset(["this"]) : toset([])
  id          = "${var.resource-type-prefix}score-workload"
  description = "A Score workload."
  output_schema = jsonencode({
    type = "object"
    properties = {
      endpoint = {
        type        = "string"
        description = "The dns name or address that the Score workloads service ports can be reached at if defined."
      }
    }
  })
  is_developer_accessible = true
}

resource "platform-orchestrator_resource_type" "k8s-namespace" {
  for_each    = var.enable-k8s-namespace ? toset(["this"]) : toset([])
  id          = "${var.resource-type-prefix}k8s-namespace"
  description = "A Kubernetes namespace."
  output_schema = jsonencode({
    type     = "object"
    required = ["name"]
    properties = {
      name = {
        type        = "string"
        description = "The name of the Kubernetes namespace."
      }
    }
  })
  is_developer_accessible = true
}

resource "platform-orchestrator_resource_type" "k8s-service-account" {
  for_each    = var.enable-k8s-service-account ? toset(["this"]) : toset([])
  id          = "${var.resource-type-prefix}k8s-service-account"
  description = "A Kubernetes service account."
  output_schema = jsonencode({
    type     = "object"
    required = ["name", "namespace"]
    properties = {
      name = {
        type        = "string"
        description = "The name of the Kubernetes service account."
      }
      namespace = {
        type        = "string"
        description = "The namespace of the Kubernetes service account."
      }
    }
  })
  is_developer_accessible = true
}

resource "platform-orchestrator_resource_type" "env" {
  for_each    = var.enable-env ? toset(["this"]) : toset([])
  id          = "${var.resource-type-prefix}env"
  description = "A source of environment aware variables."
  output_schema = jsonencode({
    type     = "object"
    required = ["values"]
    properties = {
      values = {
        type        = "object"
        description = "The map of environment variable keys to values."
        additionalProperties = {
          type = "string"
        }
      }
    }
  })
  is_developer_accessible = true
}
