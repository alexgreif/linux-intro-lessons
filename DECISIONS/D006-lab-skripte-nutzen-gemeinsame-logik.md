# D006: Lab-Skripte nutzen gemeinsame Logik

Datum: 2026-06-04

## Entscheidung

Lab-Skripte verwenden `.tools/lab_common.sh` für gemeinsame Ablaufsteuerung.

## Begründung

Die Bedienung von Lab-Skripten soll einheitlich sein.
Doppelte Logik für `--force`, `--fresh`, `--name` und Zielverzeichnisse soll vermieden werden.

## Konsequenzen

Konkrete Lab-Skripte beschreiben nur die lab-spezifischen Inhalte.
Details zur Erstellung neuer Lab-Skripte stehen in `.tools/README.md`.
