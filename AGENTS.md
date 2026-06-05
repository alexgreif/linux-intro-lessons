# Hinweise für AI-Agenten

## Zweck

Diese Datei ist der Einstiegspunkt für Codex und andere AI-Agenten, die dieses Repository bearbeiten.
Sie soll schnell lesbar bleiben und auf Detaildokumente verweisen.

Die Dokumentation ist lebendig:

- Wenn Nutzerfeedback eine wiederverwendbare Präferenz klärt, prüfe, ob `AGENTS.md`, `ARCHITECTURE.md`, `DECISIONS/`, `.agent-guides/`, `_instructor/Kursplanung.md` oder `_instructor/Ideen_und_Todos.md` aktualisiert werden sollten.
- Neue operative Arbeitsregeln gehören in `AGENTS.md`.
- Grundsatzentscheidungen mit Begründung gehören in `DECISIONS/`.
- Detaillierte didaktische Anleitungen gehören in `.agent-guides/`.
- Wenn eine bestehende Regel überholt ist, aktualisiere sie statt sie zu ignorieren.

## Projektziel

Dieses Repository enthält Unterrichtsmaterialien für Linux-Server-Übungen.
Die Schüler befinden sich in einer technischen Ausbildung und sind zu Beginn Linux- und Bash-Anfänger.

Übungen sollen praktisch, reproduzierbar, klar formuliert und didaktisch bewusst aufgebaut sein.

## Wichtige Leitdokumente

- `ARCHITECTURE.md`: Repo-Struktur und Zuständigkeit der Dateitypen
- `DECISIONS/README.md`: begründete Entscheidungen und Konsequenzen
- `_instructor/Kursplanung.md`: geplanter thematischer Verlauf des Kurses
- `_instructor/Ideen_und_Todos.md`: offene Ideen und noch nicht umgesetzte Punkte
- `.agent-guides/uebungen-erstellen.md`: Workflow zum Erstellen neuer Übungen
- `.agent-guides/kurzreferenz.md`: detaillierte Anleitung für `Kurzreferenz.md`
- `.agent-guides/aufgabenblaetter.md`: detaillierte Anleitung für Aufgabenblätter
- `.tools/README.md`: technische Anleitung für Lab-Skripte

Nutze bestehende Übungen gezielt als Referenz, wenn Stil, Umfang oder Struktur unklar sind.
Ein Vollscan aller Übungen ist nicht nötig; orientiere dich an den Dateien, die zur aktuellen Änderung passen.

## Zentrale Arbeitsregeln

- Schreibe Schülerdokumente auf Deutsch und sprich Schüler direkt mit `du` an.
- Trenne Schülerperspektive, technische Infrastruktur und Instructor-Material konsequent.
- Die Root-`README.md` ist schülerorientiert und soll keine Agenten-, Instructor- oder interne Architektur-Dokumentation erklären.
- Verlinke keine Dateien aus `_instructor/` in Schülerdokumenten.
- Erkläre technische Hilfsdateien wie `.tools/` oder `.assets/` nicht unnötig in Aufgaben.
- Beachte die Namenskonventionen aus `DECISIONS/D012-namenskonventionen.md`.
- Verwende `Verzeichnis` als Standardbegriff; `Ordner` höchstens einmal erklärend.
- Formatiere Befehle, Optionen, Pfade und Dateinamen als Inline-Code.
- Halte `Kurzreferenz.md` kompakt; sie ist Zusammenfassung und Nachschlagehilfe, kein Lehrbuch.
- Formuliere Aufgaben beobachtbar und klar; erzwinge keine Frage, wenn ein Arbeitsauftrag besser ist.
- Schreib- und Löschoperationen dürfen nur in Home- oder Lab-Verzeichnissen stattfinden.

## Lab-Regeln

- Lab-Skripte heißen `lab_uebung_N.sh`.
- Standard-Labnamen lauten `Uebung-N-Lab`.
- Lab-Skripte liegen sichtbar im jeweiligen Übungsordner.
- Lab-Skripte verwenden `.tools/lab_common.sh`.
- Lab-Skripte implementieren keine eigene allgemeine Optionslogik für `--force`, `--fresh`, `--name` oder Zielverzeichnisse.
- Technische Payloads liegen bei Bedarf in `.assets/`.
- Erzeugte Lab-Verzeichnisse werden nicht ins Repository aufgenommen.

## Qualitätscheck vor Abschluss

Führe je nach Änderung passende Checks aus:

- mit `rg` nach alten Pfaden, Namen oder Begriffen suchen
- `bash -n` für geänderte Lab- und Tool-Skripte
- Lab-Skripte testweise unter `/tmp` ausführen
- prüfen, dass Schüler-READMEs nur Schülerdateien listen
- prüfen, dass Aufgabenpfade zu erzeugten Labs passen
- bei größeren Umstrukturierungen Schülerperspektive und Instructor-Perspektive getrennt prüfen
- nach bedeutenden Iterationen prüfen, ob `AGENTS.md`, `ARCHITECTURE.md`, `DECISIONS/`, `.agent-guides/`, `_instructor/Kursplanung.md` oder `_instructor/Ideen_und_Todos.md` aktualisiert werden sollten
