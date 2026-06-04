# Besprechung: Linux-Konzepte aus dem Arbeitsblatt

Dieses Dokument ist für die Nachbesprechung gedacht. Im Arbeitsblatt entdecken die Schüler einige Konzepte zunächst praktisch. In der Besprechung sollten diese Konzepte anschließend explizit benannt, eingeordnet und systematisch erklärt werden.

## Filesystem Hierarchy Standard

- Linux-Systeme folgen einer typischen Verzeichnisstruktur, dem **Filesystem Hierarchy Standard (FHS)**.
- Wichtige Beispiele aus dem Arbeitsblatt:
  - `/` als Root-Verzeichnis des Dateisystems
  - `/home` für Benutzerverzeichnisse
  - `/var` für veränderliche Daten, zum Beispiel Logs
  - `/etc` für systemweite Konfigurationsdateien
  - `/bin` beziehungsweise `/usr/bin` für ausführbare Programme
- Wichtig: Der FHS ist eine Konvention und kann je nach Distribution oder System leicht unterschiedlich umgesetzt sein.

## Metadaten und Dateitypen

- Dateien bestehen nicht nur aus Inhalt, sondern haben auch Metadaten.
- `stat` zeigt unter anderem Größe, Besitzer, Berechtigungen und Zeitstempel.
- `file` versucht den Dateityp anhand des Inhalts oder anderer Merkmale zu erkennen.
- `du` zeigt die belegte Speichergröße an. Diese ist nicht immer identisch mit der reinen Dateigröße.
- Dateiendungen sind unter Linux hilfreich, aber nicht zuverlässig: Der tatsächliche Dateityp hängt nicht nur vom Namen ab.

## Symbolische Links

- Ein symbolischer Link, kurz **Symlink**, ist ein Verweis auf einen anderen Pfad.
- Im Baum wird ein Symlink häufig mit `LINKNAME -> ZIEL` dargestellt.
- Ein Symlink ist keine normale Kopie der Zieldatei oder des Zielverzeichnisses.
- Symlinks können absolute oder relative Zielpfade verwenden.
- Bei relativen Zielpfaden wird das Ziel vom Ort des Links aus interpretiert.
- Syntax:

```bash
ln -s ZIEL LINKNAME
```

## Dotfiles

- Dateien und Verzeichnisse, deren Name mit `.` beginnt, werden häufig **Dotfiles** genannt.
- Sie sind nicht wirklich unsichtbar, werden aber von vielen Programmen standardmäßig ausgeblendet.
- Beispiele:
  - `.bashrc`
  - `.ssh/`
  - `.well-known/`
- Mit passenden Optionen, zum Beispiel `ls -a`, können Dotfiles angezeigt werden.
- Dotfiles werden oft für Konfigurationen verwendet, können aber technisch ganz normale Dateien oder Verzeichnisse sein.

## Wildcards, Globbing und Shell-Expansion

- Wildcards wie `*` werden normalerweise von der Shell verarbeitet, bevor ein Programm gestartet wird.
- Diese Ersetzung heißt **Globbing** oder allgemeiner **Shell-Expansion**.
- Beispiel: `*.txt` kann vor dem Programmstart zu mehreren konkreten Dateinamen erweitert werden.
- Programme wie `find` bekommen dann nicht unbedingt das ursprüngliche Muster, sondern bereits die von der Shell erzeugten Argumente.
- Anführungszeichen verhindern diese Expansion:

```bash
find . -name "*.txt"
```

- Ohne Anführungszeichen kann die Shell `*.txt` bereits vorher ersetzen:

```bash
find . -name *.txt
```

- Das kann zu falschen Ergebnissen oder Fehlermeldungen führen.

## Anführungszeichen und Argumente

- Die Shell zerlegt Eingaben in Argumente.
- Leerzeichen trennen normalerweise Argumente voneinander.
- Anführungszeichen sorgen dafür, dass ein Ausdruck mit Leerzeichen als ein zusammenhängendes Argument behandelt wird.
- Beispiel:

```bash
cp "wichtige notiz.txt" ziel/
```

- Anführungszeichen sind also nicht nur für Leerzeichen wichtig, sondern auch, um bestimmte Shell-Expansionen zu verhindern.

## Rekursives Arbeiten mit Verzeichnissen

- Verzeichnisse können weitere Dateien und Unterverzeichnisse enthalten.
- Manche Befehle arbeiten standardmäßig nur mit einzelnen Dateien.
- Um ganze Verzeichnisbäume zu kopieren oder zu löschen, wird häufig rekursives Arbeiten benötigt.
- Typisches Beispiel:

```bash
cp -r quelle/ ziel/
rm -r verzeichnis/
```

- `rm -r` sollte besonders vorsichtig verwendet werden, weil damit ganze Verzeichnisstrukturen gelöscht werden können.
