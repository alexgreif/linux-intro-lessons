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

## 3. `cp` und `rm`

Jetzt wendest du bekannte Optionen an Befehlen an, die Dateien oder Verzeichnisse verändern. Arbeite dabei nur in deinem Home-Verzeichnis.

**3.1** In Übung 1 zum Dateimanagement hast du bereits Optionen wie `-a` und `-r` verwendet. Wofür standen diese Optionen dort und warum waren sie nötig?

**3.2** Erstelle in deinem Home-Verzeichnis eine leere Datei `loeschtest.tmp`. Lösche sie mit `rm -i`. Was genau bewirkt die `-i`-Flag?

**3.3** Recherchiere in der manpage von `rm` zum Unterschied zwischen `-i` und `--interactive`. Erstelle erneut eine leere Datei im Home-Verzeichnis und lösche sie diesmal mit der `--interactive`-Option.

**3.4** Erstelle eine leere Datei `kopiertest.txt` und ein Verzeichnis `kopiertest`. Kopiere die Datei mit `cp -v` in dieses Verzeichnis. Welche zusätzliche Ausgabe erscheint durch `-v`? Welche lange Option gehört zu `-v`?

**3.5** Lösche das Verzeichnis `kopiertest` interaktiv, rekursiv und mit ausführlicher Ausgabe.

## 4. `du` und `stat`

In diesem Abschnitt vergleichst du Dateigröße, belegten Speicherplatz und Metadaten.

**4.1** Vergleiche `du /etc/apt` mit `du -a /etc/apt` und `du -s /etc/apt`. Was bewirken die Flags?

**4.2** Wenn du `du` auf ein Verzeichnis anwendest, wird per Default neben dem belegten Speicherplatz des Verzeichnisses selbst, auch der von jedem Unterverzeichnis ausgegeben. Überprüfe dies, indem du `du /etc/apt` ausführst und dir die Ausgabe anschaust.

**4.3** Lies in der `du`-manpage nach, was die Flags `-a` und `-s` bewirken. Probiere sie anschließend wieder am Verzeichnis `/etc/apt` aus.

**4.4** Untersuche die Datei `~/.bashrc` mit `stat` und `du`. Vergleiche die ausgegebenen Größen.

**4.5** Finde in der manpage zu `du` heraus, was `--block-size` bewirkt. Lass dir den durch `~/.bashrc` belegten Speicherplatz in Bytes ausgeben.

**4.6** Finde in der manpage zu `du` heraus, was `--apparent-size` bewirkt und wende es auf `~/.bashrc` an.

**4.7** Kombiniere `--block-size 1` und `--apparent-size`. Vergleiche die Ausgabe mit der durch `stat ~/.bashrc` ausgegebenen Größe. Vergleiche darüber hinaus mit der Ausgabe von `du -b ~/.bashrc` und schaue die Bedeutung der `-b`-Option in der manpage nach.

**4.8** Vergleiche die Ausgaben von `du -b ~/.bashrc` und `du -bh ~/.bashrc`.

**4.9** Erkläre in 2-3 Sätzen, warum `stat` und `du` unterschiedliche Informationen anzeigen können.

## 5. Weitere Hilfen im Terminal

In diesem Abschnitt nutzt du kurze Hilfen im Terminal, um Befehle oder manpages schnell einzuordnen.
Erzeuge dafür zuerst das Lab-Verzeichnis:

```bash
bash lab_uebung_2.sh
```

**5.1** Nutze den `type`-Befehl, um herauszufinden, um welche Art von Befehl es sich bei `cd`, `rm`, `ls` und `type` handelt.

**5.2** Öffne die Hilfe zu `cd`. Wähle den dazu nötigen Befehl auf Basis deines Ergebnisses aus **5.1**. Welche Bestandteile erkennst du in der angegebenen Syntax?

**5.3** Lasse dir nur die **Kurzbeschreibung** zu `find` ausgeben. Welche Information erhältst du?

**5.4** Durchsuche die Kurzbeschreibungen der manpages nach dem Begriff `password`. Schaue dir die Ergebnisse kurz an.

**5.5** Du hast zwei Versionen einer Textdatei: `~/labs/Uebung-2-Lab/config_v1.txt` und `~/labs/Uebung-2-Lab/config_v2.txt`.
Du möchtest wissen, in welchen Zeilen sich die beiden Dateien unterscheiden, hast aber den passenden Befehl vergessen.
Finde zunächst heraus, wie du die Durchsuchung der Kurzbeschreibungen auf eine bestimmte Section der manpages beschränken kannst.
Nutze dieses Wissen anschließend, um die erste Section, also die für Befehle, nach dem Wort *compare* zu durchsuchen.
Finde damit einen Befehl, mit dem man zwei Dateien zeilenweise vergleichen kann.
Wende diesen Befehl anschließend auf die beiden Dateien an.
