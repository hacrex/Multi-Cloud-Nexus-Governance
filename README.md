# Multi-Cloud Nexus Governance

A Terraform reference for laying out a small network foundation in AWS, GCP, Azure, and OCI. Each provider has its own root under `terraform/` so state, credentials, and change reviews can stay separate.

## Check the repository

```bash
python3 scripts/validate-governance.py
./scripts/validate-provider.sh aws
```

The first command checks provider-root structure, obvious static credential assignments, and unrestricted CIDRs. The second command formats and validates one provider root without configuring a remote backend.

## Use a sandbox first

Copy the relevant `terraform.tfvars.example` file, fill in a sandbox account or project, and keep the resulting variables file out of Git. A plan or apply needs an approved provider identity and the right remote-state setup.

## Design notes

`docs/STATE_AND_IDENTITY.md` explains the intended state boundaries and short-lived CI identity flow. `docs/GOVERNANCE_CONVENTIONS.md` lists the common ownership, environment, cost, classification, and change-management fields. The repository keeps provider-specific resources visible instead of hiding them behind a large abstraction layer.
