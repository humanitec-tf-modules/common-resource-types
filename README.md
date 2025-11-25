# Common Resource Types Module

A reusable Terraform module for setting commonly used resource-types for the Humanitec Platform Orchestrator.

## Overview

This module provides reusable confgiuration for installing standard resource types that you may see frequently in tutorials, demos, and reference implementations.

Currently, this supports the following resource types which can each be opted-in to by setting the appropriate `enable-xyz` flag (see the inputs section below):

- `score-workload`
- `k8s-namespace`
- `k8s-service-account`
- `env`

This set of types will be expanded over time as we add new modules to [github.com/humanitec-tf-modules](https://github.com/humanitec-tf-modules).

## Usage

In your IaC you use to configure your Platform Orchestrator, you can specify the module and enable types as you need them.

```terraform
module "common_resource_types" {
    source = "github.com/humanitec-tf-modules/common-resource-types"

    enable-score-workload = true
    enable-env = true
    // etc.
}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_platform-orchestrator"></a> [platform-orchestrator](#requirement\_platform-orchestrator) | 2.10.2 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_platform-orchestrator"></a> [platform-orchestrator](#provider\_platform-orchestrator) | 2.10.2 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [platform-orchestrator_resource_type.k8s-namespace](https://registry.terraform.io/providers/humanitec/platform-orchestrator/2.10.2/docs/resources/resource_type) | resource |
| [platform-orchestrator_resource_type.k8s-service-account](https://registry.terraform.io/providers/humanitec/platform-orchestrator/2.10.2/docs/resources/resource_type) | resource |
| [platform-orchestrator_resource_type.score-workload](https://registry.terraform.io/providers/humanitec/platform-orchestrator/2.10.2/docs/resources/resource_type) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_enable-k8s-namespace"></a> [enable-k8s-namespace](#input\_enable-k8s-namespace) | Whether to install the k8s-namespace type | `bool` | `false` | no |
| <a name="input_enable-k8s-service-account"></a> [enable-k8s-service-account](#input\_enable-k8s-service-account) | Whether to install the k8s-service-account type | `bool` | `false` | no |
| <a name="input_enable-score-workload"></a> [enable-score-workload](#input\_enable-score-workload) | Whether to install the score-workload type | `bool` | `false` | no |
| <a name="input_resource-type-prefix"></a> [resource-type-prefix](#input\_resource-type-prefix) | A prefix to add to the generated resource types | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_k8s-namespace-type"></a> [k8s-namespace-type](#output\_k8s-namespace-type) | The id of the k8s-namespace resource type if enabled |
| <a name="output_k8s-service-account-type"></a> [k8s-service-account-type](#output\_k8s-service-account-type) | The id of the k8s-service-account resource type if enabled |
| <a name="output_score-workload-type"></a> [score-workload-type](#output\_score-workload-type) | The id of the score-workload resource type if enabled |
<!-- END_TF_DOCS -->