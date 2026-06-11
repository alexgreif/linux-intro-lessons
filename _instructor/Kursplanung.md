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
| 5 | `sudo` und Package Management | Admin-Rechte praktisch nutzen, Paketlisten aktualisieren, Pakete installieren, aktualisieren und entfernen |
| 6 | SSH praktisch nutzen | per Passwort-Login auf die VM verbinden und SSH als Arbeitszugang verwenden |
| 7 | Nutzer, Gruppen und `sudo` | Benutzer- und Gruppenkonzepte für einfache Serveradministration einordnen |
| 8 | Dateiberechtigungen | Besitzer, Gruppe und Rechte lesen und einfache Rechteänderungen durchführen |
| 9 | Prozesse und Dienste | Prozesse anzeigen und beenden, Dienste mit `systemctl` auf Basisebene verwalten |
| 10 | Netzwerk-Basics in der Shell | IP-Adresse, Route, DNS und Erreichbarkeit mit einfachen Befehlen prüfen |
| 11 | Pipes, `grep` und `sort` | Ausgaben verbinden, filtern und sortieren, ohne viele Optionen zu vertiefen |

## Komprimierter Admin-Basisblock

Der ursprüngliche Grundlagenplan wurde nach Übung 4 komprimiert, weil die verfügbare Kurszeit knapper ist als geplant.
Die folgenden Übungen sollen bewusst kurz bleiben und nur den minimalen Unterbau schaffen, der für spätere konkrete Serverdienste nötig ist.

| Übung | Thema | Zuschnitt |
| --- | --- | --- |
| 5 | `sudo` und Package Management | `sudo`, `apt update`, `apt upgrade`, `apt install`, `apt remove`; keine Paketquellen- oder Repository-Vertiefung |
| 6 | SSH praktisch nutzen | Passwort-Login mit Standardeinstellungen, IP-Adresse finden, Host-Key-Meldung einordnen, mehrere Sitzungen nutzen |
| 7 | Nutzer, Gruppen und `sudo` | `whoami`, `id`, `groups`, `getent`, Testnutzer, Gruppenmitgliedschaft, `sudo`-Gruppe |
| 8 | Dateiberechtigungen | `ls -l`, `rwx`, Besitzer, Gruppe, andere, einfache `chmod`-, `chown`- und `chgrp`-Anwendungen |
| 9 | Prozesse und Dienste | wichtigste `ps`-Varianten, `kill`, `systemctl status/start/stop/restart/enable/disable` auf Basisebene |
| 10 | Netzwerk-Basics in der Shell | `ip a`, `ip route`, `ping`, DNS grob prüfen, ggf. offene Ports mit `ss` beobachten |
| 11 | Pipes, `grep` und `sort` | Pipe-Prinzip, einfache Filterung und Sortierung realer Ausgaben; optional `wc -l` |

Danach können konkrete Servicearten behandelt werden.
Die Services sollen bewusst nach diesem Minimalblock kommen, damit Installation, Konfiguration, Nutzer, Berechtigungen, Netzwerkdiagnose und Dienstverwaltung zumindest auf Einstiegsebene eingeordnet sind.

Mögliche Services:

- DNS-Server mit Bind
- Mail-Server mit Postfix, Dovecot und ggf. weiteren Komponenten
- File-Server mit Samba
- Webserver mit Nginx oder Apache
- FTP mit vsftpd oder ProFTPD
- WebDAV

## Zurückgestellte Themen

Folgende Themen werden im komprimierten Grundlagenblock nicht mehr als eigene Übungen behandelt:

- Skripte, Exit Codes, Befehlsverknüpfung und Cronjobs
- ausführliche Grundabsicherung
- Disk- und Partitionsmanagement
- tiefere SSH-Konfiguration, Public-Key-Authentifizierung und SSH-Härtung
- detaillierte Netzwerk- oder Routingkonfiguration
- umfangreiche Pipe- und Textverarbeitungsoptionen

Diese Themen können später bei konkreten Diensten, in einer Wiederholungsphase oder in Vertiefungsmaterialien aufgegriffen werden.

## Abgeschlossene Zuschnitte

### Übergang Von Übung 3 Zu Übung 4

Vor oder zu Beginn von Übung 4 sollten folgende Konzepte eingeordnet werden:

- Terminal vs Shell
- Shell als Prozess
- Linux/GNU-Kontext
- Standardströme als Grundlage für spätere Shell-Arbeit
- warum Konfigurationsdateien häufig Textdateien sind
- warum Umgebungsvariablen und Konfigurationsdateien zusammenhängen

### Zuschnitt Übung 3: Textverarbeitung im Terminal

Übung 3 fokussiert Textdateien, Textausgabe, Umleitungen und einfache Texteditoren.
Umgebungsvariablen und Konfigurationsdateien werden als systematische Hauptthemen in Übung 4 ausgelagert.

Konfigurationsdateien oder andere wichtige Textdateien können in Übung 3 trotzdem bereits vorkommen, aber nur als Textdateien mit Bedeutung.
Sie werden dort nicht als eigenes Konzeptthema systematisch erklärt.

Behandelte Inhalte:

- Textdateien im Terminal
- `cat`, `less`, `echo`
- Umleitungen wie `>`, `>>` und ggf. einfache Formen von `2>`
- einfache Textbearbeitung mit `nano`
- Einstieg in `vim` über `vimtutor`
- ggf. weitere einfache Textbefehle, wenn sie zur Lernkurve passen

### Zuschnitt Übung 4

Übung 4 behandelt:

- Terminal vs Shell
- Shell-Prozesse und Umgebung
- verschiedene Shells und der Unterschied zwischen Shell-Builtins und Programmen
- Umgebungsvariablen wie `PATH`, `HOME`, `USER`, `SHELL`, `EDITOR`, `VISUAL` und ggf. `PAGER`
- `printenv`, `env`, `export`, `unset`, `source`, `type`, `which` und ggf. `whereis`
- user-spezifische vs systemweite Konfiguration
- session-only vs persistent
- `.bashrc`, `.profile`, `/etc/environment` und ggf. `/etc/profile`
- eine echte, geführte Konfigurationsänderung mit Rückweg, damit Konfigurationsdateien nicht künstlich mystifiziert werden
