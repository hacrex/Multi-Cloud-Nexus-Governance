# Sandbox Plan Review Record

Use this page after reviewing a real plan in one sandbox provider. Keep account IDs, subscription IDs, project IDs, OCIDs, and plan files out of the repository.

## Review details

| Item | Record |
|---|---|
| Date | |
| Provider and root | |
| Environment | |
| Reviewer | |
| Identity type used | |

## Commands

```bash
python3 scripts/validate-governance.py
./scripts/validate-provider.sh <aws|gcp|azure|oci>
terraform plan
```

## Plan summary

| Check | Result |
|---|---|
| Formatting and validation | |
| Required metadata present | |
| Public CIDR review | |
| Region/location review | |
| State backend confirmed | |
| Planned additions/changes/destroys | |

## Decision

Record one of: **approved for sandbox apply**, **needs change**, or **not applied**. Add a short reason in plain language.

## Follow-up

| Item | Owner | Status |
|---|---|---|
| | | |
