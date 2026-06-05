# D012: Namenskonventionen für Dateien und Verzeichnisse

Datum: 2026-06-04

## Entscheidung

Dateien und Verzeichnisse folgen je nach Zielgruppe und technischer Rolle unterschiedlichen, aber klar definierten Namenskonventionen.

Schülernahe deutsche Materialdateien verwenden deutsche Groß- und Kleinschreibung, keine Leerzeichen und Worttrennung mit `_`.
Technische Dateien verwenden lowercase `snake_case`.
Interne Agenten- und Entscheidungsdokumentation verwendet lowercase `kebab-case`.

## Begründung

Die Konvention soll für diesen konkreten Unterrichtskontext sinnvoll sein, nicht blind externen Best Practices folgen.
Schülerdateien sind Unterrichtsmaterialien und sollen im Deutschen gut lesbar bleiben.
Gleichzeitig müssen alle Namen terminalfreundlich, robust und eindeutig sein.

Technische Dateien orientieren sich stärker an Shell- und Tool-Konventionen.
Interne Dokumentationsdateien profitieren von kurzen, URL-artigen Namen, die gut suchbar und verlinkbar sind.

## Konsequenzen

Verwende folgende Regeln:

| Bereich | Konvention | Beispiel |
| --- | --- | --- |
| Übungsverzeichnisse | `NN_Deutscher_Titel_Mit_Underscores`, keine Umlaute | `03_Textverarbeitung_im_Terminal/` |
| Schüler-Markdown | deutscher Titel mit `_`, Groß-/Kleinschreibung nach Deutsch, keine Umlaute | `Aufgabe_1_Textdateien_anzeigen.md` |
| Kurzreferenz | fester deutscher Name | `Kurzreferenz.md` |
| README | etablierter Standardname | `README.md` |
| Lab-Skripte | lowercase `snake_case` | `lab_uebung_3.sh` |
| Shell-Infrastruktur | lowercase `snake_case` | `lab_common.sh` |
| Dot-Verzeichnisse | lowercase, kurz oder `kebab-case` | `.tools/`, `.assets/`, `.agent-guides/` |
| Agent-Guides | lowercase `kebab-case.md` | `kurzreferenz.md` |
| Decisions | `D###-kebab-case.md` | `D012-namenskonventionen.md` |
| Instructor-Verzeichnis | bewusster Sonderfall | `_instructor/` |
| Erzeugte Labs | sprechender Name mit Dashes | `Uebung-3-Lab` |

Vermeide Leerzeichen, Umlaute und unnötige Sonderzeichen in Datei- und Verzeichnisnamen.
Bestehende Instructor-Notizen folgen denselben Grundregeln, müssen aber nicht wie Schülerdateien formuliert sein.
