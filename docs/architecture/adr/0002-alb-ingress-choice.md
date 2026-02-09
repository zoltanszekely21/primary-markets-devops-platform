# ADR 0002: Use AWS ALB Ingress Controller

## Decision
Use ALB ingress for north-south traffic into EKS.

## Rationale
- Native AWS integration, WAF/TLS options, operational familiarity
- Fits typical enterprise EKS patterns

## Consequences
- Requires controller installation and IAM permissions (IRSA recommended)
