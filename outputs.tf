output "score-workload-type" {
  value = lookup(lookup(platform-orchestrator_resource_type.score-workload, "this", {}), "id", null)
}

output "k8s-namespace-type" {
  value = lookup(lookup(platform-orchestrator_resource_type.k8s-namespace, "this", {}), "id", null)
}

output "k8s-service-account-type" {
  value = lookup(lookup(platform-orchestrator_resource_type.k8s-service-account, "this", {}), "id", null)
}
