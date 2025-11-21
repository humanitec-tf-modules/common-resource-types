mock_provider "platform-orchestrator" {
}

run "empty" {
  command = plan

  assert {
    condition     = lookup(lookup(platform-orchestrator_resource_type.score-workload, "this", {}), "id", null) == null
    error_message = "score-workload should not be set"
  }

  assert {
    condition     = lookup(lookup(platform-orchestrator_resource_type.k8s-namespace, "this", {}), "id", null) == null
    error_message = "k8s-namespace should not be set"
  }

  assert {
    condition     = lookup(lookup(platform-orchestrator_resource_type.k8s-service-account, "this", {}), "id", null) == null
    error_message = "k8s-service-account should not be set"
  }
}

run "full" {
  command = plan

  variables {
    enable-score-workload      = true
    enable-k8s-namespace       = true
    enable-k8s-service-account = true
  }

  assert {
    condition     = lookup(lookup(platform-orchestrator_resource_type.score-workload, "this", {}), "id", null) == "score-workload"
    error_message = "score-workload should be set"
  }

  assert {
    condition     = lookup(lookup(platform-orchestrator_resource_type.k8s-namespace, "this", {}), "id", null) == "k8s-namespace"
    error_message = "k8s-namespace should be set"
  }

  assert {
    condition     = lookup(lookup(platform-orchestrator_resource_type.k8s-service-account, "this", {}), "id", null) == "k8s-service-account"
    error_message = "k8s-service-account should be set"
  }

}
