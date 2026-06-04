#!/usr/bin/env bash
set -euo pipefail

LAB_NAME="Uebung-1-Lab"

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
source "${SCRIPT_DIR}/../.tools/lab_common.sh"

create_lab() {
  local payload="${SCRIPT_DIR}/.assets/lab_uebung_1_payload.tar.gz"

  if [[ ! -f "$payload" ]]; then
    echo "Fehler: Payload nicht gefunden: $payload" >&2
    return 1
  fi

  tar -xzf "$payload" -C "$LAB_DIR"
}

run_lab "$@"
