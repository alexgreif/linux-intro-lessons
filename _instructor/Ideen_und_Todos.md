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

### Komprimierter Admin-Basisblock

- Übungen 5 bis 11 sollen deutlich kürzer bleiben als die ersten Grundlagenübungen.
- Wichtigste Reihenfolge: zuerst `sudo` und Package Management, danach SSH, Nutzer/Gruppen/`sudo`, Berechtigungen, Prozesse/Dienste, Netzwerk-Basics und einfache Pipe-Werkzeuge.
- Für neue Übungen jeweils prüfen, ob ein einzelnes Aufgabenblatt reicht.
- Labs nur einsetzen, wenn echte Schreib- oder Löschoperationen sonst zu riskant oder zu künstlich wären.
- Root-`README.md` bei neuen Übungen mitführen, sobald die Übungsverzeichnisse angelegt werden.

### Übung 5: `sudo` und Package Management

- `sudo` als praktisches Admin-Werkzeug einführen, ohne sudoers im Detail zu behandeln.
- `apt update`, `apt upgrade`, `apt install` und `apt remove` auf das notwendige Minimum reduzieren.
- Paketquellen, Repositories, PPAs, Signaturen und Pinning nicht vertiefen.
- Geeignetes Beispielpaket wählen, das gefahrlos installiert und entfernt werden kann.

### Übung 6: SSH praktisch nutzen

- SSH per Passwort-Login mit Standardeinstellungen nutzen.
- IP-Adresse der VM finden und Verbindung vom Hostsystem oder einer zweiten Maschine herstellen.
- Host-Key-Meldung nur auf Überblicksebene einordnen.
- Mehrere Sitzungen nutzen und mit `who`, `w`, `tty`, `hostname` oder ähnlichen Befehlen beobachten.
- Public-Key-Authentifizierung, `sshd_config`, Portwechsel und Härtung verschieben.

### Übung 7: Nutzer, Gruppen und `sudo`

- Wichtigste Inhalte für einfache Serveradministration: aktueller Nutzer, Gruppen, Testnutzer, Gruppenmitgliedschaften.
- Mögliche Befehle: `whoami`, `id`, `groups`, `getent passwd`, `getent group`, `sudo adduser`, `sudo usermod -aG`, `sudo deluser`.
- Vorsichtig planen, damit Schüler nicht versehentlich ihren Hauptnutzer aus wichtigen Gruppen entfernen.
- `sudo`-Gruppe als praktisches Konzept einordnen.

### Übung 8: Dateiberechtigungen

- `ls -l` lesen, Besitzer, Gruppe und andere unterscheiden.
- `r`, `w` und `x` für Dateien und Verzeichnisse auf Einstiegsebene erklären.
- Einfache symbolische Rechteänderungen mit `chmod` üben.
- `chown` und `chgrp` nur so weit behandeln, wie es für spätere Dienste nötig ist.
- Oktale Rechte höchstens kurz zeigen, aber nicht zum Schwerpunkt machen.

### Übung 9: Prozesse und Dienste

- `ps` mit den wichtigsten Flags, Prozess-ID und `kill`.
- `systemctl status`, `start`, `stop`, `restart`, `enable` und `disable` nur auf Basisebene.
- Wenn möglich an einem konkreten Dienst arbeiten, ohne SSH-Verbindungen versehentlich abzuschneiden.
- `journalctl` höchstens kurz zeigen oder für spätere Dienste aufheben.

### Übung 10: Netzwerk-Basics in der Shell

- IP-Adresse, Interface, Default Route und DNS grob prüfen.
- Mögliche Befehle: `ip a`, `ip route`, `ping`, `resolvectl status`, ggf. `ss -tulpn`.
- Keine Subnetting-Vertiefung und keine dauerhafte Netplan-Konfiguration.

### Übung 11: Pipes, `grep` und `sort`

