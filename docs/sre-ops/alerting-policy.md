# Alerting Policy (draft)

## Principles
- Alerts must be actionable and linked to a runbook
- Prefer symptom-based alerts (latency, 5xx) over noisy signals
- Use severity levels:
  - SEV1: outage / data integrity risk
  - SEV2: major degradation
  - SEV3: minor degradation / early warning

## Required fields per monitor
- What is impacted?
- How to confirm
- Immediate mitigation
- Escalation path
