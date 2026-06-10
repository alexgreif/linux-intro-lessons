# Kurzreferenz: Das Terminal als Dateimanager

Im Terminal arbeitest du ständig mit Pfaden, Dateien und Verzeichnissen.
Wenn du dich sicher im Dateisystem orientieren kannst, kannst du Dateien gezielt finden, untersuchen und bearbeiten.
Das ist ein erster wichtiger Schritt zum sicheren Umgang mit dem Terminal.

## Inhalt

- [Befehle](#befehle)
- [Terminal und Shell](#terminal-und-shell)
- [Orientierung im Dateisystem](#orientierung-im-dateisystem)
- [Sonderzeichen](#sonderzeichen)
- [Shell-Bedienung](#shell-bedienung)

## Befehle

### Navigation und Orientierung im Dateisystem

| Befehl | Ausgeschrieben          | Beschreibung                                                       | Beispiel               |
| ------ | ----------------------- | ------------------------------------------------------------------ | ---------------------- |
| `pwd`  | print working directory | Gibt das aktuelle Working Directory aus.                           | `pwd`                  |
| `ls`   | list                    | Listet Dateien und Verzeichnisse in einem Verzeichnis auf.         | `ls`                   |
| `cd`   | change directory        | Wechselt das aktuelle Working Directory.                           | `cd Documents`         |
| `find` | find                    | Sucht Dateien und Verzeichnisse innerhalb eines Verzeichnisbaums.  | `find . -name "*.txt"` |
| `tree` | tree                    | Zeigt Verzeichnisse und Dateien als Baumstruktur an.               | `tree`                 |

### Dateien und Verzeichnisse verwalten

| Befehl  | Ausgeschrieben | Beschreibung                                                                         | Beispiel                 |
| ------- | -------------- | ------------------------------------------------------------------------------------ | ------------------------ |
| `cp`    | copy           | Kopiert Dateien oder Verzeichnisse.                                                  | `cp datei.txt kopie.txt` |
| `mv`    | move           | Verschiebt oder benennt Dateien und Verzeichnisse um.                                | `mv alt.txt neu.txt`     |
| `rm`    | remove         | Löscht Dateien oder Verzeichnisse.                                                   | `rm datei.txt`           |
| `touch` | touch          | Erstellt eine leere Datei oder aktualisiert den Zeitstempel einer bestehenden Datei. | `touch notizen.txt`      |
| `mkdir` | make directory | Erstellt ein neues Verzeichnis.                                                      | `mkdir Projekt`          |

### Informationen über Dateien und Verzeichnisse

| Befehl | Ausgeschrieben | Beschreibung                                                                                                      | Beispiel          |
| ------ | -------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------- |
| `stat` | status         | Zeigt Metadaten zu einer Datei oder einem Verzeichnis an, zum Beispiel Größe, Zeitstempel und Berechtigungen.    | `stat datei.txt`  |
| `file` | file           | Erkennt den Dateityp anhand des Inhalts oder anderer Merkmale.                                                    | `file datei.txt`  |
| `du`   | disk usage     | Zeigt an, wie viel Speicherplatz eine Datei oder ein Verzeichnis belegt.                                          | `du Verzeichnis`  |

## Terminal und Shell

Das **Terminal** ist die Oberfläche, in der du Text eingibst und Ausgaben liest.
Die **Shell** ist das Programm, das deine Eingaben interpretiert und Befehle ausführt.
Auf Ubuntu arbeitest du standardmäßig mit der Shell **Bash** (Bourne Again SHell).

Vor deiner Eingabe zeigt die Shell den **Prompt** an. Das ist die **Eingabeaufforderung** der Shell, also die Stelle, an der die Shell auf deinen nächsten Befehl wartet.
In Bash besteht der Prompt standardmäßig aus Benutzernamen, Rechnernamen und dem Verzeichnis, in dem du dich gerade befindest. Im Beispiel steht `~` als Abkürzung für das Home-Verzeichnis des angemeldeten Benutzers:

<img src="prompt.png" alt="Shell-Prompt nach dem Login auf Ubuntu Server" width="600">

Der Ablauf ist hier grundsätzlich immer gleich: Du gibst einen **Befehl** ein, drückst Enter, liest die Ausgabe und kannst danach den nächsten Befehl eingeben.
Aus Sicht der Shell nennt man diese Arbeitsweise auch **REPL**: Read (Eingabe einlesen), Evaluate (auswerten), Print (Ausgabe erzeugen), Loop (wiederholen).

## Orientierung im Dateisystem

Ein Verzeichnis ist das, was du aus grafischen Oberflächen oft als Ordner (englisch Folder) kennst. In Linux-Dokumentation und bei der Arbeit im Terminal ist der Begriff Verzeichnis (englisch Directory) üblich.

### Das Working Directory

Die Shell befindet sich immer in einem Verzeichnis, dem sogenannten **Working Directory**.
In Bash siehst du den Namen dieses Verzeichnisses standardmäßig im Prompt.
Alternativ kannst du es dir mit dem Befehl `pwd` ausgeben lassen.
`pwd` steht für *print working directory*.

### Wichtige Verzeichnisse

Das **Root-Verzeichnis** `/` ist der Anfang des Linux-Dateisystems.
Alle Dateien und Verzeichnisse im Dateisystem liegen also irgendwo unterhalb des Root-Verzeichnisses.
Direkt im Root-Verzeichnis liegen Verzeichnisse wie `/etc` für Konfigurationsdateien oder `/home` für die Home-Verzeichnisse normaler Benutzer.

Das **Home-Verzeichnis** ist dein persönlicher Arbeitsbereich.
Dort liegen zum Beispiel eigene Dateien, persönliche Einstellungen und viele Übungsverzeichnisse.
Für einen Benutzer `alex` ist das Home-Verzeichnis normalerweise `/home/alex`.

Eine kompakte Übersicht über weitere wichtige Systemverzeichnisse findest du in [Wichtige Systemverzeichnisse](Wichtige_Systemverzeichnisse.md).

### Pfade

Ein Pfad ist der Weg zu einer Datei oder einem Verzeichnis im Dateisystem.
Dieser Weg kann auf zwei Arten angegeben werden:

- **Absoluter Pfad**: Es wird der vollständige Weg ausgehend vom Root-Verzeichnis angegeben, zum Beispiel `/home/alex/Downloads/input.txt` oder `/etc/passwd`. Ein absoluter Pfad beginnt also immer mit `/`.

- **Relativer Pfad**: Der Pfad wird ausgehend vom aktuellen Working Directory angegeben, zum Beispiel `data/input.txt` oder `../bilder/logo.png`. Ein relativer Pfad beschreibt also nicht den ganzen Weg ab `/`, sondern den Weg von deiner aktuellen Position aus.

Ein `/` kann im Pfad also zwei unterschiedliche Bedeutungen haben:
Am Anfang eines Pfads steht `/` für das Root-Verzeichnis.
Innerhalb eines Pfads trennt `/` die einzelnen Verzeichnisnamen voneinander.
Der Pfad `/home/alex` bedeutet also: vom Root-Verzeichnis `/` in das Verzeichnis `home` und darin in das Verzeichnis `alex`.

### Besondere Pfadbestandteile und wichtige Verzeichnisse

- Neben gewöhnlichen Datei- und Verzeichnisnamen und `/` als Trenner können Unix/Linux-Pfade auch besondere Pfadbestandteile mit eigener Bedeutung enthalten:
    - Ein **führendes** `/` bezeichnet das **Root-Verzeichnis**.
    - `.` bezeichnet das **aktuelle Verzeichnis**.
    - `..` bezeichnet das **übergeordnete Verzeichnis**.

- `~` steht in Bash und vielen anderen Unix-Shells für das **Home-Verzeichnis** des aktuellen Benutzers. Zum Beispiel wird `~/data/input.txt` vor dem Ausführen eines Befehls zu `$HOME/data/input.txt` erweitert, also etwa zu `/home/alex/data/input.txt`.

## Sonderzeichen

- `*` ist ein **Wildcard-Zeichen**: Die Shell ersetzt es vor dem Ausführen eines Befehls durch passende Datei- und Verzeichnisnamen im angegebenen Pfad. Zum Beispiel wird `*.txt` durch alle Namen im aktuellen Working Directory ersetzt, die mit `.txt` enden, etwa `notes.txt` oder `input.txt`.

- **Anführungszeichen** sorgen dafür, dass die Shell den eingeschlossenen Text als eine zusammengehörige Zeichenkette behandelt und viele Sonderzeichen nicht interpretiert. Zum Beispiel wird `*.txt` in `"*.txt"` nicht durch passende Dateinamen ersetzt, sondern wörtlich an das Programm übergeben. Das ist auch bei Namen mit Leerzeichen wichtig, etwa `"Meine Datei.txt"`.

## Shell-Bedienung

- Mit der **Tab-Taste** kann die Shell Datei- und Verzeichnisnamen automatisch vervollständigen. Wenn die Eingabe eindeutig ist, wird sie ergänzt; wenn mehrere Möglichkeiten passen, zeigt Bash diese nach zweifachem Drücken der Tab-Taste an.

- Mit **Strg+C** kann ein laufendes Programm im Terminal abgebrochen werden. Die Shell sendet dabei ein Abbruchsignal an das Programm.

- Mit &#8593; und &#8595; kannst du durch deine Befehlshistorie gehen:
    - &#8593; geht in der Historie *zurück*
    - &#8595; geht in der Historie *vorwärts*. 
