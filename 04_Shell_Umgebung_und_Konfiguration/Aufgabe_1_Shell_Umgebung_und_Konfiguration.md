# Aufgabe 1: Shell-Umgebung und Konfiguration

In dieser Aufgabe untersuchst du, wie deine Shell Befehle findet, wie Variablen und Umgebung zusammenhängen und wie einfache Shell-Einstellungen dauerhaft gemacht werden.

## 1. Befehlsauflösung untersuchen

In Übung 2 hast du `type` bereits genutzt, um passende Dokumentation für Builtins und externe Programme zu finden.
Jetzt schaust du genauer darauf, was die Shell eigentlich macht, wenn du einen Namen wie `cd`, `ls` oder `pwd` eingibst.

**1.1** Prüfe mit `type`, wie die Shell die Namen `cd`, `ls`, `pwd`, `echo` und `type` einordnet.
Welche davon sind Shell-Builtins? Welche sind externe Programme?

**1.2** Prüfe dieselben Namen zusätzlich mit `command -v`.
Vergleiche die Ausgaben mit denen aus **1.1**.

**1.3** Prüfe `pwd` und `echo` mit `type -a`.
Was fällt dir im Vergleich zu `type pwd` und `type echo` auf?

**1.4** Prüfe `ls`, `bash` und `type` mit `which` und `whereis`.
Welche Informationen erhältst du jeweils?
Welche der beiden Hilfen zeigt eher den tatsächlich ausgeführten Programmpfad?
Welche zeigt eher typische Speicherorte?

**1.5** Erkläre kurz, warum `which cd` kein so gutes Werkzeug ist, um zu verstehen, was beim Eingeben von `cd` wirklich passiert.

## 2. Variablen und Umgebung experimentell untersuchen

In diesem Abschnitt arbeitest du mit eigenen Variablen.
Dadurch kannst du gefahrlos ausprobieren, wann eine Variable nur in deiner aktuellen Shell sichtbar ist und wann gestartete Programme sie ebenfalls sehen können.

**2.1** Lege eine Variable `KURS_NAME` mit einem beliebigen Wert an.
Gib den Wert anschließend mit `echo` aus.

**2.2** Ändere den Wert von `KURS_NAME`.
Kontrolliere danach erneut die Ausgabe.

**2.3** Lege eine zweite Variable `KURS_DATEI` an.
Der Wert soll einen Pfad in deinem Home-Verzeichnis enthalten, zum Beispiel zu einer Datei `shell-notiz.txt`.
Nutze dabei `$HOME`, statt dein Home-Verzeichnis direkt auszuschreiben.
Erstelle anschließend mit diesem Variablennamen eine nicht-leere Textdatei.

**2.4** Gib den Inhalt der Datei aus, ohne den Pfad direkt einzutippen.
Nutze stattdessen die Variable aus **2.3**.

**2.5** Prüfe mit `printenv`, ob `KURS_NAME` in der Umgebung sichtbar ist.
Was wird ausgegeben?

**2.6** Exportiere `KURS_NAME` in die Umgebung.
Prüfe danach erneut mit `printenv`, ob die Variable sichtbar ist.

**2.7** Entferne `KURS_NAME` mit `unset`.
Prüfe anschließend mit `echo` und `printenv`, ob die Variable noch sichtbar ist.

**2.8** Erkläre kurz den Unterschied zwischen einer Shell-Variable und einer Umgebungsvariable.

## 3. Ein eigenes Kommando über `PATH` verfügbar machen

Jetzt erstellst du ein kleines eigenes Kommando.
Dabei geht es noch nicht um Shell-Skripte als eigenes Thema, sondern um die Frage, wo die Shell nach ausführbaren Programmen sucht.

**3.1** Erstelle das Verzeichnis `~/shell-uebung/bin`.

**3.2** Erstelle darin die Datei `hallo-shell` mit folgendem Inhalt:

```bash
#!/usr/bin/env bash
echo "Hallo aus deinem eigenen Kommando."
```

**3.3** Mache die Datei ausführbar:

```bash
chmod +x ~/shell-uebung/bin/hallo-shell
```

Die genaue Bedeutung von Dateiberechtigungen behandeln wir später.
Für diese Aufgabe reicht: Ohne diesen Schritt darf die Datei nicht wie ein Programm ausgeführt werden.

**3.4** Begib dich in das Verzeichnis `~/shell-uebung/bin` und führe dein Kommando mit `./hallo-shell` aus.
Warum reicht hier nicht einfach `hallo-shell`?

