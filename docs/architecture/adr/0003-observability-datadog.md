# ADR 0003: Observability with Datadog (metrics + logs + APM)

## Decision
Use Datadog for Kubernetes monitoring, application logs, tracing/APM, dashboards, monitors, and SLOs.

## Rationale
- Job description alignment (Datadog)
- Single pane for infra + app observability
- Strong support for golden signals and SLO burn alerts

## Consequences
- Requires Datadog API key handling and careful data tagging
- Additional cost in real environments
