# Guide: Übungen erstellen

Dieser Guide beschreibt den bevorzugten Workflow zum Erstellen neuer Übungen.
Er ist kein starres Phasenmodell, sondern eine wiederverwendbare Arbeitsweise.
Wenn sich während der Arbeit bessere Zuschnitte, Planungsannahmen oder stabile Entscheidungen zeigen, werden sie direkt umgesetzt und bei Bedarf in der passenden Dokumentation festgehalten.

## Zweck

Neue Übungen sollen nicht direkt aus losen Ideen in fertige Aufgaben übersetzt werden.
Stattdessen entsteht zuerst eine kompakte fachliche Grundlage, danach werden Aufgaben und Labs gemeinsam entwickelt.

Der Workflow soll helfen:

- Umfang früh zu kontrollieren
- `Kurzreferenz.md` als didaktischen Anker zu nutzen
- Aufgaben und Labs passend aufeinander abzustimmen
- spätere Iterationen zu reduzieren
- trotzdem beweglich zu bleiben, wenn beim Ausarbeiten bessere Lösungen sichtbar werden

## Leitbild

Eine gute Übung verbindet drei Ebenen:

- eine kompakte fachliche Referenz in `Kurzreferenz.md`
- praktische Aufgaben mit Beobachtung, Anwendung und Reflexion
- realistische Kontexte durch echtes System, sichere Labs oder plausible Arbeitsverzeichnisse

Schüler sollen nicht nur Befehle ausführen, sondern schrittweise verstehen, warum ein Konzept im echten Linux-Alltag nützlich ist.
Dabei dürfen Aufgaben neue Themen zunächst praktisch anbahnen.
Die systematische Einordnung kann anschließend in der Besprechung erfolgen.

Die besten bisherigen Aufgaben haben eine erkennbare innere Logik:

- erst Orientierung schaffen
- dann gezielt handeln oder beobachten
- anschließend vergleichen, recherchieren oder erklären
- am Ende kontrollieren oder selbstständiger anwenden

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

## Dokumentations-Checkpoints

Vor dem Wechsel von einer nummerierten Workflow-Phase zur nächsten prüft der Agent kurz, ob die Dokumentation angepasst werden sollte.
Das ist kein vollständiger Audit, sondern ein kurzer Rückblick auf die gerade abgeschlossene Phase.

Prüfe:

- Wurde eine wiederverwendbare Präferenz geklärt?
- Hat eine bestehende Regel zu falschem, zu dogmatischem oder missverständlichem Verhalten geführt?
- Musste etwas mehrfach diskutiert werden, obwohl es künftig klarer dokumentiert sein könnte?
- Wurde eine Entscheidung getroffen, die spätere Übungen wahrscheinlich betrifft?
- Hat fehlende oder unklare Dokumentation unnötige Suche, Abstimmung oder Nacharbeit verursacht?

Wenn ja, aktualisiere die passende Dokumentation direkt oder halte bewusst fest, warum die Anpassung vertagt wird.
Wenn nein, fahre ohne weitere Dokumentationsarbeit fort.

Dokumentiere nicht jede Einzelkorrektur.
Eine Anpassung lohnt sich vor allem, wenn sie künftige Erstentwürfe verbessert, wiederkehrende Rückfragen reduziert oder spätere Iterationen vermeidet.

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

## 2. `Kurzreferenz.md` Planen

Plane zuerst die Kurzreferenz.
Dabei klärst du:

- Welche Inhalte wurden oder sollen vorher in einer Praxispräsentation besprochen werden?
- Welche Konzepte gehören wirklich in diese Übung?
- Welche Befehle müssen als Referenz enthalten sein?
- Welche Begriffe müssen konsistent eingeführt werden?
- Welche Inhalte sollen nur angerissen oder in eine spätere Übung verschoben werden?
- Welche Informationen dürfen nicht zu ausführlich werden, weil sie später in Aufgaben recherchiert oder erschlossen werden sollen?

Orientiere dich am Guide [.agent-guides/kurzreferenz.md](kurzreferenz.md).

## 3. Kurzreferenz Erstellen

Erstelle anschließend `Kurzreferenz.md` als kompakte Referenz.
Das Dokument muss an dieser Stelle noch nicht perfekt sein.
Es soll aber klar genug sein, um als Grundlage für die Aufgabenplanung zu dienen.

Prüfe beim Ausformulieren, ob die geplante Struktur noch trägt.
Wenn eine Konzeptüberschrift zu breit wirkt, nur das Übungsthema wiederholt oder kein echtes Teilkonzept benennt, strukturiere direkt um.

Wenn beim späteren Ausarbeiten der Aufgaben auffällt, dass Inhalte fehlen, zu ausführlich sind oder anders gegliedert werden sollten, wird die Kurzreferenz direkt angepasst.

## 4. Aufgaben-Skelett Entwerfen

