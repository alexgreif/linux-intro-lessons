#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "${SCRIPT_DIR}/../.." && pwd)"

PACKAGE_NAME="${1:-linux-server-uebungen}"
DIST_DIR="${REPO_ROOT}/dist"
ARCHIVE="${DIST_DIR}/${PACKAGE_NAME}.zip"
STAGING_DIR="$(mktemp -d)"

cleanup() {
  rm -rf -- "$STAGING_DIR"
}
trap cleanup EXIT

if ! command -v zip >/dev/null 2>&1; then
  echo "Fehler: zip ist nicht installiert." >&2
  exit 1
fi

mkdir -p -- "$DIST_DIR"
mkdir -p -- "${STAGING_DIR}/${PACKAGE_NAME}"

cp -a -- "${REPO_ROOT}/README.md" "${STAGING_DIR}/${PACKAGE_NAME}/"
cp -a -- "${REPO_ROOT}/.tools" "${STAGING_DIR}/${PACKAGE_NAME}/"

shopt -s nullglob
for exercise_dir in "${REPO_ROOT}"/[0-9][0-9]_*; do
  [[ -d "$exercise_dir" ]] || continue
  cp -a -- "$exercise_dir" "${STAGING_DIR}/${PACKAGE_NAME}/"
done

rm -f -- "$ARCHIVE"
(
  cd "$STAGING_DIR"
  zip -qr "$ARCHIVE" "$PACKAGE_NAME"
)

echo "Schueler-Paket erstellt: $ARCHIVE"
