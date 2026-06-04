# Übung: Das Terminal als Dateimanager

In dieser Übung arbeitest du mit Dateien und Ordnern ausschließlich über das Terminal.
Du darfst alle Befehle verwenden, die in der Demonstration gezeigt wurden.
Ziel ist nicht, Befehle abzutippen, sondern passende Befehle selbst auszuwählen.

## Konzepte

- Die Shell befindet sich immer in einem Ordner, dem sogenannten **Working Directory**. In Bash seht ihr den Namen dieses Ordners standardmäßig im Prompt.

- **Relativer Pfad**: Der Pfad wird ausgehend vom aktuellen Working Directory angegeben, zum Beispiel `data/input.txt` oder `../bilder/logo.png`.

- **Absoluter Pfad**: Der Pfad ist unabhängig vom Working Directory. Dazu muss er vom Root-Verzeichnis des Dateisystems aus angegeben werden, zum Beispiel `/home/alex/data/input.txt` unter Linux, `/Users/alex/data/input.txt` unter macOS oder `C:\Users\Alex\data\input.txt` unter Windows.

- Neben gewöhnlichen Datei- und Verzeichnisnamen und `/` als Trenner können Unix/Linux-Pfade auch besondere Pfadbestandteile mit eigener Bedeutung enthalten:
    - Ein **führendes** `/` bezeichnet das **Root-Verzeichnis**.
    - `.` bezeichnet das **aktuelle Verzeichnis**.
    - `..` bezeichnet das **übergeordnete Verzeichnis**.

- `~` steht in Bash und vielen anderen Unix-Shells für das **Home-Verzeichnis** des aktuellen Benutzers. Zum Beispiel wird `~/data/input.txt` vor dem Ausführen eines Befehls zu `$HOME/data/input.txt` erweitert, also etwa zu `/home/alex/data/input.txt`.

- `*` ist ein **Wildcard-Zeichen**: Die Shell ersetzt es vor dem Ausführen eines Befehls durch passende Datei- und Verzeichnisnamen im angegebenen Pfad. Zum Beispiel wird `*.txt` durch alle Namen im aktuellen Working Directory ersetzt, die mit `.txt` enden, etwa `notes.txt` oder `input.txt`. 

- **Anführungszeichen** sorgen dafür, dass die Shell den eingeschlossenen Text als eine zusammengehörige Zeichenkette behandelt und viele Sonderzeichen nicht interpretiert. Zum Beispiel wird `*.txt` in `"*.txt"` nicht durch passende Dateinamen ersetzt, sondern wörtlich an das Programm übergeben. Das ist auch bei Namen mit Leerzeichen wichtig, etwa `"Meine Datei.txt"`.

- Mit der **Tab-Taste** kann die Shell Datei- und Verzeichnisnamen automatisch vervollständigen. Wenn die Eingabe eindeutig ist, wird sie ergänzt; wenn mehrere Möglichkeiten passen, zeigt Bash diese nach zweifachem Drücken der Tab-Taste an.

- Mit **Strg+C** kann ein laufendes Programm im Terminal abgebrochen werden. Die Shell sendet dabei ein Abbruchsignal an das Programm.

## Befehle

### Navigation und Orientierung im Dateisystem
| Befehl | Ausgeschrieben          | Beschreibung                                               | Beispiel               |
| ------ | ----------------------- | ---------------------------------------------------------- | ---------------------- |
| `pwd`  | print working directory | Gibt das aktuelle Working Directory aus.                   | `pwd`                  |
| `ls`   | list                    | Listet Dateien und Ordner in einem Verzeichnis auf.        | `ls`                   |
| `cd`   | change directory        | Wechselt das aktuelle Working Directory.                   | `cd Documents`         |
| `find` | find                    | Sucht Dateien und Ordner innerhalb eines Verzeichnisbaums. | `find . -name "*.txt"` |
| `tree` | tree                    | Zeigt Verzeichnisse und Dateien als Baumstruktur an.       | `tree`                 |

### Manipulation von Dateien und Ordnern
| Befehl  | Ausgeschrieben | Beschreibung                                                                         | Beispiel                 |
| ------- | -------------- | ------------------------------------------------------------------------------------ | ------------------------ |
| `cp`    | copy           | Kopiert Dateien oder Ordner.                                                         | `cp datei.txt kopie.txt` |
| `mv`    | move           | Verschiebt oder benennt Dateien und Ordner um.                                       | `mv alt.txt neu.txt`     |
| `rm`    | remove         | Löscht Dateien oder Ordner.                                                          | `rm datei.txt`           |
| `touch` | touch          | Erstellt eine leere Datei oder aktualisiert den Zeitstempel einer bestehenden Datei. | `touch notizen.txt`      |
| `mkdir` | make directory | Erstellt einen neuen Ordner.                                                         | `mkdir Projekt`          |

