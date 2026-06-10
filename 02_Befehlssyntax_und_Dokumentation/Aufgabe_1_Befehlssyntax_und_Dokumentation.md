# Aufgabe 1: Befehlssyntax, Optionen und Dokumentation

In dieser Aufgabe setzt du dich tiefergehend mit bereits bekannten Befehlen auseinander. Du lernst ihre Syntax zu verstehen und die Dokumentation im Terminal gezielt zu nutzen.

## 1. Befehlssyntax lesen

In diesem Abschnitt untersuchst du, aus welchen Bestandteilen Befehle aufgebaut sind.

**1.1** Zerlege die folgenden Befehle jeweils in Befehl, Optionen, Argumente und Parameter:

```bash
ls -l /etc
du -h /var/log
cp -r quelle/ ziel/
find /var/log -name "*.log"
```

**1.2** Welche Optionen aus Aufgabe 1.1 sind Flags?

## 2. `ls` genauer untersuchen

In diesem Abschnitt untersuchst du einen bekannten Befehl genauer. Du vergleichst verschiedene Optionen und nutzt die Dokumentation, um die Syntax und Wirkung dieser Optionen zu verstehen.

**2.1** Öffne die manpage zu `ls`. Suche den Abschnitt `SYNOPSIS`. Welche Grundstruktur für den Befehl wird dort angegeben?

**2.2** Vergleiche im Home-Verzeichnis die Ausgaben von `ls`, `ls -a`, `ls -l`, `ls -la` und `ls -lah`.

**2.3** Erkläre kurz, was die Optionen `-a`, `-l` und `-h` bei `ls` bewirken.

**2.4** Finde in der manpage zu `ls` die langen Optionen zu `-a` und `-h` heraus.

**2.5** Führe `ls --help` aus. Worin unterscheidet sich diese Ausgabe von `man ls`?

## 3. Symlinks mit `pwd`

In Übung 1 hast du gesehen, dass `/bin` auf deinem Ubuntu-System ein Symlink ist. Jetzt nutzt du die Dokumentation im Terminal, um zu untersuchen, wie der `pwd`-Befehl Symlinks behandelt.

**3.1** Begib dich in das Verzeichnis `/bin`. Welchen Pfad gibt `pwd` aus?

**3.2** Ist `pwd` Shell-Builtin oder Programm?

**3.3** Welche Optionen hat `pwd`? Nutze deine Antwort aus **3.2**, um die korrekte Hilfe zu `pwd` auszugeben.

**3.4** Test diese Optionen in `/bin`. Inwiefern unterscheiden sich die Ausgaben?

**3.5** Erkläre kurz, warum dieser Unterschied zu dem passt, was du in Übung 1 (Aufgabenblatt 1, Aufgabenteil 6) über `/bin` herausgefunden hast.

**3.6** Tatsächlich gibt es neben dem Shell-Builtin `pwd` auch ein Programm `pwd` (mehr dazu in Übung 4). Find auf der manpage von `pwd` heraus, wofür `-P` und `-L` stehen.

## 4. `cp` und `rm`

Jetzt wendest du bekannte Optionen an Befehlen an, die Dateien oder Verzeichnisse verändern. Arbeite dabei nur in deinem Home-Verzeichnis.

**4.1** In Übung 1 zum Dateimanagement hast du bereits Optionen wie `-a` und `-r` verwendet. Wofür standen diese Optionen dort und warum waren sie nötig?

**4.2** Erstelle in deinem Home-Verzeichnis eine leere Datei `loeschtest.tmp`. Lösche sie mit `rm -i`. Was genau bewirkt die `-i`-Flag?

**4.3** Recherchiere in der manpage von `rm` zum Unterschied zwischen `-i` und `--interactive`. Erstelle erneut eine leere Datei im Home-Verzeichnis und lösche sie diesmal mit der `--interactive`-Option.

