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

This repository does not include automated cloud plans or applies. Run them only after setting up an approved short-lived identity and a scoped remote backend.
