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
- Umgebungsvariablen wie `PATH`, `HOME`, `USER`, `SHELL`, `EDITOR`, `VISUAL` und ggf. `PAGER`
- `printenv`, `env`, `export`, `unset`, `source`
- user-spezifische vs systemweite Konfiguration
- session-only vs persistent
- `.bashrc`, `.profile`, `/etc/environment` und ggf. `/etc/profile`
