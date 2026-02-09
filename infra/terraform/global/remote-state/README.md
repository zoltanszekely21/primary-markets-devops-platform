# Remote State Bootstrap (AWS)

Terraform backend for this project uses:
- S3 bucket for state
- DynamoDB table for state locking

Bootstrap once (manual or separate terraform):
- Create S3 bucket (versioning + encryption)
- Create DynamoDB table `tfstate-locks` (PK: LockID)

Then set env backends in `infra/terraform/envs/*/backend.tf`.
