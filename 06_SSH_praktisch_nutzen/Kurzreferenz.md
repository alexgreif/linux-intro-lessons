# Kurzreferenz: SSH praktisch nutzen

Mit SSH kannst du dich über das Netzwerk mit einem Linux-Server verbinden und dort eine Shell öffnen.
Du arbeitest dann nicht direkt an der Server-Konsole, sondern in einer Remote-Shell-Sitzung.
Für diese Übung verwendest du SSH mit Passwort-Login und Standardeinstellungen.

## Inhalt

- [Befehle](#befehle)
- [Eine SSH-Verbindung herstellen](#eine-ssh-verbindung-herstellen)
- [Was ist ein Host Key?](#was-ist-ein-host-key)
- [Orientierung in der SSH-Sitzung](#orientierung-in-der-ssh-sitzung)

## Befehle

| Befehl | Beschreibung | Beispiel |
| ------ | ------------ | -------- |
| `ip a` | Zeigt IP-Adressen und Netzwerkinterfaces an. | `ip a` |
| `ssh` | Stellt eine SSH-Verbindung zu einem entfernten System her. | `ssh benutzer@192.168.1.50` |
| `hostname` | Zeigt den Hostnamen des Systems an. | `hostname` |
| `whoami` | Zeigt den aktuellen Benutzernamen an. | `whoami` |
| `tty` | Zeigt den Terminalnamen der aktuellen Sitzung an. | `tty` |
| `who` | Zeigt angemeldete Benutzer und ihre Sitzungen an, wenn diese als Login-Sitzungen erfasst sind. | `who` |
| `w` | Zeigt eine Systemübersicht sowie angemeldete Benutzer, Sitzungen und aktuell ausgeführte Befehle an. | `w` |
| `exit` | Beendet die aktuelle Shell-Sitzung. | `exit` |

## Eine SSH-Verbindung herstellen

SSH steht für *Secure Shell*.
Eine SSH-Verbindung öffnet eine Shell-Sitzung auf einem entfernten System.
Dafür brauchst du normalerweise:

- den Benutzernamen auf dem entfernten System
- die IP-Adresse oder den Hostnamen des entfernten Systems
- das Passwort dieses Benutzers

Die grundlegende Form ist:

```bash
ssh benutzer@adresse
```

Beispiel:

```bash
ssh alex@192.168.1.50
```

Nach erfolgreicher Anmeldung beziehen sich Befehle wie `hostname`, `whoami` oder `pwd` auf das entfernte System.

## Was ist ein Host Key?

Beim ersten Verbindungsaufbau zeigt SSH normalerweise eine Meldung zum **Host Key** des entfernten Systems.
Damit kann dein SSH-Client den Server bei späteren Verbindungen wiedererkennen.
Das schützt davor, unbemerkt mit einem anderen System verbunden zu werden als erwartet.

In dieser Übung reicht die Grundidee:

- Beim ersten Verbindungsaufbau bestätigst du die Verbindung meist mit `yes`.
- Danach speichert dein System den Host Key dieses Servers.
- Wenn später eine deutliche Warnung zum Host Key erscheint, solltest du nicht einfach blind bestätigen.

## Orientierung in der SSH-Sitzung

Wenn du mehrere SSH-Verbindungen öffnest, laufen auf dem Server mehrere Shell-Sitzungen gleichzeitig.
Mit den Befehlen aus der [Befehlstabelle](#befehle) kannst du dich in diesen Sitzungen orientieren.