**4.4** Erstelle eine leere Datei `kopiertest.txt` und ein Verzeichnis `kopiertest`. Kopiere die Datei mit `cp -v` in dieses Verzeichnis. Welche zusätzliche Ausgabe erscheint durch `-v`? Welche lange Option gehört zu `-v`?

**4.5** Lösche das Verzeichnis `kopiertest` interaktiv, rekursiv und mit ausführlicher Ausgabe.

## 5. `du` und `stat`

In diesem Abschnitt vergleichst du Dateigröße, belegten Speicherplatz und Metadaten.

**5.1** Wenn du `du` auf ein Verzeichnis anwendest, wird per Default neben dem belegten Speicherplatz des Verzeichnisses selbst, auch der von jedem Unterverzeichnis ausgegeben. Überprüfe dies, indem du `du /etc/apt` ausführst und dir die Ausgabe anschaust.

**5.2** Lies in der `du`-manpage nach, was die Flags `-a` und `-s` bewirken. Probiere sie anschließend wieder am Verzeichnis `/etc/apt` aus.

**5.3** Untersuche die Datei `~/.bashrc` mit `stat` und `du`. Vergleiche die ausgegebenen Größen.

**5.4** Finde in der manpage zu `du` heraus, was `--block-size` bewirkt. Lass dir den durch `~/.bashrc` belegten Speicherplatz in Bytes ausgeben.

**5.5** Finde in der manpage zu `du` heraus, was `--apparent-size` bewirkt und wende es auf `~/.bashrc` an.

**5.6** Kombiniere `--block-size 1` und `--apparent-size`. Vergleiche die Ausgabe mit der durch `stat ~/.bashrc` ausgegebenen Größe. Vergleiche darüber hinaus mit der Ausgabe von `du -b ~/.bashrc` und schaue die Bedeutung der `-b`-Option in der manpage nach.

**5.7** Vergleiche die Ausgaben von `du -b ~/.bashrc` und `du -bh ~/.bashrc`.

**5.8** Erkläre in 2-3 Sätzen, warum `stat` und `du` unterschiedliche Informationen anzeigen können.

## 6. Weitere Hilfen im Terminal

In diesem Abschnitt nutzt du kurze Hilfen im Terminal, um Befehle oder manpages schnell einzuordnen.
Erzeuge dafür zuerst das Lab-Verzeichnis:

```bash
bash lab_uebung_2.sh
```

**6.1** Nutze den `type`-Befehl, um herauszufinden, um welche Art von Befehl es sich bei `cd`, `rm`, `ls` und `type` handelt.

**6.2** Öffne die Hilfe zu `cd`. Wähle den dazu nötigen Befehl auf Basis deines Ergebnisses aus **6.1**. Welche Bestandteile erkennst du in der angegebenen Syntax?

**6.3** Lasse dir nur die **Kurzbeschreibung** zu `find` ausgeben. Welche Information erhältst du?

**6.4** Durchsuche die Kurzbeschreibungen der manpages nach dem Begriff `password`. Schaue dir die Ergebnisse kurz an.

Die nächste Aufgabe findet im Lab-Verzeichnis statt.

**6.5** Du hast zwei Versionen einer Textdatei: `~/labs/Uebung-2-Lab/config_v1.txt` und `~/labs/Uebung-2-Lab/config_v2.txt`.
Du möchtest wissen, in welchen Zeilen sich die beiden Dateien unterscheiden, hast aber den passenden Befehl vergessen.
Finde zunächst heraus, wie du die Durchsuchung der Kurzbeschreibungen auf eine bestimmte Section der manpages beschränken kannst.
Nutze dieses Wissen anschließend, um die erste Section, also die für Befehle, nach dem Wort *compare* zu durchsuchen.
Finde damit einen Befehl, mit dem man zwei Dateien zeilenweise vergleichen kann.
Wende diesen Befehl anschließend auf die beiden Dateien an.
