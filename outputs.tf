output "score-workload-type" {
  value       = lookup(lookup(platform-orchestrator_resource_type.score-workload, "this", {}), "id", null)
  description = "The id of the score-workload resource type if enabled"
}

output "k8s-namespace-type" {
  value       = lookup(lookup(platform-orchestrator_resource_type.k8s-namespace, "this", {}), "id", null)
  description = "The id of the k8s-namespace resource type if enabled"
}

output "k8s-service-account-type" {
  value       = lookup(lookup(platform-orchestrator_resource_type.k8s-service-account, "this", {}), "id", null)
  description = "The id of the k8s-service-account resource type if enabled"
}

output "env-type" {
  value       = lookup(lookup(platform-orchestrator_resource_type.env, "this", {}), "id", null)
  description = "The id of the env resource type if enabled"
}
