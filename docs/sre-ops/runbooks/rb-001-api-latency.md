# RB-001: API p95 Latency High

## Trigger
Datadog monitor: `API p95 latency high` (see `platform/observability/datadog/monitors/api-latency-p95.json`)

## Impact
User-facing degradation, potential timeouts and failed workflows.

## Triage (5 minutes)
1) Confirm scope: single service or cluster-wide?
2) Check recent deploys (last 30–60 min).
3) Check saturation: CPU/memory throttling, pod restarts.

## Datadog checks
- Service latency (p95/p99)
- Request rate + error rate
- Container CPU throttling
- Pod restarts

## Kubernetes checks
```bash
kubectl -n primary-markets get pods
kubectl -n primary-markets top pods
kubectl -n primary-markets describe deploy api-service
kubectl -n primary-markets logs deploy/api-service --tail=200
