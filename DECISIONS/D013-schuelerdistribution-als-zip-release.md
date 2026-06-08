# D013: Schülerdistribution als ZIP-Release

Datum: 2026-06-08

## Entscheidung

Die Schülerdistribution wird als ZIP-Datei über GitHub Releases bereitgestellt.
Der stabile Download-Link verwendet `releases/latest/download/linux-server-uebungen.zip`.

Das ZIP-Paket wird aus dem internen Authoring-Repo erzeugt.
Es enthält die Root-`README.md`, alle nummerierten Übungsverzeichnisse und `.tools/`.
Interne Dateien und Verzeichnisse wie `_instructor/`, `.agent-guides/`, `AGENTS.md`, `ARCHITECTURE.md`, `DECISIONS/` und `.git/` werden nicht aufgenommen.

## Begründung

Schüler sollen die Materialien sowohl auf Windows als auch in der Ubuntu-VM einfach öffnen können.
ZIP ist auf Windows vertraut und kann in der VM mit `unzip` entpackt werden.

GitHub Releases ermöglichen einen stabilen Link auf die jeweils aktuelle Version.
Dadurch muss die Schüleranleitung bei neuen Versionen nicht angepasst werden.

## Konsequenzen

Das interne Export-Skript liegt unter `_instructor/tools/create_student_package.sh`.
Es erzeugt `dist/linux-server-uebungen.zip`.

Die Veröffentlichung erfolgt über den GitHub-Actions-Workflow `Publish student package`.
Der Workflow erzeugt das ZIP-Paket und veröffentlicht es als neues GitHub Release.

Übung 0 bereitet neben `tree` auch `unzip` vor.
Vor Aufgabe 3 in Übung 1 laden Schüler die Kursunterlagen in der VM herunter und entpacken sie dort.
