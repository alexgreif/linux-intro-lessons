# Lab-Skripte entwickeln

Dieses Verzeichnis enthält interne Hilfsmittel für Lab-Skripte.
Schüler müssen diese Dateien nicht direkt verwenden.

## Dateien

- `lab_common.sh`: gemeinsame Ablaufsteuerung für Lab-Skripte
- `lab_template.sh`: Vorlage für neue Lab-Skripte

Die konkreten Lab-Skripte liegen in den jeweiligen Übungsverzeichnissen.

## Neues Lab-Skript erstellen

1. Kopiere `lab_template.sh` in das passende Übungsverzeichnis.
2. Benenne die Kopie passend zum Lab, zum Beispiel `lab_beispiel.sh`.
3. Setze `LAB_NAME` auf den Namen des erzeugten Lab-Verzeichnisses.
4. Fülle `create_lab()` mit der konkreten Lab-Struktur.
5. Prüfe, ob der relative Pfad zu `.tools/lab_common.sh` stimmt.

Grundmuster:

```bash
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
```

Wichtig:

- `LAB_NAME` legt den Standardnamen des erzeugten Lab-Verzeichnisses fest.
- `create_lab()` erzeugt alle lab-spezifischen Inhalte.
- `$LAB_DIR` ist das Zielverzeichnis des Labs.
- Das Lab-Skript implementiert keine eigene Logik für `--force`, `--fresh`, `--name` oder Zielverzeichnisse.
- Optionen werden in der Dokumentation vor dem optionalen Zielverzeichnis gezeigt.
- Erzeugte Lab-Verzeichnisse werden nicht ins Repository aufgenommen.

## Payload-Archive

Bei großen Labs oder Labs mit Binärdateien darf ein Lab-Skript ein komprimiertes Archiv im Übungsordner entpacken.
Technische Hilfsdateien für eine konkrete Übung liegen bei Bedarf im versteckten Unterverzeichnis `.assets/` der jeweiligen Übung.
Dieses Verzeichnis wird nur angelegt, wenn es tatsächlich benötigt wird.

Payload-Archive heißen nach dem Muster `lab_*_payload.tar.gz`.

Payload-Archive sind Eingaben für Lab-Skripte und keine Schüleraufgaben.
Sie werden in den Übungs-READMEs nicht als Arbeitsdateien aufgeführt.

## Kurzer Test

Ein neues Lab-Skript sollte mindestens so getestet werden:

```bash
bash pfad/zum/lab-skript.sh /tmp/lab-test
bash pfad/zum/lab-skript.sh /tmp/lab-test
bash pfad/zum/lab-skript.sh --force /tmp/lab-test
bash pfad/zum/lab-skript.sh --fresh /tmp/lab-test
```

Erwartung:

- Der erste Befehl erzeugt das Lab.
- Der zweite Befehl bricht ab, weil das Lab bereits existiert.
- Der dritte Befehl setzt das Lab zurück.
- Der vierte Befehl erzeugt eine zusätzliche Kopie mit Zeitstempel.
