#!/usr/bin/env bash
set -euo pipefail

LAB_NAME="Uebung-2-Lab"

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
source "${SCRIPT_DIR}/../.tools/lab_common.sh"

write_lab_file() {
  local path="$1"
  shift

  mkdir -p -- "$(dirname -- "$path")"
  printf '%s\n' "$@" > "$path"
}

create_lab() {
  write_lab_file "$LAB_DIR/config_v1.txt" \
    "server_name=linux-lab" \
    "port=8080" \
    "debug=false" \
    "log_level=info" \
    "max_clients=50" \
    "backup_enabled=true"

  write_lab_file "$LAB_DIR/config_v2.txt" \
    "server_name=linux-lab" \
    "port=8081" \
    "debug=false" \
    "log_level=warning" \
    "max_clients=100" \
    "backup_enabled=true"

  local find_lab="$LAB_DIR/Find-Exec-Lab"

  mkdir -p -- \
    "$find_lab/eingang/team-a" \
    "$find_lab/eingang/team-b" \
    "$find_lab/eingang/alt" \
    "$find_lab/daten/alpha" \
    "$find_lab/daten/beta" \
    "$find_lab/ziel/texte" \
    "$find_lab/ziel/logs" \
    "$find_lab/ziel/archiv" \
    "$find_lab/papierkorb"

  write_lab_file "$find_lab/eingang/team-a/bericht.txt" \
    "Bericht Team A" \
    "Status: offen"
  write_lab_file "$find_lab/eingang/team-a/notizen.txt" \
    "Notizen Team A" \
    "Review vorbereiten"
  write_lab_file "$find_lab/eingang/team-a/debug.log" \
    "INFO start" \
    "WARN cache-empty"

  write_lab_file "$find_lab/eingang/team-b/plan.txt" \
    "Plan Team B" \
    "Naechster Schritt: testen"
  write_lab_file "$find_lab/eingang/team-b/server.log" \
    "INFO server started" \
    "INFO request ok"
  : > "$find_lab/eingang/team-b/leer.tmp"

  write_lab_file "$find_lab/eingang/alt/archiv.log" \
    "ARCHIVE old-run" \
    "ARCHIVE closed"
  : > "$find_lab/eingang/alt/leer-alt.tmp"
  write_lab_file "$find_lab/eingang/alt/todo.txt" \
    "Todo" \
    "Alte Eintraege pruefen"

  write_lab_file "$find_lab/daten/alpha/messwerte.txt" \
    "alpha=12" \
    "beta=18"
  write_lab_file "$find_lab/daten/beta/test.log" \
    "TEST passed" \
    "TEST finished"
}

run_lab "$@"
