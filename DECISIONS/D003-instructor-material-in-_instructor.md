# D003: Instructor-Material liegt in `_instructor/`

Datum: 2026-06-04

## Entscheidung

Besprechungen, Zielzustände, Notizen und Backups liegen unter `_instructor/`.
Dieses Repository ist das interne Authoring-Repo; `_instructor/` darf deshalb Teil des Repositories sein.

## Begründung

Ein zentraler Ort ist verständlicher als verstreute Namensmuster.
Instructor-Material bleibt dadurch auffindbar, ohne mit Schülerdateien vermischt zu werden.

## Konsequenzen

`_instructor/` darf nicht in Schülerdokumenten verlinkt werden.
Neue Instructor-Dateien werden dort abgelegt.
Eine spätere Schülerdistribution muss `_instructor/` ausschließen.
