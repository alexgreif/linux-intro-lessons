#!/usr/bin/env bash
set -euo pipefail

LAB_NAME="Beispiel-Lab"

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
source "${SCRIPT_DIR}/../.tools/lab_common.sh"

create_lab() {
  mkdir -p -- "$LAB_DIR/beispiel"
  printf '%s\n' "Beispielinhalt" > "$LAB_DIR/beispiel/datei.txt"
}

run_lab "$@"
