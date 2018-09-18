#!/usr/bin/env bash
set -e
set -o pipefail

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." &>/dev/null && pwd)"

gcloud builds submit --config="${DIR}/cloudbuild.yaml" "${DIR}"
