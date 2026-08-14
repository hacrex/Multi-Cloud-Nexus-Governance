# Governance Conventions

## Required metadata

Use these fields in every provider's supported tagging or labeling mechanism.

| Logical field | Purpose | Example |
|---|---|---|
| `owner` | Accountable team or group. | `platform-engineering` |
| `environment` | Lifecycle boundary. | `sandbox`, `dev`, `prod` |
| `costCenter` | Billing and FinOps allocation. | `engineering-labs` |
| `dataClassification` | Data-handling baseline. | `public`, `internal`, `confidential` |
| `managedBy` | Change-system attribution. | `terraform` |
| `project` | Product or platform context. | `multi-cloud-nexus` |

AWS uses `common_tags` in the current root. Azure supports tags on resource groups and networks; OCI supports freeform tags; Google Cloud resources have different label support by resource type. Preserve the logical keys even if their provider syntax varies.

## Initial policy checks

The repository workflow runs checks for provider root structure, static credential assignments, and unrestricted CIDRs. Add policy-as-code only after agreeing the actual organisation requirements. Good first policies are: required metadata, approved regions, no public ingress by default, and no unmanaged static credentials.
