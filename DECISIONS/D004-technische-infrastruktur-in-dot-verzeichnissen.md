# D004: Technische Infrastruktur liegt in Dot-Verzeichnissen

Datum: 2026-06-04

## Entscheidung

Versionierte technische Infrastruktur liegt in Dot-Verzeichnissen wie `.tools/` und `.assets/`.

## Begründung

Diese Dateien müssen im Repository bleiben, sollen Schüler bei normalem `ls` oder `tree` aber nicht ablenken.

## Konsequenzen

`.tools/` enthält gemeinsame technische Infrastruktur.
`.assets/` wird pro Übung nur angelegt, wenn technische Hilfsdateien benötigt werden.
