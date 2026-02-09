# Module: eks

Creates an EKS cluster and node groups (multi-AZ).

## Inputs (planned)
- project, environment
- vpc_id, subnet_ids
- node group sizing
- IRSA roles for controllers (ALB, external-secrets later)

## Outputs (planned)
- cluster_name
- cluster_endpoint
- oidc_provider_arn
