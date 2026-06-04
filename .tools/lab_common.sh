#!/usr/bin/env bash

# Gemeinsame Ablaufsteuerung fuer Lab-Skripte.
# Das konkrete Lab-Skript setzt LAB_NAME, definiert create_lab und ruft run_lab "$@" auf.

print_lab_usage() {
  local script_name
  script_name="$(basename "$0")"

  cat <<USAGE
Nutzung:
  bash ${script_name} [OPTIONEN] [ZIELVERZEICHNIS]

Optionen:
  --force       vorhandenes Lab zuruecksetzen
  --fresh       neue Kopie mit Zeitstempel erzeugen
  --name NAME   alternativen Lab-Namen verwenden
  -h, --help    diese Hilfe anzeigen

Ohne Zielverzeichnis wird das Lab unter ~/labs erzeugt.
USAGE
}

run_lab() {
  if [[ -z "${LAB_NAME:-}" ]]; then
    echo "Fehler: LAB_NAME ist nicht gesetzt." >&2
    return 1
  fi

  if ! declare -F create_lab >/dev/null; then
    echo "Fehler: create_lab ist nicht definiert." >&2
    return 1
  fi

  local force=0
  local fresh=0
  local lab_name="$LAB_NAME"
  local target_base="${HOME}/labs"
  local target_given=0

  while [[ $# -gt 0 ]]; do
    case "$1" in
      --force)
        force=1
        shift
        ;;
      --fresh)
        fresh=1
        shift
        ;;
      --name)
        if [[ $# -lt 2 || "$2" == --* ]]; then
          echo "Fehler: --name erwartet einen Namen." >&2
          return 1
        fi
        lab_name="$2"
        shift 2
        ;;
      -h|--help)
        print_lab_usage
        return 0
        ;;
      --*)
        echo "Fehler: unbekannte Option: $1" >&2
        return 1
        ;;
      *)
        if [[ "$target_given" -eq 1 ]]; then
          echo "Fehler: Es kann nur ein Zielverzeichnis angegeben werden." >&2
          return 1
        fi
        target_base="$1"
        target_given=1
        shift
        ;;
    esac
  done

  if [[ "$force" -eq 1 && "$fresh" -eq 1 ]]; then
    echo "Fehler: --force und --fresh koennen nicht kombiniert werden." >&2
    return 1
  fi

  if [[ -z "$lab_name" || "$lab_name" == "." || "$lab_name" == ".." || "$lab_name" == */* ]]; then
    echo "Fehler: ungueltiger Lab-Name: $lab_name" >&2
    return 1
  fi

  local final_name="$lab_name"
  if [[ "$fresh" -eq 1 ]]; then
    final_name="${lab_name}_$(date +%Y%m%d-%H%M%S)"
  fi

  mkdir -p -- "$target_base"

  LAB_DIR="${target_base%/}/${final_name}"
  export LAB_DIR

  if [[ -e "$LAB_DIR" ]]; then
    if [[ "$force" -eq 1 ]]; then
      rm -rf -- "$LAB_DIR"
    else
      echo "Fehler: Das Lab existiert bereits: $LAB_DIR" >&2
      echo "Nutze --force zum Zuruecksetzen oder --fresh fuer eine neue Kopie." >&2
      return 1
    fi
  fi

  mkdir -p -- "$LAB_DIR"
  create_lab

  echo "Lab wurde erstellt: $LAB_DIR"
}
