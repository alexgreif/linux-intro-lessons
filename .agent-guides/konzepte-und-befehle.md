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

Die Gliederung soll die Denkstruktur der Übung widerspiegeln.
Wenn eine Übung nur einen zusammenhängenden Themenbereich hat, reicht `## Konzepte` plus `## Befehle`.
Wenn mehrere große Konzeptbereiche vorkommen, sind nummerierte Konzeptabschnitte sinnvoll, zum Beispiel `## Konzept 1: Die Anatomie eines Befehls`, `## Konzept 2: Manpages`.

Die Abschnitte sollen nicht wie eine Vorlesungsmitschrift wirken.
Sie sollen schnell auffindbare Referenzblöcke bilden.

## Inhaltliche Regeln

- Nimm nur Konzepte auf, die für die Aufgaben relevant sind.
- Führe Begriffe knapp und präzise ein.
- Fasse Fakten und Zusammenhänge so zusammen, dass Schüler sie beim Bearbeiten oder späteren Wiederholen schnell wiederfinden.
- Erkläre genug, damit Schüler die Aufgaben bearbeiten können, aber schreibe kein vollständiges Lehrbuch.
- Beispiele sollen sparsam und zielgerichtet sein.
- Neue Befehle und Optionen gehören nur hinein, wenn sie in der Übung gebraucht werden oder bewusst als Recherchewerkzeug dienen.
- Verrate keine Lösungen, die Schüler später selbst recherchieren oder erschließen sollen.
- Benenne wichtige Ausnahmen oder Stolperstellen, wenn sie für die Aufgaben relevant sind.
- Erkläre Bedienwissen nur so weit, wie Schüler es für die Übung brauchen.

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

Wenn es um Bedienung statt um Befehle geht, können ebenfalls Tabellen genutzt werden.
Das passt besonders für Tasten, Modi oder häufige Optionen.

Gutes Muster:

```md
| Taste | Funktion |
| ----- | -------- |
| `/Suchwort` | nach einem Suchwort suchen |
| `q` | Anzeige schließen |
```

## Muster aus Übung 1 und 2

Die bisherigen Konzeptdokumente nutzen einige Muster, die für neue Übungen hilfreich sind.

### Kompakte Begriffsblöcke

Gutes Muster:

```md
- **Relativer Pfad**: Der Pfad wird ausgehend vom aktuellen Working Directory angegeben, zum Beispiel `data/input.txt`.
```

Warum gut:

- Der Begriff ist schnell auffindbar.
- Die Erklärung ist kurz.
- Das Beispiel reicht aus, um die Bedeutung wiederzuerkennen.

### Beispiele Als Referenz, Nicht Als Übungsersatz

Beispiele im Konzeptdokument sollen typische Formen zeigen, aber nicht jede spätere Aufgabe vormachen.

Gutes Muster:

````md
Viele Terminalbefehle folgen grob dieser Struktur:

```text
Befehl [Optionen] [Argumente]
```

Beispiele:

```bash
ls -l /etc
cp -r quelle/ ziel/
find /var/log -name "*.log"
```
````

Warum gut:

- Die Beispiele zeigen das Muster.
- Sie bleiben kurz.
- Die eigentliche Anwendung passiert später in den Aufgaben.

### Ausnahmen Bewusst Benennen

Wenn ein Thema typische Konventionen erklärt, sollen relevante Ausnahmen erwähnt werden.
Das verhindert falsche Verallgemeinerungen.

Gutes Muster:

```md
Es gibt Befehle, die von den Konventionen abweichen.
Deshalb ist es wichtig, bei Bedarf die manpage zu prüfen.
```

Warum gut:

- Schüler bekommen eine Regel, aber keine Scheinsicherheit.
- Die Aussage motiviert Dokumentationsnutzung.
- Details werden nur so weit erklärt, wie sie für die Übung nützlich sind.

### Bedienwissen Kompakt Bündeln

Wenn ein Werkzeug zur Bearbeitung der Aufgaben bedient werden muss, darf das Konzeptdokument eine knappe Bedienübersicht enthalten.

Gutes Muster:

```md
| Taste | Funktion |
| ----- | -------- |
| `↑` / `↓` | zeilenweise scrollen |
| `/Suchwort` | nach einem Suchwort suchen |
| `q` | manpage schließen |
```

Warum gut:

- Schüler müssen nicht im Fließtext suchen.
- Die Tabelle funktioniert als Nachschlagehilfe während der Aufgabe.
- Nur die für die Übung nötigen Funktionen werden genannt.

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
