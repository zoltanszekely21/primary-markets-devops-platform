# Architecture Overview

This platform simulates a Primary Markets workflow system deployed on AWS EKS.

## Components (planned)
- EKS (multi-AZ)
- ALB Ingress
- RDS Postgres (Multi-AZ)
- S3 audit logs (optional Object Lock)
- Datadog: metrics, logs, APM, monitors, dashboards, SLOs

## Diagrams
Add diagrams to `docs/architecture/diagrams/` and reference them from the README.
