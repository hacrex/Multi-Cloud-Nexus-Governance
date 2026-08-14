# Project Status

## Portfolio Scope

A plan-first, non-production Terraform reference for independently governed AWS VPC, GCP VPC, Azure VNet, and OCI VCN foundations. It demonstrates provider boundaries rather than pretending all four clouds are operationally identical.

## Intended Deployment Path

Select one provider root under `terraform/`, copy its `terraform.tfvars.example`, run `init -backend=false`, `validate`, and `plan` in a disposable environment. Configure encrypted remote state and CI approval before real applies.

## Safety and Validation

This repository contains **non-production reference configuration** unless its deployment guide explicitly states otherwise. Review every Terraform plan and Kubernetes manifest in an isolated account, project, subscription, compartment, or cluster before use. Do not commit credentials, cloud access keys, API tokens, or live state files.

## What to Discuss in an Interview

Explain the architecture, the operational trade-offs, how you would validate a change, how you would roll it back, and the parts that require organisation-specific configuration.
