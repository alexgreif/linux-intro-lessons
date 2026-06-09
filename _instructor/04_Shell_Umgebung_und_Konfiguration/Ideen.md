# Übung 4: Shell-Umgebung und Konfiguration

## Zuschnitt

Übung 4 behandelt voraussichtlich Shell-Umgebung, Umgebungsvariablen und erste Konfigurationsdateien systematisch.
Der Fokus liegt nicht nur auf Variablen, sondern auch auf dem Unterschied zwischen Terminal und Shell, verschiedenen Shells sowie dem Unterschied zwischen Shell-Builtins und Programmen.

Leitfrage der Übung:

Wie entsteht die Arbeitsumgebung einer Shell, wie findet die Shell Befehle, und wie können einfache Einstellungen dauerhaft gemacht werden?

Der Umfang muss beim Ausarbeiten im Blick behalten werden.
Falls die Übung zu groß wird, kann sie später geteilt oder gekürzt werden.

## Scope

- Terminal vs Shell
- Shell als laufendes Programm
- verschiedene Shells als konkretes Beispiel
- Shell-Builtins vs externe Programme
- Aliases als Shell-spezifische Abkürzungen und als praktisches Beispiel für Shell-Konfiguration
- Programmsuche über `PATH`
- Umgebungsvariablen lesen, setzen, exportieren und entfernen
- session-only vs persistent
- user-spezifische Konfiguration über `.bashrc` und ggf. `.profile`
- `source`, um Konfigurationsänderungen neu einzulesen
- wichtige Variablen: `PATH`, `HOME`, `USER`, `SHELL`, `EDITOR`, `VISUAL`, ggf. `PAGER`

## Out of Scope

- tiefe Bash-Programmierung
- Prozessmanagement über die Einordnung der Shell als Prozess hinaus
- systemweite Konfiguration ausführlich bearbeiten
- `/etc/profile` und `/etc/environment` tief behandeln oder verändern
- Default-Shell ändern als Pflichtaufgabe, sofern kein klarer Rückweg eingebaut wird; trotzdem prüfen, ob Schüler herausfinden oder sehen sollen, wo und wie die Default-Shell festgelegt wird

## Kontext Vor Der Übung

Terminal vs Shell
Shell als Prozess
Linux/GNU-Kontext
Zusammenhang zwischen Textdateien, Konfigurationsdateien und Umgebungsvariablen
Standardströme als Grundlage für spätere Shell-Arbeit

## Themen

Verschiedene Shells als praktisches Beispiel für Terminal vs Shell.
Shell-Builtins vs Programme.
Aliases anzeigen, temporär setzen und ggf. dauerhaft in `.bashrc` eintragen.
Idee für `PATH`: kleines, komplett angeleitetes Skript erstellen, zunächst mit `./skriptname` ausführen, dann von anderem Verzeichnis aus scheitern lassen, Verzeichnis temporär zu `PATH` hinzufügen, nach neuer Shell den Verlust beobachten, Änderung dauerhaft machen und später wieder rückgängig machen.
Default-Shell bzw. Standardprogramme als mögliche echte, geführte Konfigurationsänderung mit Rückweg.
Default-Texteditor einstellen: systemweit vs user-spezifisch.
Nur für die aktuelle Session oder persistent?
Environment Variables: alle anzeigen lassen (`printenv`), einzelne ausgeben lassen, wichtige Variablen untersuchen, Variablen definieren.
Aufgabenidee zur Umgebung: Ein gewünschtes Programmverhalten über eine Variable steuern; zuerst nur Shell-Variable setzen und beobachten, dass das gestartete Programm sie nicht nutzt, danach exportieren und den Unterschied sehen.
Config files: Beispiel `.bashrc`.
Was sind config files?
Wo liegen sie?
Systemweit vs user-spezifisch.
Welche Konfigurationsdateien sind besonders wichtig?

## Mögliche Befehle

printenv
env
export
unset
source
alias
unalias
type
which
whereis
command -v

## Mögliche Variablen

PATH
HOME
USER
SHELL
EDITOR
VISUAL
PAGER

## Mögliche Dateien

.bashrc
.profile
/etc/environment
/etc/profile

## Aufgaben-Skelett

### 1. Befehlsauflösung untersuchen

- Rückbezug zu Übung 2: `type` wurde dort genutzt, um passende Dokumentation für Builtins und externe Programme zu finden.
- Jetzt genauer untersuchen, wie die Shell Namen auflöst.
- Nicht nur stumpf `type` wiederholen, sondern interessante Unterschiede erzeugen:
  - Builtin vs externes Programm, z. B. `cd`, `ls`, `pwd`, `echo`
  - `type`, `type -a`, `which`, `whereis`, `command -v` vergleichen
  - herausarbeiten, welches Werkzeug die Sicht der Shell am besten zeigt
- Erwartete Erkenntnis: Nicht jeder eingegebene Name ist ein externes Programm im Dateisystem.

### 2. Variablen und Umgebung experimentell untersuchen

- Eigene neutrale Variable verwenden, damit keine bestehenden Systemvariablen überschrieben werden.
- Variablen definieren, ausgeben, überschreiben und ggf. aus anderen Variablen zusammensetzen.
- Variablen als Argumente an bekannte Befehle übergeben.
- Untersuchen, ob eine Variable in einer neu gestarteten Shell bzw. einem gestarteten Programm sichtbar ist.
- Danach exportieren und den Unterschied beobachten.
- Mit `unset` entfernen.
- Erwartete Erkenntnis: Shell-Variablen sind nicht automatisch Umgebungsvariablen; `export` steuert die Weitergabe.

### 3. Eigenes Kommando über `PATH` verfügbar machen

- Kleines, komplett angeleitetes Skript erstellen.
- Zuerst im Verzeichnis mit `./skriptname` ausführen.
- Von einem anderen Verzeichnis aus nur mit dem Namen ausführen und scheitern lassen.
- `PATH` untersuchen und temporär um das Skriptverzeichnis erweitern.
- Ausführung erneut testen.
- Neue Shell starten und beobachten, dass die Änderung weg ist.
- Änderung persistent machen, z. B. in `~/.bashrc` oder `~/.profile`.
- Wirkung testen und Änderung am Ende wieder entfernen.
- Erwartete Erkenntnis: `PATH` ist eine konkrete Anwendung von Variablen und Konfiguration.

### 4. Aliases als Shell-Konfiguration

- Vorhandene Aliases anzeigen.
- Alias temporär setzen.
- Mit `type` untersuchen.
- Neue Shell starten und beobachten, dass der Alias weg ist.
- Alias in `~/.bashrc` eintragen und mit `source ~/.bashrc` neu einlesen.
- Wirkung testen und Änderung am Ende wieder entfernen oder bewusst behalten.
- Erwartete Erkenntnis: Konfigurationsdateien machen eigene Shell-Anpassungen dauerhaft.

### Gestrichen: Konfigurationsdateien und manpages einordnen

Eine lesende Einordnungsaufgabe zu `~/.bashrc`, `~/.profile`, `/etc/profile`, `/etc/environment`, `/etc/passwd` und Datei-manpages wurde verworfen.
Die Übung endet dadurch fokussierter nach Aliases und `~/.bashrc`.
Die Dateiübersicht bleibt in der Kurzreferenz als Nachschlagewissen erhalten; eine aktivere Aufgabe zu manpage-Sections oder Konfigurationsdateien kann später wieder aufgegriffen werden.
