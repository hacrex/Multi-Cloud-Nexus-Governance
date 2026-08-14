#!/usr/bin/env bash
set -euo pipefail

PROVIDER="${1:?Usage: $0 <aws|gcp|azure|oci>}"
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
DIRECTORY="$ROOT/terraform/$PROVIDER"

case "$PROVIDER" in
  aws|gcp|azure|oci) ;;
  *) echo "Unsupported provider root: $PROVIDER" >&2; exit 2 ;;
esac

command -v terraform >/dev/null 2>&1 || {
  echo "terraform is required." >&2
  exit 127
}

terraform -chdir="$DIRECTORY" fmt -check -recursive
terraform -chdir="$DIRECTORY" init -backend=false
terraform -chdir="$DIRECTORY" validate

printf 'Terraform validation passed for %s.\n' "$PROVIDER"
