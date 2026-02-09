# Threat Model (high level)

## Key assets
- Issuance data (business critical)
- Audit logs (integrity important)
- Credentials/secrets (Datadog, DB, etc.)

## Primary threats
- Credential leakage (git, CI logs)
- Over-permissive IAM
- Insecure ingress/TLS misconfig
- Data exfiltration from logs
- Supply chain vulnerabilities (images, deps)

## Mitigations (baseline)
- Gitleaks + CI secret scanning
- IRSA + least privilege IAM
- TLS everywhere, restricted ingress
- Structured logs with PII avoidance
- Trivy image scanning + IaC scanning
