# Sandbox Plan Procedure

1. Choose **one** provider root under `terraform/`.
2. Copy its `terraform.tfvars.example` to a non-committed `terraform.tfvars` file.
3. Use a sandbox account, project, subscription, or compartment.
4. Run the no-credential structural checks:

   ```bash
   python3 scripts/validate-governance.py
   ./scripts/validate-provider.sh aws
   ```

5. Authenticate with an approved short-lived provider identity and run `terraform plan` only after configuring the appropriate remote backend.
6. Capture a sanitized plan summary and delete any local plan files containing sensitive values.

The public repository workflow does not run plans or applies. That is intentional: validation should be repeatable without granting a public CI workflow cloud permissions.
