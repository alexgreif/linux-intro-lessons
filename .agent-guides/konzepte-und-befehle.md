# Guide: `Konzepte_und_Befehle.md`

Dieser Guide beschreibt, wie Konzept- und Befehlsübersichten für Übungen gestaltet werden sollen.
Orientiere dich an den bestehenden Dateien in `01_Dateimanagement/` und `02_Befehlssyntax_und_Dokumentation/`.

## Zweck

`Konzepte_und_Befehle.md` ist die kompakte Verschriftlichung der wichtigsten Inhalte, die vor der Übung bereits in einer Praxispräsentation besprochen und demonstriert wurden.
Das Dokument dient als Nachschlagehilfe während der Aufgaben und später als Referenz, wenn Schüler Inhalte noch einmal auffrischen möchten.
Es ist kein Ersatz für Unterricht, Live-Demonstration oder manpages.

Wichtig: Dieser Hintergrund erklärt die knappe Form des Dokuments.
In `Konzepte_und_Befehle.md` selbst soll aber nicht auf die Präsentation verwiesen werden.
Formulierungen wie “Wie du gerade in der Präsentation gelernt hast ...” sollen vermieden werden.

## Aufbau

Typische Struktur:

```md
# Konzepte und Befehle: <Thema>

Kurze Einleitung.

## Konzepte

...

## Befehle

...
```

Wenn ein Thema mehrere klar getrennte Konzeptbereiche hat, können diese nummeriert werden, zum Beispiel `## Konzept 1: ...`.

## Inhaltliche Regeln

- Nimm nur Konzepte auf, die für die Aufgaben relevant sind.
- Führe Begriffe knapp und präzise ein.
- Fasse Fakten und Zusammenhänge so zusammen, dass Schüler sie beim Bearbeiten oder späteren Wiederholen schnell wiederfinden.
- Erkläre genug, damit Schüler die Aufgaben bearbeiten können, aber schreibe kein vollständiges Lehrbuch.
- Beispiele sollen sparsam und zielgerichtet sein.
- Neue Befehle und Optionen gehören nur hinein, wenn sie in der Übung gebraucht werden oder bewusst als Recherchewerkzeug dienen.
- Verrate keine Lösungen, die Schüler später selbst recherchieren oder erschließen sollen.

## Stil

- Schreibe auf Deutsch.
- Sprich Schüler direkt mit `du` an, wenn eine direkte Ansprache sinnvoll ist.
- Verwende konsistente Begriffe, besonders `Verzeichnis`.
- Formatiere Befehle, Optionen, Pfade, Dateinamen und manpage-Begriffe als Inline-Code.
- Nutze kurze Absätze oder Bullet Points.
- Vermeide lange, verschachtelte Erklärungen.

## Befehlsübersichten

Befehle werden bevorzugt in Tabellen zusammengefasst.

Gutes Muster:

```md
| Befehl | Ausgeschrieben | Beschreibung | Beispiel |
| ------ | -------------- | ------------ | -------- |
| `pwd` | print working directory | Gibt das aktuelle Working Directory aus. | `pwd` |
```

Tabellen sollen schnell scannbar bleiben.
Beschreibungen sollen kurz sein und keine Aufgabenlösung ersetzen.

## Gute Konzeptmuster

Gutes Muster:

```md
- **Relativer Pfad**: Der Pfad wird ausgehend vom aktuellen Working Directory angegeben, zum Beispiel `data/input.txt`.
```

Warum gut:

- Begriff ist hervorgehoben.
- Erklärung ist kurz.
- Beispiel ist direkt nutzbar.

## Vermeiden

Vermeide:

- lange manpage-Nacherzählungen
- vollständige Tutorials zu jedem Befehl
- große Beispielserien ohne direkten Aufgabenbezug
- Inhalte, die in der Übung nicht verwendet werden
- zu viele neue Begriffe auf einmal

Schlechtes Muster:

```md
`find` ist ein sehr mächtiges Programm mit dutzenden Optionen. Im Folgenden werden alle wichtigen Varianten beschrieben...
```

Besser:

```md
`find` sucht Dateien und Verzeichnisse innerhalb eines Verzeichnisbaums, zum Beispiel `find . -name "*.txt"`.
```

## Qualitätscheck

Prüfe vor Abschluss:

- Passt jedes Konzept zu mindestens einer Aufgabe?
- Sind die Erklärungen kompakter als die Aufgaben selbst?
- Sind Befehle, Optionen und Pfade korrekt als Code formatiert?
- Werden keine späteren Rechercheaufgaben unnötig vorweggenommen?
- Ist die Befehlsübersicht vollständig genug für die Übung, aber nicht überladen?
