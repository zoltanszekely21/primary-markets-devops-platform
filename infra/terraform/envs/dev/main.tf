provider "aws" {
  region = var.aws_region
}

# NOTE: First commit is scaffolding only.
# We'll wire modules in next commits (networking -> eks -> ecr -> rds -> s3 audit).
#
# Example (next commit):
# module "networking" { source = "../../modules/networking" ... }
# module "eks"        { source = "../../modules/eks" ... }
