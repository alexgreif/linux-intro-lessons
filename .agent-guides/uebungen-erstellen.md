# Guide: Übungen erstellen

Dieser Guide beschreibt den bevorzugten Workflow zum Erstellen neuer Übungen.
Er ist kein starres Phasenmodell, sondern eine wiederverwendbare Arbeitsweise.
Wenn sich während der Arbeit bessere Zuschnitte, Planungsannahmen oder stabile Entscheidungen zeigen, werden sie direkt umgesetzt und bei Bedarf in der passenden Dokumentation festgehalten.

## Zweck

Neue Übungen sollen nicht direkt aus losen Ideen in fertige Aufgaben übersetzt werden.
Stattdessen entsteht zuerst eine kompakte fachliche Grundlage, danach werden Aufgaben und Labs gemeinsam entwickelt.

Der Workflow soll helfen:

- Umfang früh zu kontrollieren
- `Konzepte_und_Befehle.md` als didaktischen Anker zu nutzen
- Aufgaben und Labs passend aufeinander abzustimmen
- spätere Iterationen zu reduzieren
- trotzdem beweglich zu bleiben, wenn beim Ausarbeiten bessere Lösungen sichtbar werden

## Ausgangspunkt

Der Ausgangspunkt ist typischerweise:

```text
_instructor/<Übung>/Ideen.md
```

Diese Datei ist Rohmaterial.
Sie darf stichpunktartig, unfertig, widersprüchlich oder noch unsortiert sein.
Sie ist keine Spezifikation und muss nicht schülergerecht formuliert sein.

Prüfe zusätzlich:

- `_instructor/Kursplanung.md` für den geplanten thematischen Verlauf und Übergänge zwischen Übungen
- `_instructor/Ideen_und_Todos.md` für offene Ideen, die zur neuen Übung passen könnten

## 1. Ideen Sichten

Lies die vorhandene `Ideen.md` und identifiziere:

- zentrale Themen
- mögliche neue Konzepte
- mögliche neue Befehle
- vorhandenes Vorwissen aus früheren Übungen
- Themen, die praktisch eingeführt und erst später systematisch besprochen werden können
- potenziell gefährliche oder sensible Stellen
- Themen, die eventuell zu groß für eine einzelne Übung sind

Ziel ist noch kein fertiger Plan, sondern ein gemeinsames Verständnis des Materials.

## 2. `Konzepte_und_Befehle.md` Planen

Plane zuerst das Konzeptdokument.
Dabei klärst du:

- Welche Inhalte wurden oder sollen vorher in einer Praxispräsentation besprochen werden?
- Welche Konzepte gehören wirklich in diese Übung?
- Welche Befehle müssen als Referenz enthalten sein?
- Welche Begriffe müssen konsistent eingeführt werden?
- Welche Inhalte sollen nur angerissen oder in eine spätere Übung verschoben werden?
- Welche Informationen dürfen nicht zu ausführlich werden, weil sie später in Aufgaben recherchiert oder erschlossen werden sollen?

Orientiere dich am Guide [.agent-guides/konzepte-und-befehle.md](konzepte-und-befehle.md).

## 3. Konzeptdokument Erstellen

Erstelle anschließend `Konzepte_und_Befehle.md` als kompakte Referenz.
Das Dokument muss an dieser Stelle noch nicht perfekt sein.
Es soll aber klar genug sein, um als Grundlage für die Aufgabenplanung zu dienen.

Wenn beim späteren Ausarbeiten der Aufgaben auffällt, dass Inhalte fehlen, zu ausführlich sind oder anders gegliedert werden sollten, wird das Konzeptdokument direkt angepasst.

## 4. Aufgaben Und Labs Gemeinsam Planen

Plane Aufgaben und Labs gemeinsam, nicht getrennt.

Kläre:

- Welche Aufgaben passen zu den Konzepten?
- Welche Lernkurve ergibt Sinn?
- Wo sollen Schüler beobachten, vergleichen oder erklären?
- Wo sollen sie recherchieren?
- Wo kann das echte System lesend genutzt werden, um Kontext und Motivation zu schaffen?
- Wo brauchen sie vorbereitete Dateien?
- Wo dürfen echte Systemdateien nur lesend untersucht werden?
- Wo braucht es ein Lab, um sicher schreiben, löschen oder konfigurieren zu können?
- Welche realistischen Lab-Strukturen unterstützen die Aufgaben besser als künstliche Mini-Beispiele?
- Wie viele Aufgabenblätter sind sinnvoll?

Die Aufteilung ist nicht endgültig.
Wenn sich später zeigt, dass ein Aufgabenblatt zu lang wird oder ein Thema klarer getrennt werden sollte, darf die Struktur angepasst werden.

Orientiere dich am Guide [.agent-guides/aufgabenblaetter.md](aufgabenblaetter.md).
Für Lab-Skripte gilt zusätzlich [.tools/README.md](../.tools/README.md).

## 5. Aufgaben Und Labs Iterativ Ausarbeiten

Erstelle konkrete Drafts für:

- Aufgabenblätter
- Lab-Strukturen
- Lab-Skripte
- ggf. `.assets/`
- Kontrollpunkte oder Zielzustände

Arbeite iterativ.
Wenn während der Umsetzung auffällt, dass ein Konzept fehlt, ein Lab anders aufgebaut sein sollte oder eine Aufgabe besser geteilt wird, passe die Struktur sofort an.
Es ist nicht nötig, bis zu einer späteren Review-Phase zu warten.

## 6. Review Und Überarbeitung

Prüfe die Übung anschließend gezielt aus mehreren Perspektiven:

- Lernkurve
- Umfang
- Verständlichkeit
- Sprache und Begriffe
- Reproduzierbarkeit
- Sicherheit
- sinnvolle Balance aus echtem System, realistischen Labs und gezielten Mini-Beispielen
- sinnvolle Verbindung von Dokumentation, Aufgaben und Labs
- technische Funktion der Lab-Skripte

Bei Bedarf dürfen auch in dieser Phase noch strukturelle Änderungen vorgenommen werden.

## 7. Abschluss

Zum Abschluss gehören:

- technische Checks, zum Beispiel `bash -n` für geänderte Skripte
- Lab-Test unter `/tmp`
- Pfade und erzeugte Lab-Strukturen prüfen
- Root- und Übungs-READMEs prüfen
- `_instructor/<Übung>/Besprechung.md` erstellen
- prüfen, ob `AGENTS.md`, `ARCHITECTURE.md`, `DECISIONS/`, `.agent-guides/`, `_instructor/Kursplanung.md` oder `_instructor/Ideen_und_Todos.md` aktualisiert werden sollten

Die Übungs-`README.md` wird typischerweise eher spät erstellt oder finalisiert, wenn Aufgaben, Labs und benötigte Dateien feststehen.

## Leitprinzip

Der Workflow ist agil, aber nicht beliebig:

- Erst fachliche Grundlage klären.
- Dann Aufgaben und Labs gemeinsam entwickeln.
- Während der Umsetzung bessere Zuschnitte oder Entscheidungen sofort aufnehmen.
- Am Ende systematisch prüfen und Dokumentation aktuell halten.
