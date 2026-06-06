# Kurzreferenz: Das Terminal als Dateimanager

Im Terminal arbeitest du ständig mit Pfaden, Dateien und Verzeichnissen.
Wenn du dich sicher im Dateisystem orientieren kannst, kannst du Dateien gezielt finden, untersuchen und bearbeiten.
Das ist ein erster wichtiger Schritt zum sicheren Umgang mit dem Terminal.

## Inhalt

- [Befehle](#befehle)
- [Orientierung im Dateisystem](#orientierung-im-dateisystem)
- [Sonderzeichen](#sonderzeichen)
- [Terminalbedienung](#terminalbedienung)

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

## Orientierung im Dateisystem

### Das Working Directory

- Die Shell befindet sich immer in einem Verzeichnis, dem sogenannten **Working Directory**. In Bash seht ihr den Namen dieses Verzeichnisses standardmäßig im Prompt.

### Pfadtypen

- **Relativer Pfad**: Der Pfad wird ausgehend vom aktuellen Working Directory angegeben, zum Beispiel `data/input.txt` oder `../bilder/logo.png`.

- **Absoluter Pfad**: Der Pfad ist unabhängig vom Working Directory. Dazu muss er vom Root-Verzeichnis des Dateisystems aus angegeben werden, zum Beispiel `/home/alex/data/input.txt` unter Linux, `/Users/alex/data/input.txt` unter macOS oder `C:\Users\Alex\data\input.txt` unter Windows.

### Besondere Pfadbestandteile und wichtige Verzeichnisse

- Neben gewöhnlichen Datei- und Verzeichnisnamen und `/` als Trenner können Unix/Linux-Pfade auch besondere Pfadbestandteile mit eigener Bedeutung enthalten:
    - Ein **führendes** `/` bezeichnet das **Root-Verzeichnis**.
    - `.` bezeichnet das **aktuelle Verzeichnis**.
    - `..` bezeichnet das **übergeordnete Verzeichnis**.

- `~` steht in Bash und vielen anderen Unix-Shells für das **Home-Verzeichnis** des aktuellen Benutzers. Zum Beispiel wird `~/data/input.txt` vor dem Ausführen eines Befehls zu `$HOME/data/input.txt` erweitert, also etwa zu `/home/alex/data/input.txt`.

## Sonderzeichen

- `*` ist ein **Wildcard-Zeichen**: Die Shell ersetzt es vor dem Ausführen eines Befehls durch passende Datei- und Verzeichnisnamen im angegebenen Pfad. Zum Beispiel wird `*.txt` durch alle Namen im aktuellen Working Directory ersetzt, die mit `.txt` enden, etwa `notes.txt` oder `input.txt`.

- **Anführungszeichen** sorgen dafür, dass die Shell den eingeschlossenen Text als eine zusammengehörige Zeichenkette behandelt und viele Sonderzeichen nicht interpretiert. Zum Beispiel wird `*.txt` in `"*.txt"` nicht durch passende Dateinamen ersetzt, sondern wörtlich an das Programm übergeben. Das ist auch bei Namen mit Leerzeichen wichtig, etwa `"Meine Datei.txt"`.

## Terminalbedienung

- Mit der **Tab-Taste** kann die Shell Datei- und Verzeichnisnamen automatisch vervollständigen. Wenn die Eingabe eindeutig ist, wird sie ergänzt; wenn mehrere Möglichkeiten passen, zeigt Bash diese nach zweifachem Drücken der Tab-Taste an.

- Mit **Strg+C** kann ein laufendes Programm im Terminal abgebrochen werden. Die Shell sendet dabei ein Abbruchsignal an das Programm.