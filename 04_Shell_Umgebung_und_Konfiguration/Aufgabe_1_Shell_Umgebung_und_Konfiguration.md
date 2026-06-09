# Aufgabe 1: Shell-Umgebung und Konfiguration

In dieser Aufgabe untersuchst du, wie deine Shell Befehle findet, wie Variablen und Umgebung zusammenhängen und wie einfache Shell-Einstellungen dauerhaft gemacht werden.

## 1. Wie werden typische Befehle aufgelöst?

In Übung 2 hast du `type` bereits genutzt, um passende Dokumentation für Builtins und externe Programme zu finden.
Jetzt schaust du genauer darauf, was die Shell eigentlich macht, wenn du einen Namen wie `cd`, `ls` oder `pwd` eingibst.
Kleiner Tipp: Die Befehle in diesem Abschnitt können mehrere Namen auf einmal prüfen.
Du musst sie also nicht für jeden Namen einzeln ausführen.

**1.1** Prüfe mit `type`, wie die Shell die Namen `cd`, `ls`, `pwd`, `cat`, `bash` und `type` einordnet.
Welche davon sind Shell-Builtins? Welche sind externe Programme?

**1.2** Nutze die Dokumentation von `type`, um die Bedeutung der `-a`-Option herauszufinden.
Probiere sie mit `pwd`, `echo` und mindestens zwei weiteren Befehlen aus. Was fällt bei `pwd` und `echo` auf?

**1.3** Prüfe `cd`, `pwd`, `cat`, `bash` und `type` mit `command -v`.
Welche dieser Namen werden als Pfad angezeigt?
Welche nicht?

**1.4** Prüfe `ls`, `bash`, `pwd` und `cd` mit `which`.
Bei welchen Namen erhältst du einen Programmpfad?
Bei welchen nicht?

**1.5** Prüfe die Namen aus **1.4** mit `whereis`.
Welche zusätzlichen Informationen erhältst du im Vergleich zu `which`?

**1.6** Erkläre kurz, warum `which cd` kein gutes Werkzeug ist, um zu verstehen, was beim Eingeben von `cd` wirklich passiert.
Welches Werkzeug würdest du stattdessen verwenden?

**1.7** Ordne die Werkzeuge kurz ein:
Welches Werkzeug nutzt du, wenn du wissen willst, wie die Shell einen Namen einordnet?
Welches Werkzeug nutzt du, wenn du nur den Pfad zu einem externen Programm suchst?
Welches Werkzeug nutzt du, wenn du typische Speicherorte zu einem Befehl sehen möchtest?

## 2. Variablen definieren, verwenden und exportieren

Variablen sind Namen für Werte, die deine Shell während einer Sitzung kennt.
In diesem Abschnitt legst du eigene Variablen an, änderst sie und nutzt sie in Befehlen.
Am Ende prüfst du außerdem, wann eine Variable nur in deiner aktuellen Shell existiert und wann sie Teil der Umgebung wird.

**2.1** Lege eine Variable `KURS_NAME` mit einem beliebigen Wert an.
Gib den Wert anschließend mit `echo` aus.

**2.2** Ändere den Wert von `KURS_NAME`.
Kontrolliere danach erneut die Ausgabe.

**2.3** Lege eine zweite Variable `KURS_DATEI` an.
Der Wert soll der absolute Pfad zu einer noch nicht vorhandenen Datei `shell-notiz.txt` in deinem Home-Verzeichnis sein.
Nutze `$HOME` als Teil des Pfads, anstatt ihn komplett auszuschreiben oder `~` zu verwenden.
Gib den Wert von `KURS_DATEI` anschließend zur Kontrolle aus.
Als Ausgabe sollte der vollständig aufgelöste absolute Pfad erscheinen: `/home/<dein-benutzername>/shell-notiz.txt`.

**2.4** Erstelle mit diesem Pfad eine nicht-leere Textdatei.
Tippe den Pfad dabei nicht direkt ein, sondern nutze die Variable `KURS_DATEI`.
Gib anschließend den Inhalt der Datei aus.

**2.5** Prüfe mit `printenv`, ob `KURS_NAME` in der Umgebung sichtbar ist.

**2.6** Exportiere `KURS_NAME` in die Umgebung.
Prüfe danach erneut mit `printenv`, ob die Variable sichtbar ist.

**2.7** Entferne `KURS_NAME` mit `unset`.
Prüfe anschließend mit `echo` und `printenv`, ob die Variable noch sichtbar ist.

## 3. Ein eigenes Programm über `PATH` verfügbar machen

Jetzt erstellst du ein kleines eigenes Programm.
Du machst es dann über die `PATH`-Umgebungsvariable ohne Pfadangabe ausführbar.
Anschließend machst du diese Änderung durch einen Eintrag in `~/.bashrc` dauerhaft.