Leite Aufgaben nicht direkt aus den Kategorien von `Kurzreferenz.md` ab.
Die Kurzreferenz liefert die fachliche Grundlage, aber Aufgaben entstehen aus sinnvollen Arbeitsphasen.

Erstelle vor dem Ausformulieren ein kurzes Aufgaben-Skelett.
Halte für jeden geplanten Abschnitt fest:

- den praktischen Arbeitskontext oder das Szenario
- die Lernhandlung, zum Beispiel erkunden, erzeugen, vergleichen, rekonstruieren, beobachten oder üben
- die erwartete Erkenntnis, Transferleistung oder Entscheidung
- die wichtigsten Werkzeuge, ohne schon jede Befehlszeile festzulegen
- ob der Abschnitt eine andere Arbeitsform hat und deshalb ein eigenes Aufgabenblatt braucht

Gute Abschnitte leisten mehr als “Konzept aus der Referenz einmal anwenden”.
Sie nutzen Befehle als Werkzeuge für einen kleinen Zweck, erzeugen eine Beobachtung oder führen zu einer Entscheidung.

Nach kurzen Grundübungen sollen Aufgaben möglichst mehrere Konzepte verbinden.
Wenn ein Abschnitt nur wiederholt, was in der Kurzreferenz bereits steht, muss er umgebaut oder gestrichen werden.

## 5. Aufgaben Und Labs Konkretisieren

Das Aufgaben-Skelett beschreibt die grobe Lernstruktur.
In diesem Schritt konkretisierst du daraus Aufgaben, Labs, Materialien und Aufteilung.

Plane Aufgaben und Labs gemeinsam, nicht getrennt.

Kläre:

- Welche Aufgaben passen zu den Konzepten?
- Welche Lernkurve ergibt Sinn?
- Wo braucht es kurze Grundübungen und wo integrierte Aufgaben, die mehrere Konzepte verbinden?
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

## 6. Aufgaben Und Labs Iterativ Ausarbeiten

Erstelle konkrete Drafts für:

- Aufgabenblätter
- Lab-Strukturen
- Lab-Skripte
- ggf. `.assets/`
- Kontrollpunkte oder Zielzustände

Arbeite iterativ.
Wenn während der Umsetzung auffällt, dass ein Konzept fehlt, ein Lab anders aufgebaut sein sollte oder eine Aufgabe besser geteilt wird, passe die Struktur sofort an.
Es ist nicht nötig, bis zu einer späteren Review-Phase zu warten.

## 7. Review Und Überarbeitung

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

## 8. Übungs-README Finalisieren

Die Übungs-`README.md` ist der Einstiegspunkt in eine konkrete Übung.
Sie soll knapp bleiben und Schüler auf die Bearbeitung vorbereiten, nicht die Aufgaben vorwegnehmen.

Typische Struktur:

```md
# Übung: <Titel>

Kurze Einleitung in ein bis zwei Absätzen.

## Lernziele

- ...

## Hinweise

Nur falls wirklich nötig.

## Dateien

Für diese Übung benötigst du die folgenden Dateien:

- ...
```

`## Überblick` wird normalerweise nicht benötigt.
Die Einleitung kann direkt unter dem Titel stehen.

Lernziele beschreiben, was Schüler nach der Übung können, unterscheiden oder erklären können.
Sie sollen keine bloßen Aktivitäten sein.
Formuliere also eher “Textdateien mit `nano` und `vim` grundlegend bearbeiten” als “Textbearbeitung mit `nano` und `vim` üben”.
Befehle, Optionen oder Syntaxzeichen müssen in Lernzielen nicht vollständig aufgezählt werden.
Nenne sie, wenn der konkrete Befehl oder Begriff den Kompetenzbereich der Übung zentral benennt, zum Beispiel `find` und `-exec` in einer `find`-Vertiefung.
Wenn der Name selbst nicht wichtig für die Orientierung ist, formuliere die Kompetenz allgemeiner, zum Beispiel “Ausgaben, Fehlermeldungen und Eingaben gezielt umleiten”.

`## Hinweise` ist optional.
Nutze diesen Abschnitt nur für wirklich übergreifende Hinweise zur gesamten Übung.
Hinweise zu einzelnen Aufgaben, allgemeine Sicherheitsbelehrungen oder offensichtliche Arbeitsanweisungen gehören nicht in die Übungs-README.
Bei der ersten Übung dürfen `Kurzreferenz.md` und das erste Lab-Skript noch explizit erwähnt werden, weil Schüler die Materialstruktur und Lab-Skripte dann erst kennenlernen.
In späteren Übungen sollten allgemeine Lab-Skript-Hinweise nur noch stehen, wenn sie für genau diese Übung wirklich nötig sind.

Die Dateiliste bildet den Abschluss der README.
Sie listet nur Schülerdateien und sichtbare Lab-Skripte.

## 9. Abschluss

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
