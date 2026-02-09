
### `docs/sre-ops/runbooks/rb-002-api-5xx.md`
```markdown
# RB-002: API 5xx Error Rate High

## Trigger
Datadog monitor: `API 5xx rate high` (see `platform/observability/datadog/monitors/api-5xx-rate.json`)

## Impact
Functional failures (issuance creation/updates fail).

## Triage
1) Identify failing endpoints / error classes
2) Check last deploy
3) Check dependency health (DB, ingress)

## Kubernetes checks
```bash
kubectl -n primary-markets get pods
kubectl -n primary-markets logs deploy/api-service --tail=300
kubectl -n primary-markets describe ingress
