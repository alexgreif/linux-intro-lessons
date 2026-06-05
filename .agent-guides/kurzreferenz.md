# Guide: `Kurzreferenz.md`

Dieser Guide beschreibt, wie Kurzreferenzen für Übungen gestaltet werden sollen.
Orientiere dich bei Bedarf an bestehenden Kurzreferenzen, besonders an aktuellen Übungen mit ähnlichem Thema oder ähnlicher Arbeitsform.

## Zweck

`Kurzreferenz.md` ist die kompakte Verschriftlichung der wichtigsten Inhalte, die vor der Übung bereits in einer Praxispräsentation besprochen und demonstriert wurden.
Das Dokument dient als Nachschlagehilfe während der Aufgaben und später als Referenz, wenn Schüler Inhalte noch einmal auffrischen möchten.
Es ist kein Ersatz für Unterricht, Live-Demonstration oder manpages.

Wichtig: Dieser Hintergrund erklärt die knappe Form des Dokuments.
In `Kurzreferenz.md` selbst soll aber nicht auf die Präsentation verwiesen werden.
Formulierungen wie “Wie du gerade in der Präsentation gelernt hast ...” sollen vermieden werden.

## Aufbau

Typische Struktur:

```md
# Kurzreferenz: <Thema>

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

Konzeptüberschriften sollen echte Denkbausteine innerhalb des Übungsthemas benennen.
Sie sollen nicht einfach das Gesamtthema der Übung wiederholen.

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
- Vermeide Ausblicke auf spätere Übungen oder Themen, die nicht Teil der aktuellen Übung sind.
- Rückbezüge auf frühere Übungen sind erlaubt, aber nur sparsam und bei starkem Zusammenhang. Nutze sie, wenn der Text sonst irritierend wirken könnte, weil Schüler das Thema schon einmal gesehen haben.
- Erkläre keine banalen Alltagsbegriffe. Die Schüler sind in einer technischen Ausbildung; erkläre stattdessen die Linux- oder Terminal-spezifischen Unterschiede.

## Stil

- Schreibe auf Deutsch.
- Sprich Schüler direkt mit `du` an, wenn eine direkte Ansprache sinnvoll ist.
- Verwende konsistente Begriffe, besonders `Verzeichnis`.
- Formatiere Befehle, Optionen, Pfade, Dateinamen und manpage-Begriffe als Inline-Code.
- Nutze kurze Absätze oder Bullet Points.
- Vermeide lange, verschachtelte Erklärungen.
- Wenn ein deutscher Begriff und ein englischer Fachbegriff wichtig sind, nutze den deutschen Begriff als Leitbegriff und nenne den englischen Fachbegriff beim ersten Auftreten, zum Beispiel `Umleitung` (*redirection*).

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

## Muster aus Bestehenden Übungen

Die bisherigen Kurzreferenzen nutzen einige Muster, die für neue Übungen hilfreich sind.

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

Beispiele in der Kurzreferenz sollen typische Formen zeigen, aber nicht jede spätere Aufgabe vormachen.
Sie sollen nicht nur syntaktisch korrekt, sondern auch realistisch und motivierbar sein.
Wenn ein realistisches Beispiel einen noch nicht behandelten Befehl nutzt, ist das erlaubt, solange dieser Befehl dadurch nicht Teil der Übung wird.

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

Wenn ein Werkzeug zur Bearbeitung der Aufgaben bedient werden muss, darf die Kurzreferenz eine knappe Bedienübersicht enthalten.

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
- Vorschauen auf spätere Übungen
- künstliche Beispiele, die nur eine Syntax demonstrieren, aber keinen plausiblen Anwendungsfall zeigen

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
- Benennen die Konzeptüberschriften echte Teilkonzepte statt das Übungsthema zu wiederholen?
- Sind Beispiele realistisch genug, um als Referenz hilfreich zu sein?