- Pipe-Prinzip an echten Admin-Ausgaben zeigen.
- `grep` und `sort` ohne viele Optionen verwenden.
- Optional `wc -l`, wenn es sich aus einer Aufgabe natürlich ergibt.
- Mögliche Anknüpfungspunkte: `apt list --installed`, `getent passwd`, `ps`, `systemctl`.

### Später: Textverarbeitung für Fortgeschrittene

- Voraussichtlich keine eigene Grundlagenübung mehr vor den Services.
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

### Später: SSH und Remote-Arbeit

- SSH wird im komprimierten Block zunächst als Übung 6 praktisch behandelt.
- SSH als Einstieg in realistischere Serveradministration behandeln.
- SSH kann früh als praktisches Werkzeug eingeführt werden, auch wenn Netzwerk, Dienste und Absicherung erst später systematisch behandelt werden.
- Mögliche Themen im ersten SSH-Block: lokal vs remote, SSH-Client vs SSH-Server, Verbindung zur VM, Host-Key-Meldung, Login mit bestehendem Nutzer, Remote-Befehle, mehrere Sitzungen, `who`, `w`, `tty`, `hostname`, `ip a`.
- Idee für `tail -f`: Zwei SSH-Sitzungen nebeneinander öffnen; in einer Sitzung Datei mit `tail -f` beobachten, in der anderen Datei bearbeiten und speichern.
- `scp` und `sftp` als mögliche Erweiterung prüfen; ggf. erst später behandeln.
- `sshd_config`, Public-Key-Authentifizierung und erste SSH-Härtung entweder als kurzer zweiter SSH-Block oder als spätere Vertiefung behandeln.

### Später: Skripte, Exit Codes und Cronjobs

- Im komprimierten Kursverlauf vorerst übersprungen.
- Einfache Shell-Skripte als Brücke zur Automatisierung einführen.
- Mögliche Themen: Shebang, Skript ausführbar machen, Exit Codes, `$?`, `&&`, `||`.
- Noch keine umfangreiche Behandlung von Schleifen oder Kontrollstrukturen nötig.
- Cronjobs sinnvoll nach einfachen Skripten behandeln, damit wiederkehrende Aufgaben nicht nur aus Einzelbefehlen bestehen.
- Offen lassen, ob Cronjobs als eigene kurze Übung oder gemeinsam mit einfachen Skripten behandelt werden.

### Später: systemd und Dienstverwaltung

- systemd wird im komprimierten Block zunächst als Übung 9 auf Basisebene behandelt.
- Dienste allgemein behandeln, bevor konkrete Serverdienste eingerichtet werden.
- Mögliche Themen: Dienststatus prüfen, Dienste starten, stoppen, neu laden, aktivieren und deaktivieren.
- Mögliche Befehle: `systemctl status`, `systemctl start`, `systemctl stop`, `systemctl reload`, `systemctl restart`, `systemctl enable`, `systemctl disable`.
- Logs und Dienstbeobachtung ggf. mit `journalctl` verbinden.

### Später: Netzwerk, Absicherung und Datenträger

- Netzwerkgrundlagen werden im komprimierten Block nur als Diagnose-Basics behandelt.
- Absicherung vorerst überspringen oder bei SSH und `sudo` nur minimal als Vorsichtshinweis einordnen.
- Disk- und Partitionsmanagement vorerst überspringen; ggf. nur `df -h` als Diagnosebefehl bei konkreten Diensten zeigen.

### Später: Serverdienste

- Konkrete Dienste erst nach den wichtigsten Grundlagen behandeln.
- Mögliche Dienste: DNS mit Bind, Mail mit Postfix und Dovecot, File-Server mit Samba, Webserver mit Nginx oder Apache, FTP mit vsftpd oder ProFTPD, WebDAV.

### Infrastruktur

- Schülerdistribution ist grundsätzlich geklärt: ZIP-Paket über GitHub Releases, erzeugt mit `_instructor/tools/create_student_package.sh`.
