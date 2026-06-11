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

Typischer Ausgangspunkt:

```md
# Kurzreferenz: <Thema>

Kurze thematische Einleitung.

## Inhalt

- [Befehle](#befehle)
- [Weitere Referenzbereiche](#...)

## Befehle

...
```

Die Einleitung soll kurz in das Thema der Übung führen.
Sie soll nicht nur den Zweck der Datei wiederholen.
Der Zweck ist durch den Namen `Kurzreferenz.md` bereits klar.

Ein Inhaltsverzeichnis ist optional.
Es ist sinnvoll, wenn die Kurzreferenz mehrere klar getrennte Referenzbereiche enthält.
Nutze interne Markdown-Links und ergänze bei Bedarf kurze Hinweise hinter dem Link, zum Beispiel:

```md
- [Textausgabe im Terminal](#textausgabe-im-terminal): Befehle und Pager (`less`)
- [Text bearbeiten mit Texteditoren](#text-bearbeiten-mit-texteditoren): `nano` und `vim`
```

Die Gliederung soll die Denkstruktur der Übung widerspiegeln.
Sie soll aber vor allem als Nachschlagehilfe funktionieren.
Referenztabellen, die Schüler wahrscheinlich oft nachschlagen, dürfen früh stehen, zum Beispiel `## Befehle`, `## Häufige Optionen`, `## Umleitungen`, `## Wichtige Variablen` oder `## Wichtige Konfigurationsdateien`.
Die Reihenfolge muss nicht der Reihenfolge der Präsentation oder Aufgaben entsprechen.

Abschnittsüberschriften sollen echte Denk- oder Referenzbereiche innerhalb des Übungsthemas benennen.
Sie sollen nicht einfach das Gesamtthema der Übung wiederholen.

Gute Abschnittstitel sind konkret und schnell scannbar, zum Beispiel:

- `## Orientierung im Dateisystem`
- `## Sonderzeichen`
- `## Häufige Optionen`
- `## Umleitungen`
- `## Standardströme`
- `## Text bearbeiten mit Texteditoren`

Die Abschnitte sollen nicht wie eine Vorlesungsmitschrift wirken.
Sie sollen schnell auffindbare Referenzblöcke bilden.

## Inhaltliche Regeln

- Nimm nur Begriffe, Konzepte, Befehle und Syntaxformen auf, die für die Aufgaben relevant sind.
- Formuliere diese Inhalte als allgemein nützliches Fach- und Admin-Wissen, nicht so, als seien sie nur wegen einer konkreten Aufgabe relevant.
- Vermeide Formulierungen wie “In dieser Übung ...”, wenn dadurch ein Konzept künstlich auf den Aufgabenrahmen verengt wird.
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

Befehle werden bevorzugt früh und in Tabellen zusammengefasst.
Das gilt besonders, wenn Schüler die Kurzreferenz während der Aufgaben als schnellen Werkzeugüberblick nutzen.

Gutes Muster:

```md
| Befehl | Ausgeschrieben | Beschreibung | Beispiel |
| ------ | -------------- | ------------ | -------- |
| `pwd` | print working directory | Gibt das aktuelle Working Directory aus. | `pwd` |
```

Tabellen sollen schnell scannbar bleiben.
Beschreibungen sollen kurz sein und keine Aufgabenlösung ersetzen.

Wenn eine Befehlstabelle vorhanden ist, soll der anschließende Fließtext die Befehle nicht noch einmal einzeln nacherzählen.
Nutze den Fließtext vor allem für Konzepte, Zusammenhänge, Vorsichtshinweise und Einordnung.
Verweise bei Bedarf knapp auf die Befehlstabelle, statt dieselben Befehle erneut zu erklären.
Konkrete Befehle, Optionen oder Syntaxformen dürfen im Fließtext genannt werden, wenn dadurch ein Zusammenhang, eine Entscheidung oder eine Vorsichtsstelle erklärt wird.
Sie sollen nicht nur wiederholt werden, weil sie in der Tabelle bereits vorkommen.

In der Befehlsspalte steht normalerweise das eigentliche Werkzeug, nicht der komplette typische Aufruf.
Wenn ein Befehl in der Praxis mit `sudo` ausgeführt wird, steht `sudo` im Beispiel, nicht im Befehlsnamen.

Wenn es um Bedienung statt um Befehle geht, können ebenfalls Tabellen genutzt werden.
Das passt besonders für Tasten, Modi, häufige Optionen, Umleitungen, wichtige Variablen, wichtige Dateien oder andere kompakte Syntaxreferenzen.

Gutes Muster:

```md
| Taste | Funktion |
| ----- | -------- |
| `/Suchwort` | nach einem Suchwort suchen |
| `q` | Anzeige schließen |
```

## Muster aus Bestehenden Übungen

Die bisherigen Kurzreferenzen nutzen einige Muster, die für neue Übungen hilfreich sind.

### Thematische Einleitung

Die Einleitung soll das Thema kurz rahmen und seine Bedeutung verständlich machen.
Sie soll nicht generisch erklären, dass die Datei Begriffe und Befehle zusammenfasst.

Gutes Muster:

```md
Terminalbefehle bestehen aus mehreren Bausteinen: dem eigentlichen Befehl, Optionen, Parametern und Argumenten.
Wenn du diese Struktur verstehst, kannst du Befehle gezielter einsetzen und die Dokumentation im Terminal besser nutzen.
```

Warum gut:

- Die Einleitung passt genau zum Thema.
- Sie erklärt kurz, warum das Thema nützlich ist.
- Sie wiederholt nicht nur den Zweck der Datei.

### Referenzbereiche Nach Nachschlagewert Ordnen

Häufig genutzte Tabellen dürfen weit oben stehen, auch wenn die Begriffe dahinter erst später erklärt werden.
Das ist sinnvoll, wenn Schüler beim Bearbeiten der Aufgaben schnell etwas nachschlagen sollen.

Gutes Muster:

```md
## Befehle

...

## Umleitungen

Eine **Umleitung** (*redirection*) verändert, wohin Ausgaben (`stdout`) oder Fehlermeldungen (`stderr`) eines Befehls gehen oder woher er seine Eingaben (`stdin`) bekommt. Siehe auch [Standardströme](#standardströme).

| Umleitung | Bedeutung | Beispiel |
| --------- | --------- | -------- |
| `>` | Leitet `stdout` in eine Datei um. | `ls -l /etc > etc-liste.txt` |
```

Warum gut:

- Die Tabelle steht dort, wo sie schnell gefunden wird.
- Der Link verweist auf die genauere begriffliche Einordnung.
- Die Kurzreferenz folgt der Nachschlagepraxis, nicht starr der didaktischen Reihenfolge.

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

- Passt jeder Begriff, Befehl und Referenzbereich zu mindestens einer Aufgabe?
- Sind die Erklärungen kompakter als die Aufgaben selbst?
- Sind Befehle, Optionen und Pfade korrekt als Code formatiert?
- Werden keine späteren Rechercheaufgaben unnötig vorweggenommen?
- Sind Befehls- und Referenztabellen vollständig genug für die Übung, aber nicht überladen?
- Benennen die Abschnittsüberschriften echte Denk- oder Referenzbereiche statt das Übungsthema zu wiederholen?
- Ist die Reihenfolge für schnelles Nachschlagen sinnvoll?
- Ist ein Inhaltsverzeichnis vorhanden, wenn die Kurzreferenz mehrere klar getrennte Referenzbereiche enthält?
- Sind Beispiele realistisch genug, um als Referenz hilfreich zu sein?