### Informationen über Dateien und Ordner
| Befehl | Ausgeschrieben | Beschreibung                                                                                             | Beispiel         |
| ------ | -------------- | -------------------------------------------------------------------------------------------------------- | ---------------- |
| `stat` | status         | Zeigt Metadaten zu einer Datei oder einem Ordner an, zum Beispiel Größe, Zeitstempel und Berechtigungen. | `stat datei.txt` |
| `file` | file           | Erkennt den Dateityp anhand des Inhalts oder anderer Merkmale.                                           | `file datei.txt` |
| `du`   | disk usage     | Zeigt an, wie viel Speicherplatz eine Datei oder ein Ordner belegt.                                      | `du Ordner`  |

## Aufgabe 1

In dieser Aufgabe üben wir Befehle zur Navigation und Informationsausgabe von Dateien und Ordnern.
Dabei lernen wir wichtige FHS Verzeichnisse, wie das Home-Verzeichnis, Root-Verzeichnis, /home, /var, /etc und /bin kennen.

1. In welchem Ordner befindest du dich wenn du das Terminal öffnest?
2. Was befindet sich im Ordner?
3. Lasse dir die Ordnerstruktur als Baum ausgeben.
4. Begebe dich ins Root-Verzeichnis und verschaffe dir einen Überblick über die dort liegenden Ordner.
5. Wir schauen uns nun insbesondere die Ordner /home, /var, /bin und /etc an.
6. Was findest du im /home Ordner? Schaue dir auch die Inhalte der Unterordner kurz an. Was ist der Zweck des /home Ordners? Falls nötig führe eine kurze Google oder KI Recherche durch, um diese Frage zu beantworten.
7. Nun schauen wir uns /var an. Verschaffe dir zunächst wieder einen Überblick über die Inhalte des Verzeichnisses. Welche Unterverzeichnisse gibt es hier?
8. Begib dich in log. Schaue dir die Dateien syslog und auth.log an. Was ist der Dateityp? Wie groß sind sie? Wann wurden sie erstellt und wann das letzte mal bearbeitet? Wer ist der Besitzer?
9. Nun schauen wir uns /etc an. Welche Dateiendungen kommen hier häufig vor? Wofür könnten sie stehen? Welche Dateitypen haben Dateien mit diesen Endungen?
10. /etc enthält Systemweite Konfigurationsdateien. Mit einigen werden wir uns später noch genauer beschäftigen. Dazu gehören unter anderem passwd, shadow, sudoers, hosts, hostname und fstab. Schaue dir von ein paar dieser Dateien Größe und Dateityp an.
11. Lass dir alle Dateien mit der Endung .conf in /etc ausgeben.
12. Als letztes schauen wir uns /bin an. Zunächst begeben wir uns wieder ins Root-Verzeichnis. Welcher der Ordner /home, /var, /etc und /bin ist der größte?
13. Begib dich nun in `/bin`. Lasse dir die Inhalte des Ordners ausgeben. Passt die Ausgabe zu deiner vorherigen Beobachtung zur Größe?
14. Welche Ausgabe erwartest du, wenn du `ls ..` ausführst? Führe den Befehl aus. Stimmt die Ausgabe mit deinen Erwartungen überein? Führe nun `cd ..` und anschließend `ls` aus. Warum stimmt die Ausgabe nicht mit der vorherigen überein? Nutze die `file` und `stat` Befehle, um den Grund zu untersuchen und zu verstehen, was es mit dem `/bin` Verzeichnis auf sich hat.

## Aufgabe 2

In einigen Ordnern sind viele Mülldateien gelandet.

Fast alle Dateien sind unverändert (also mit richtigem Namen und Endung) im Chaos zu finden.
Lediglich ein paar Dateien aus meme, docs und archive und meme-machine haben ihren Namen und ihre Endung verloren.
Sie sind im Ordner `unknown` gelandet.

Tipp: Kümmere dich als letztes um den Ordner `unknown`, also wenn du bereits weißt, welche Dateien genau noch fehlen.

Für mich: unknown enthält zwei unterschiedliche Bild Typen, eine Textdatei, eine PDF, eine komprimierte Log (.gz) Datei und eine HTML Datei.

## Besprechung

Schüler durch Aufgabe mit verlinkten Ordnern selbst über cd - herausfinden lassen. Und cd für wechsel in Home Directory.
Schüler selbst über Dotfiles herausfinden lassen.
Vorher glob noch nicht explizit erwähnen bei demonstration. Hinterher besprechen wenn es um find mit wildcard geht.


1. Navigieren und Fragen über Dateien beantworten (cd, pwd, ls, tree, find, stat, file, du). Keine Wildcards erforderlich.
Hier vielleicht sogar tatsächlich wichtige Ordner und Dateien benutzen, damit Schüler schon ein bisschen mit Dateisystem vertraut werden.

2. Ordner und Dateien erstellen
2a Nur eine Ebene ohne Dotfiles und überprüfen mit ls.
2b Bis zu drei Ebenen inklusive Dotfiles (und folders) und überprüfen mit tree und/oder ls. Was fällt auf? Finde heraus, was das Problem ist und wie du es beheben kannst.

3. Wildcard mit cp, rm, find, mv.
Z.B. Welche Textdateien liegen im Ordner XXX (find -name "*.txt")
find Ordner -name *.txt (also ohne Anführungszeichen) nutzen. Was wird angezeigt und warum?
