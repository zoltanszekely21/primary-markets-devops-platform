# ADR 0001: Terraform module and environment layout

## Decision
Use a `modules/` + `envs/<env>/` structure with remote state and environment promotion (dev/uat/prod).

## Rationale
- Clear separation of reusable modules and env-specific composition
- Enables safer promotion and controlled blast radius
- Supports layered state strategy (network/eks/data) if needed later

## Consequences
- Slightly more boilerplate, but clearer ownership and reviewability
