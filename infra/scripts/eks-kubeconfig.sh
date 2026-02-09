#!/usr/bin/env bash
set -euo pipefail

CLUSTER_NAME="${1:?cluster name required}"
REGION="${2:-eu-central-1}"

aws eks update-kubeconfig --name "$CLUSTER_NAME" --region "$REGION"
kubectl get nodes
