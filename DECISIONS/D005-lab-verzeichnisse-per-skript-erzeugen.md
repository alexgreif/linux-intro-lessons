# D005: Lab-Verzeichnisse werden per Skript erzeugt

Datum: 2026-06-04

## Entscheidung

Lab-Verzeichnisse werden durch Lab-Skripte erzeugt und nicht als fertige Schüler-Arbeitsverzeichnisse versioniert.

## Begründung

Labs sollen reproduzierbar erzeugt und zurückgesetzt werden können.
Schüler sollen nicht versehentlich versionierte Lab-Dateien im Repository bearbeiten.

## Konsequenzen

Lab-Skripte liegen sichtbar im jeweiligen Übungsordner.
Erzeugte Labs liegen standardmäßig unter `~/labs` und werden nicht ins Repository aufgenommen.
