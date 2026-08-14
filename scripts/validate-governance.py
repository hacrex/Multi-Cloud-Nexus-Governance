#!/usr/bin/env python3
"""Repository-level checks that run without cloud credentials."""
from pathlib import Path
import re
import sys

ROOT = Path(__file__).resolve().parents[1]
TERRAFORM = ROOT / "terraform"
PROVIDERS = ("aws", "gcp", "azure", "oci")
errors = []

for provider in PROVIDERS:
    directory = TERRAFORM / provider
    if not (directory / "main.tf").exists():
        errors.append(f"{provider}: missing main.tf")
    if not (directory / "versions.tf").exists():
        errors.append(f"{provider}: missing versions.tf")
    if not (directory / "terraform.tfvars.example").exists():
        errors.append(f"{provider}: missing terraform.tfvars.example")

for path in TERRAFORM.rglob("*.tf"):
    content = path.read_text()
    if re.search(r'(access_key|secret_key|client_secret)\s*=', content, flags=re.IGNORECASE):
        errors.append(f"{path.relative_to(ROOT)}: contains a possible static credential assignment")
    if '0.0.0.0/0' in content:
        errors.append(f"{path.relative_to(ROOT)}: contains an unrestricted CIDR")

aws_vars = (TERRAFORM / "aws" / "variables.tf").read_text()
if 'variable "common_tags"' not in aws_vars:
    errors.append("aws: common_tags variable is missing")

if errors:
    print("Governance validation failed:", file=sys.stderr)
    print("\n".join(f"- {error}" for error in errors), file=sys.stderr)
    sys.exit(1)

print("Governance validation passed for AWS, GCP, Azure, and OCI provider roots.")
