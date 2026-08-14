# State and Identity Design

The provider roots in this repository are intentionally independent. A production implementation should preserve that boundary in Terraform state and identity design.

## State scope

| Scope | Recommended state boundary | Why |
|---|---|---|
| Provider | Separate AWS, GCP, Azure, and OCI state. | A provider outage or credential issue should not block unrelated cloud changes. |
| Environment | Separate sandbox, development, and production state. | Limits blast radius and supports independent approvals. |
| Domain | Split networking, identity, shared services, and workload state as the platform grows. | Avoids one oversized plan and reduces permissions required by each pipeline. |

Use encrypted remote state and locking where the selected backend supports it. Do not commit state files, plan files containing sensitive values, cloud credentials, or provider-generated configuration.

## CI identity flow

```mermaid
sequenceDiagram
  participant Engineer
  participant Git as Git pull request
  participant CI as CI runner
  participant Cloud as Provider identity
  participant State as Remote state

  Engineer->>Git: Submit reviewed change
  Git->>CI: Start validation and approved plan
  CI->>Cloud: Exchange OIDC assertion for short-lived role
  CI->>State: Read only the scoped environment state
  CI->>Cloud: Create plan or apply after approval
  CI->>State: Write updated encrypted state
```

A local administrator identity is useful only for a documented break-glass procedure. Routine changes should use short-lived CI identities with provider- and environment-specific roles.
