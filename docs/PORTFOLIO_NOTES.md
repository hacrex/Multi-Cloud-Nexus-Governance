# Portfolio Notes

## My focus

This repository is intentionally narrow: it shows independent network foundations for four providers and the operational reasons for separate state, provider-specific modules, CIDR planning, and plan review.

## Evidence I can show

- Variable-driven roots in `terraform/aws`, `terraform/gcp`, `terraform/azure`, and `terraform/oci`.
- Per-provider `terraform.tfvars.example` files.
- The README statement of what the project deliberately does not create.

## Known boundary

It is not a finished enterprise landing zone. I would add organisation hierarchy, remote state, IAM/RBAC, policy controls, logging, budgets, and connectivity only after gathering target-environment requirements.
