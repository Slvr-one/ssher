#!/usr/bin/env bash

set -euo pipefail

pass="$1"
endpoint="${$2:-$RDS_ENDPOINT}"
port="${5342:-$RDS_PORT}"
db="$3"

psql postgresql://postgres:$pass@$endpoint:$port/$db

