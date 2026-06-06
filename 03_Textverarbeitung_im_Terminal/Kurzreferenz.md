# Kurzreferenz: Textverarbeitung im Terminal

Viele wichtige Dateien auf Linux-Systemen, zum Beispiel Konfigurationsdateien oder Logdateien, sind Textdateien.
Viele Terminalbefehle erzeugen außerdem Textausgaben.
Deshalb ist ein sicherer Umgang mit Textdateien im Terminal eine wichtige Grundlage für die Arbeit mit Linux-Systemen.

## Inhalt

- [Befehle](#befehle)
- [Umleitungen](#umleitungen)
- [Standardströme](#standardströme)
- [Textausgabe im Terminal](#textausgabe-im-terminal): Befehle und Pager (`less`)
- [Text bearbeiten mit Texteditoren](#text-bearbeiten-mit-texteditoren): `nano` und `vim`

## Befehle

### Text anzeigen und ausgeben

| Befehl | Ausgeschrieben | Beschreibung | Beispiel |
| ------ | -------------- | ------------ | -------- |
| `echo` | echo | Gibt Text aus. | `echo "Hallo"` |
| `cat` | concatenate | Gibt den Inhalt von Dateien aus oder liest Text aus `stdin`. | `cat datei.txt` |
| `less` | less | Zeigt Textdateien oder längere Ausgaben seitenweise an. | `less datei.txt` |
| `head` | head | Gibt den Anfang einer Datei aus. | `head datei.txt` |
| `tail` | tail | Gibt das Ende einer Datei aus. | `tail datei.txt` |

### Text bearbeiten

| Befehl | Beschreibung | Beispiel |
| ------ | ------------ | -------- |
| `nano` | Öffnet einen einfachen Terminaleditor. | `nano datei.txt` |
| `vim` | Öffnet den Editor Vim. | `vim datei.txt` |

## Umleitungen

Eine **Umleitung** (*redirection*) verändert, wohin Ausgaben (`stdout`) oder Fehlermeldungen (`stderr`) eines Befehls gehen oder woher er seine Eingaben (`stdin`) bekommt. Siehe auch [Standardströme](#standardströme).
Umleitungen brauchst du häufig beim Arbeiten mit Textausgaben.

| Umleitung | Bedeutung | Beispiel |
| --------- | --------- | -------- |
| `>` | Leitet `stdout` in eine Datei um. Die Datei wird neu erstellt oder überschrieben. | `ls -l /etc > etc-liste.txt` |
| `>>` | Leitet `stdout` in eine Datei um. Die Ausgabe wird an die Datei angehängt. | `echo "Noch eine Zeile" >> notiz.txt` |
| `2>` | Leitet `stderr` in eine Datei um. | `find /etc -name "*.conf" 2> fehler.txt` |
| `&>` | Leitet `stdout` **und** `stderr` in eine Datei um. | `find /etc -name "*.conf" &> suche.txt` |
| `<` | Verwendet eine Datei als `stdin` für einen Befehl. | `sqlite3 datenbank.db < befehle.sql` |

## Standardströme

Standardströme sind ein zentrales Unix-/Linux-Konzept: Programme haben standardisierte Ein- und Ausgabekanäle, die im Terminal sichtbar und mit Umleitungen steuerbar werden.

- **Standardeingabe** (`stdin`): Eingabe für ein Programm, standardmäßig über die Tastatur.
- **Standardausgabe** (`stdout`): normale Ausgabe eines Programms, standardmäßig im Terminal.
- **Fehlerausgabe** (`stderr`): Fehlermeldungen eines Programms, standardmäßig ebenfalls im Terminal.

Wenn ein Programm Eingaben über `stdin` liest, kannst du die Eingabe im Terminal mit **Strg+D** beenden.
Damit signalisierst du das Ende der Eingabe: `EOF` steht für *End of File*.

## Textausgabe im Terminal

Kurze Textdateien und Ausgaben können mit Befehlen wie `cat` direkt im Terminal angezeigt werden.
Bei längeren Texten ist ein **Pager** wie `less` sinnvoll, weil du damit scrollen und suchen kannst, ohne die Datei zu verändern.

### Die wichtigsten Befehle in `less`

Du kennst `less` bereits als Standard-Pager der manpages. Hier sind trotzdem noch mal die wichtigsten Befehle zusammengefasst:

| Taste | Funktion |
| ----- | -------- |
| `↑` / `↓` | zeilenweise scrollen |
| `f` / `Leertaste` | eine Seite weiter |
| `b` | eine Seite zurück |
| `/Suchwort` | nach einem Suchwort suchen |
| `n` | zum nächsten Treffer springen |
| `N` | zum vorherigen Treffer springen |
| `h` | Hilfe anzeigen |
| `q` | `less` schließen |

## Text bearbeiten mit Texteditoren

Wenn Text nicht nur angezeigt, sondern verändert werden soll, brauchst du einen Texteditor.
Bekannte Terminaleditoren sind:

- `nano`: einfacher Terminaleditor mit eingeblendeten Tastenkombinationen
- `vim`: mächtiger modaler Terminaleditor
- `emacs`: weiterer bekannter Editor, wird in dieser Übung aber nicht praktisch behandelt

### Bedienhilfe: nano

`nano` ist ein einfacher Terminaleditor.
Die wichtigsten Befehle werden am unteren Rand angezeigt.
Dabei steht `^` für die Strg-Taste.
Zum Beispiel bedeutet `^O`: Strg+O.

Einige der wichtigsten Befehle sind:

| Tastenkombination | Funktion |
| ----------------- | -------- |
| `Strg+O` | Datei speichern |
| `Enter` | Dateinamen beim Speichern bestätigen |
| `Strg+X` | `nano` beenden |
| `Strg+G` | Hilfe anzeigen |

### Überlebenshilfe: vim

`vim` ist ein mächtiger modaler Terminaleditor.
Das bedeutet: Tastatureingaben haben je nach Modus unterschiedliche Bedeutungen.
Mit `vimtutor` kann man eine interaktive Einführung in `vim` starten.

Für den Anfang reichen diese Befehle:

| Eingabe | Funktion |
| ------- | -------- |
| `i` | in den Insert Mode wechseln |
| `Esc` | zurück in den Normal Mode wechseln |
| `:w` | Datei speichern |
| `:q` | `vim` beenden |
| `:wq` | speichern und beenden |
| `:q!` | beenden, ohne Änderungen zu speichern |
