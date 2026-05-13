# Terraform State Commands Cheat Sheet

## Inspection
\`\`\`bash
terraform state list                    # List all resources
terraform state show <resource>         # Show resource details
terraform show                          # Show entire state
terraform show -json | jq              # State as JSON
\`\`\`

## Modification
\`\`\`bash
terraform state mv <src> <dst>          # Rename resource
terraform state rm <resource>           # Remove from state
terraform state pull > backup.json      # Backup state
\`\`\`

## Import & Replace
\`\`\`bash
terraform import <resource> <id>        # Import existing
terraform apply -replace="<resource>"   # Force recreate
\`\`\`

## Troubleshooting
\`\`\`bash
terraform refresh                       # Sync state with reality
terraform force-unlock <lock_id>        # Force unlock
\`\`\`