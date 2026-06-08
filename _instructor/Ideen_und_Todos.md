# Ideen und Todos

Dieses Dokument sammelt offene Ideen, mögliche spätere Themen und Dinge, die noch umgesetzt werden müssen.
Es ist bewusst lockerer als `Kursplanung.md`.

Nutze dieses Dokument, wenn eine Idee noch nicht konkret genug für eine Übungsplanung ist oder erst später umgesetzt werden soll.

## Verwendung

- Neue Einfälle kurz festhalten, bevor sie verloren gehen.
- Wenn möglich, grob zuordnen: `Übung 4`, `später`, `Infrastruktur`, `offen`.
- Beim Start einer neuen Übung passende Punkte aus diesem Dokument prüfen.
- Umgesetzte Punkte entweder entfernen oder mit kurzer Notiz als erledigt markieren.

## Offene Ideen

### Übung 4: Shell-Umgebung und Konfiguration

- Systematische Behandlung von Umgebungsvariablen und Konfigurationsdateien.
- Übergang von Übung 3 zu Übung 4 mit Kontext zu Terminal vs Shell, Shell als Prozess und Linux/GNU.
- Verschiedene Shells als praktisches Beispiel für den Unterschied zwischen Terminal und Shell nutzen.
- Unterschied zwischen Shell-Builtins und Programmen aufgreifen, z. B. mit `type`, `which` und ggf. `whereis`.
- Prüfen, ob eine echte, geführte Konfigurationsänderung mit klarem Rückweg sinnvoll ist, damit Konfigurationsdateien nicht künstlich mystifiziert werden.
- Mögliche Variablen: `PATH`, `HOME`, `USER`, `SHELL`, `EDITOR`, `VISUAL`, ggf. `PAGER`.
- Mögliche Dateien: `.bashrc`, `.profile`, `/etc/environment`, ggf. `/etc/profile`.

### Später: Textverarbeitung für Fortgeschrittene

- Voraussichtlich als spätere Übung, eventuell Übung 5.
- Themen: `grep`, Pipes und weitere Befehle zur fortgeschrittenen Textverarbeitung.
- Neben Logs können auch die Kursunterlagen selbst als Suchmaterial genutzt werden.
- Besonders `grep` eignet sich, um nach Stichwörtern in den Unterlagen zu suchen, die nicht im Dateinamen vorkommen.
- Dadurch lernen die Schüler direkt, wie sie die Kursmaterialien später selbst durchsuchen können.
- Spätere Anknüpfungspunkte: `/etc/passwd`, `/etc/group`, `apt search`, `ps`, `systemctl`, `journalctl`, SSH-Logs, Service-Konfigurationen und Service-Logs.

### Später: Prozesse und Jobs

- `tail -f` in einer Konsole mit `&` im Hintergrund starten.
- Mehrere `tail`-Prozesse auf dieselbe Datei starten und beobachten, dass neue Zeilen mehrfach ausgegeben werden.
- `jobs` nutzen, um Hintergrundprozesse der aktuellen Shell-Sitzung anzuzeigen.
- Prozess-IDs anzeigen lassen und die Prozesse anschließend mit `kill` beenden.

### Später: Nutzer, Gruppen und Berechtigungen

- Nutzermanagement und Gruppen systematisch behandeln.
- Berechtigungen erst nach Nutzer- und Gruppenkonzepten einführen oder eng damit verzahnen.
- Mögliche Themen: Eigentümer, Gruppe, andere, Lesen, Schreiben, Ausführen, `chmod`, `chown`, `chgrp`, ggf. symbolische und oktale Schreibweise.

### Später: Package Management

- Pakete installieren, aktualisieren, suchen und entfernen.
- Sinnvoll vor SSH, Netzwerkdiensten und konkreten Serverdiensten, weil viele spätere Aufgaben zusätzliche Pakete benötigen.
- Mögliche Werkzeuge: `apt`, `apt update`, `apt install`, `apt remove`, `apt search`, ggf. `systemctl` nur dort, wo installierte Dienste direkt betroffen sind.
- Filterung von `apt`-Ausgaben muss nicht schon hier Schwerpunkt sein; sie kann später bei Textverarbeitung und Pipes wieder aufgegriffen werden.

### Später: SSH und Remote-Arbeit

- SSH als Einstieg in realistischere Serveradministration behandeln.
- SSH kann früh als praktisches Werkzeug eingeführt werden, auch wenn Netzwerk, Dienste und Absicherung erst später systematisch behandelt werden.
- Mögliche Themen im ersten SSH-Block: lokal vs remote, SSH-Client vs SSH-Server, Verbindung zur VM, Host-Key-Meldung, Login mit bestehendem Nutzer, Remote-Befehle, mehrere Sitzungen, `who`, `w`, `tty`, `hostname`, `ip a`.
- Idee für `tail -f`: Zwei SSH-Sitzungen nebeneinander öffnen; in einer Sitzung Datei mit `tail -f` beobachten, in der anderen Datei bearbeiten und speichern.
- `scp` und `sftp` als mögliche Erweiterung prüfen; ggf. erst später behandeln.
- `sshd_config`, Public-Key-Authentifizierung und erste SSH-Härtung entweder als kurzer zweiter SSH-Block oder als spätere Vertiefung behandeln.

### Später: Skripte, Exit Codes und Cronjobs

- Einfache Shell-Skripte als Brücke zur Automatisierung einführen.
- Mögliche Themen: Shebang, Skript ausführbar machen, Exit Codes, `$?`, `&&`, `||`.
- Noch keine umfangreiche Behandlung von Schleifen oder Kontrollstrukturen nötig.
- Cronjobs sinnvoll nach einfachen Skripten behandeln, damit wiederkehrende Aufgaben nicht nur aus Einzelbefehlen bestehen.
- Offen lassen, ob Cronjobs als eigene kurze Übung oder gemeinsam mit einfachen Skripten behandelt werden.

### Später: systemd und Dienstverwaltung

- Dienste allgemein behandeln, bevor konkrete Serverdienste eingerichtet werden.
- Mögliche Themen: Dienststatus prüfen, Dienste starten, stoppen, neu laden, aktivieren und deaktivieren.
- Mögliche Befehle: `systemctl status`, `systemctl start`, `systemctl stop`, `systemctl reload`, `systemctl restart`, `systemctl enable`, `systemctl disable`.
- Logs und Dienstbeobachtung ggf. mit `journalctl` verbinden.

### Später: Netzwerk, Absicherung und Datenträger

- Netzwerkgrundlagen vor konkreten Netzwerkdiensten einordnen.
- Absicherung später systematisch behandeln: Firewall, SSH-Abhärtung, iptables bzw. moderne Alternativen und Network-Layer-Abhärtung.
- Disk- und Partitionsmanagement als eigenes Grundlagen- oder Administrationsmodul planen.

### Später: Serverdienste

- Konkrete Dienste erst nach den wichtigsten Grundlagen behandeln.
- Mögliche Dienste: DNS mit Bind, Mail mit Postfix und Dovecot, File-Server mit Samba, Webserver mit Nginx oder Apache, FTP mit vsftpd oder ProFTPD, WebDAV.

### Infrastruktur

- Schülerdistribution ist grundsätzlich geklärt: ZIP-Paket über GitHub Releases, erzeugt mit `_instructor/tools/create_student_package.sh`.
