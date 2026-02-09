# Primary Markets DevOps Platform (AWS/EKS)

A production-shaped reference platform simulating **Primary Markets** workflows (issuance lifecycle) on **AWS**, designed to demonstrate **DevOps ownership**: IaC, CI/CD, security gates, observability (Datadog), and operational readiness (runbooks, postmortems).

## Goals
- Deploy a business-critical, resilient platform on AWS using **EKS**
- Implement enterprise-grade **CI/CD** (GitLab CI + Jenkinsfile for CloudBees-style setups)
- Operationalize with **Datadog**: metrics + logs + APM + monitors + dashboards + SLOs
- Provide L2-ready artifacts: runbooks, alert policy, incident postmortems

## Architecture (placeholders)
Diagrams live in `docs/architecture/diagrams/`:
- `c4-context.png`
- `c4-container.png`
- `deployment.png`

## What’s in this repo
- `infra/terraform`: AWS infrastructure as code (modules + envs dev/uat/prod)
- `platform/observability/datadog`: Datadog Helm values, monitors, dashboards, SLO skeletons
- `docs/sre-ops`: runbooks, alerting policy, on-call model, postmortems
- `pipelines`: GitLab CI templates + Jenkinsfile skeleton

## Environments
- `dev`: fast iteration, smaller sizing
- `uat`: pre-prod validation, manual approvals
- `prod`: gated applies/deploys, stricter controls

## Quick Start (local skeleton)
> Infrastructure + services will be implemented iteratively. This repo starts with scaffolding.

### Terraform plan/apply (dev)
```bash
cd infra/terraform/envs/dev
terraform init
terraform plan
terraform apply
