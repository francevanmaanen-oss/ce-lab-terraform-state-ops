# Lab M4.04 - State Management Operations

## Operations Practiced

### 1. State Inspection
- `terraform state list` - List all resources
- `terraform state show` - View resource details

### 2. Resource Import
- Imported existing S3 bucket into state
- Verified configuration matches

### 3. State Drift Handling
- Detected manual changes outside Terraform
- Used `terraform refresh` and `apply` to reconcile

### 4. Resource Movement
- Renamed resource in state without recreation
- Used `terraform state mv`

### 5. Resource Removal
- Removed resource from state without destroying
- Used `terraform state rm`

## Key Learnings
- State is source of truth for Terraform
- Manual changes cause drift
- Import brings existing resources under management
- State operations require care and backups

## Safety Tips
- Always backup state before manual operations
- Use remote state with versioning
- Test state operations in non-production first
- Never manually edit state files