**3.1** Erstelle das Verzeichnis `$HOME/shell-uebung/bin`.

**3.2** Erstelle darin die Datei `hallo-shell` mit folgendem Inhalt:

```bash
#!/usr/bin/env bash
echo "Hallo aus deinem eigenen Programm."
```

**3.3** Mache die Datei ausführbar:

```bash
chmod +x "$HOME/shell-uebung/bin/hallo-shell"
```

Die genaue Bedeutung von Dateiberechtigungen behandeln wir später.
Für diese Aufgabe reicht: Ohne diesen Schritt darf die Datei nicht wie ein Programm ausgeführt werden.

**3.4** Begib dich in das Verzeichnis `$HOME/shell-uebung/bin` und führe die Datei mit `./hallo-shell` aus.
Was wird ausgegeben?

**3.5** Versuche im selben Verzeichnis, `hallo-shell` ohne `./` auszuführen.
Was passiert?

**3.6** Die `PATH`-Umgebungsvariable bestimmt, welche Verzeichnisse nach ausführbaren Dateien durchsucht werden.
Lass dir ihren aktuellen Wert ausgeben.
Ist das Verzeichnis `/home/<dein-benutzername>/shell-uebung/bin` bereits enthalten?

**3.7** Starte mit `bash` eine neue Test-Shell.
Erweitere in dieser Test-Shell `PATH` so, dass `$HOME/shell-uebung/bin` zusätzlich durchsucht wird:

```bash
export PATH="$HOME/shell-uebung/bin:$PATH"
```

Bei `PATH`-Einträgen verwenden wir hier bewusst `$HOME` statt `~`.
`$HOME` wird auch innerhalb eines längeren Werts zuverlässig durch dein Home-Verzeichnis ersetzt.
`~` wird dagegen nur in bestimmten Positionen als Home-Verzeichnis interpretiert.
Wechsle anschließend in dein Home-Verzeichnis und führe `hallo-shell` ohne Pfadangabe aus.

**3.8** Beende die Test-Shell mit `exit`.
Teste erneut, ob `hallo-shell` gefunden wird.
Was sagt dir das über die Änderung aus **3.7**?

**3.9** Trage die `PATH`-Erweiterung als eigene Zeile in deine `~/.bashrc` ein, damit sie bei neuen interaktiven Bash-Shells automatisch gesetzt wird:

```bash
export PATH="$HOME/shell-uebung/bin:$PATH"
```

Starte danach mit `bash` eine neue Shell und teste erneut, ob `hallo-shell` gefunden wird.
Beende die neue Shell anschließend wieder mit `exit`.

**3.10** Entferne die Änderung an `PATH` wieder aus deiner `~/.bashrc`.
Kontrolliere, dass die Zeile aus **3.9** nicht mehr in der Datei steht.
Starte noch einmal eine neue Shell und kontrolliere, ob `hallo-shell` noch ohne Pfadangabe gefunden wird.
Beende die neue Shell danach wieder mit `exit`.

## 4. Aliases: Abkürzungen für die Shell

Ein Alias ist eine Abkürzung, die die Shell ersetzt, bevor sie einen Befehl ausführt.
Aliases sind vor allem für interaktive Shell-Arbeit nützlich: Sie sparen Tipparbeit, ändern aber nicht das eigentliche Programm.
In diesem Abschnitt erstellst du einen Alias zuerst nur in der aktuellen Shell und machst ihn danach mit `~/.bashrc` persistent.

**4.1** Lasse dir die aktuell gesetzten Aliases anzeigen.

**4.2** Lege einen Alias `ports` an, der `/etc/services` mit einem Pager öffnet.
Teste den Alias anschließend.

**4.3** Prüfe mit `type`, wie die Shell `ports` einordnet.

**4.4** Starte eine neue Shell mit `bash`.
Prüfe dort, ob `ports` noch bekannt ist.
Beende die neue Shell danach wieder mit `exit`.

**4.5** Entferne den Alias mit `unalias` aus deiner aktuellen Shell und prüfe, dass er nicht mehr bekannt ist.

**4.6** Trage den Alias `ports` in deine `~/.bashrc` ein. Ist er jetzt wieder bekannt?

**4.7** Starte eine neue Shell mit `bash`. Ist der Alias hier bekannt?

**4.8** Beende die neue Shell wieder mit `exit`. Ist der Alias jetzt in der ursprünglichen Shell bekannt?

**4.9** Lies `~/.bashrc` mit dem passenden Befehl neu ein und teste den Alias erneut.

**4.10** Entferne den Alias wieder aus deiner `~/.bashrc`.
Entferne den Alias zusätzlich mit `unalias` aus deiner aktuellen Shell.
Kontrolliere anschließend, dass `ports` nicht mehr bekannt ist.
