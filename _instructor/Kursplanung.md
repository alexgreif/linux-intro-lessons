# Kursplanung

Dieses Dokument sammelt den groben thematischen Verlauf des Kurses.
Es ist ein Planungsdokument für die Lehrkraft und darf sich ändern, wenn sich beim Erstellen der Übungen bessere Zuschnitte ergeben.

## Gesamtfluss

| Übung | Arbeitstitel | Schwerpunkt |
| --- | --- | --- |
| 1 | Dateimanagement | Dateisystem erkunden, Dateien und Verzeichnisse bearbeiten, Symlinks und Dotfiles einordnen |
| 2 | Befehlssyntax und Dokumentation | Optionen, Flags, manpages, `du`, `stat`, `find` vertiefen |
| 3 | Textverarbeitung im Terminal | Textdateien lesen, ausgeben, umleiten und mit einfachen Editoren bearbeiten |
| 4 | Shell-Umgebung und Konfiguration | Shell vs Terminal, Umgebungsvariablen, Konfigurationsdateien |

## Vorläufige Weiterplanung

Die folgende Reihenfolge ist noch nicht endgültig.
Sie dient als Arbeitsstand, damit neue Übungen nicht nur isoliert geplant werden, sondern in einen sinnvollen Kursfluss passen.

| Phase | Mögliche Themen | Begründung |
| --- | --- | --- |
| 4 | Shell-Umgebung, Variablen und erste Konfigurationsdateien | knüpft direkt an Textdateien, Umleitungen und Shell-Arbeit aus Übung 3 an |
| 5 | Package Management | `apt` ist ein praktisches, anschauliches Admin-Thema und wird für spätere Werkzeuge und Dienste gebraucht |
| 6 | SSH als praktisches Werkzeug | SSH soll früh als Arbeitswerkzeug genutzt werden; tiefere Konzepte wie Dienste, Netzwerk und Absicherung können später eingeordnet werden |
| 7 | Erweiterte Textverarbeitung und Pipes | `grep`, `wc`, `sort`, `uniq` und Pipes sind zentrale Werkzeuge für spätere Diagnose- und Admin-Aufgaben |
| 8 | Prozessmanagement | Shell als Prozess, laufende Befehle, `ps`, `kill`, `&`, `jobs`, `bg`, `fg` passen gut nach Shell- und Pipe-Grundlagen |
| 9 | Nutzer, Gruppen und Berechtigungen | Nutzer- und Gruppenkonzepte sind Grundlage für Dateiberechtigungen, `sudo`-Verständnis und spätere Dienste; ggf. in zwei Übungen aufteilen |
| 10 | Skripte, Exit Codes und Befehlsverknüpfung | einfache Skripte, Rückgabewerte, `&&` und `||` bereiten Automatisierung und Cronjobs vor |
| 11 | Cronjobs | wiederkehrende Aufgaben werden sinnvoller, wenn einfache Skripte bereits bekannt sind |
| 12 | systemd und Dienstverwaltung | Dienste starten, stoppen, prüfen und einordnen, bevor konkrete Serverdienste eingerichtet werden |
| 13 | Netzwerkgrundlagen | sollte vor konkreten Netzwerkdiensten systematisch eingeordnet werden |
| 14 | Grundabsicherung | Firewall, SSH-Abhärtung und grundlegende Netzwerkabsicherung vor produktnäheren Diensten |
| offen | Disk- und Partitionsmanagement | wichtiges Admin-Thema; kann vor den Services oder als eigener Block später sinnvoll sein |

Danach können konkrete Servicearten behandelt werden.
Die Services sollen bewusst nach den Grundlagen kommen, damit Installation, Konfiguration, Nutzer, Berechtigungen, Netzwerk und Absicherung bereits eingeordnet sind.

Mögliche Services:

- DNS-Server mit Bind
- Mail-Server mit Postfix, Dovecot und ggf. weiteren Komponenten
- File-Server mit Samba
- Webserver mit Nginx oder Apache
- FTP mit vsftpd oder ProFTPD
- WebDAV

## Übergang Von Übung 3 Zu Übung 4

Vor oder zu Beginn von Übung 4 sollten folgende Konzepte eingeordnet werden:

- Terminal vs Shell
- Shell als Prozess
- Linux/GNU-Kontext
- Standardströme als Grundlage für spätere Shell-Arbeit
- warum Konfigurationsdateien häufig Textdateien sind
- warum Umgebungsvariablen und Konfigurationsdateien zusammenhängen

## Zuschnitt Übung 3: Textverarbeitung im Terminal

Übung 3 fokussiert Textdateien, Textausgabe, Umleitungen und einfache Texteditoren.
Umgebungsvariablen und Konfigurationsdateien werden als systematische Hauptthemen in Übung 4 ausgelagert.

Konfigurationsdateien oder andere wichtige Textdateien können in Übung 3 trotzdem bereits vorkommen, aber nur als Textdateien mit Bedeutung.
Sie werden dort nicht als eigenes Konzeptthema systematisch erklärt.

Voraussichtliche Inhalte:

- Textdateien im Terminal
- `cat`, `less`, `echo`
- Umleitungen wie `>`, `>>` und ggf. einfache Formen von `2>`
- einfache Textbearbeitung mit `nano`
- Einstieg in `vim` über `vimtutor`
- ggf. weitere einfache Textbefehle, wenn sie zur Lernkurve passen

## Zuschnitt Übung 4

Übung 4 behandelt voraussichtlich:

- Terminal vs Shell
- Shell-Prozesse und Umgebung
- verschiedene Shells und der Unterschied zwischen Shell-Builtins und Programmen
- Umgebungsvariablen wie `PATH`, `HOME`, `USER`, `SHELL`, `EDITOR`, `VISUAL` und ggf. `PAGER`
- `printenv`, `env`, `export`, `unset`, `source`, `type`, `which` und ggf. `whereis`
- user-spezifische vs systemweite Konfiguration
- session-only vs persistent
- `.bashrc`, `.profile`, `/etc/environment` und ggf. `/etc/profile`
- ggf. eine echte, aber geführte Konfigurationsänderung mit Rückweg, damit Konfigurationsdateien nicht künstlich mystifiziert werden
