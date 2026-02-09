# Audit Logging

Goal: immutable-ish audit trail for key state transitions.

## Planned approach
- Write audit events to S3 (partitioned by date/env/service)
- Optional: S3 Object Lock for WORM-like controls
- Include correlation IDs to link API requests → worker → audit record