**3.5** Begib dich zurück in dein Home-Verzeichnis und versuche erneut, `hallo-shell` auszuführen.
Was passiert?

**3.6** Untersuche den aktuellen Wert von `PATH`.
Ist `~/shell-uebung/bin` bereits enthalten?

**3.7** Starte mit `bash` eine neue Test-Shell.
Erweitere in dieser Test-Shell `PATH` so, dass `~/shell-uebung/bin` zusätzlich durchsucht wird.
Nutze dabei den bisherigen Wert von `PATH`, damit die vorhandenen Suchpfade erhalten bleiben.
Führe anschließend `hallo-shell` von deinem Home-Verzeichnis aus.

**3.8** Beende die Test-Shell mit `exit`.
Teste erneut, ob `hallo-shell` gefunden wird.
Was sagt dir das über die Änderung aus **3.7**?

**3.9** Trage die `PATH`-Erweiterung in deine `~/.bashrc` ein.
Starte danach mit `bash` eine neue Shell und teste erneut, ob `hallo-shell` gefunden wird.
Beende die neue Shell anschließend wieder mit `exit`.

**3.10** Entferne die Änderung an `PATH` wieder aus deiner `~/.bashrc`.
Starte noch einmal eine neue Shell und kontrolliere, ob `hallo-shell` noch als normales Kommando gefunden wird.
Beende die neue Shell danach wieder mit `exit`.

## 4. Aliases als Shell-Konfiguration

Aliases sind kleine Abkürzungen, die die Shell vor dem Ausführen eines Befehls ersetzt.
In diesem Abschnitt erstellst du einen Alias zuerst nur temporär und machst ihn danach kurzzeitig persistent.

**4.1** Lasse dir die aktuell gesetzten Aliases anzeigen.

**4.2** Lege einen Alias `ports` an, der `/etc/services` mit einem Pager öffnet.
Teste den Alias anschließend.

**4.3** Prüfe mit `type`, wie die Shell `ports` einordnet.

**4.4** Starte eine neue Shell mit `bash`.
Prüfe dort, ob `ports` noch bekannt ist.
Beende die neue Shell danach wieder mit `exit`.

**4.5** Trage den Alias `ports` in deine `~/.bashrc` ein.
Lies die Datei mit `source ~/.bashrc` neu ein und teste den Alias erneut.

**4.6** Entferne den Alias wieder aus deiner `~/.bashrc`.
Lies die Datei erneut ein und entferne den Alias bei Bedarf zusätzlich mit `unalias`.
Kontrolliere anschließend mit `type`, ob `ports` noch bekannt ist.

**4.7** Erkläre kurz, warum `~/.bashrc` für solche interaktiven Shell-Anpassungen gut geeignet ist.

## 5. Konfigurationsdateien und manpages einordnen

Zum Schluss untersuchst du einige Konfigurationsdateien lesend.
Dabei geht es nicht darum, jede Zeile vollständig zu verstehen.
Du sollst erkennen, welche Dateien eher zu deinem Benutzer gehören, welche systemweit sind und welche Form diese Dateien haben.

**5.1** Schaue dir `~/.bashrc`, `~/.profile`, `/etc/profile`, `/etc/environment` und `/etc/passwd` kurz an.
Welche Dateien liegen in deinem Home-Verzeichnis? Welche liegen unter `/etc`?

**5.2** Welche der Dateien sehen aus wie Shell-Skripte?
Woran erkennst du das?

**5.3** Welche Datei enthält einfache Einträge der Form `NAME=Wert`?
Welche Variablen erkennst du dort?

**5.4** Finde in `/etc/passwd` die Zeile zu deinem Benutzer.
Welches Home-Verzeichnis und welche Login-Shell sind dort eingetragen?

**5.5** Öffne die manpage zur Datei `/etc/passwd`.
Nutze bei Bedarf `man man`, um herauszufinden, wie du die passende Section der manpages öffnest.
Welche Informationen liefert diese manpage, die du mit `man passwd` nicht bekommst?

**5.6** Entscheide für die folgenden Änderungen, welche Datei aus dieser Aufgabe am besten passen würde.
Begründe jeweils kurz.

- Du möchtest einen Alias nur für deinen Benutzer dauerhaft setzen.
- Du möchtest den `PATH` nur für deinen Benutzer dauerhaft erweitern.
- Du möchtest nachschlagen, welche Login-Shell für deinen Benutzer eingetragen ist.
- Du möchtest eine systemweite Umgebungsvariable untersuchen.
