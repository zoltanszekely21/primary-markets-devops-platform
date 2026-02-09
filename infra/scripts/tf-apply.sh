#!/usr/bin/env bash
set -euo pipefail

ENV="${1:-dev}"
cd "$(dirname "$0")/../terraform/envs/${ENV}"

terraform init
terraform apply -auto-approve tfplan
