# IAM Least Privilege

- Prefer IRSA for workloads needing AWS APIs.
- Separate roles per service.
- Deny-by-default: only allow required actions.
- Audit changes via Terraform + code review.
