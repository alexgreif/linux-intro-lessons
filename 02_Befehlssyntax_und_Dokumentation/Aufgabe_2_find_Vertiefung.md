# Aufgabe 2: `find` für Fortgeschrittene

In dieser Aufgabe lernst du den `find`-Befehl noch besser kennen.
Insbesondere lernst du, wie du nach anderen Kriterien als nur dem Namen suchen und mehrere Kriterien verbinden kannst.
Außerdem lernst du, wie du gefundene Dateien mit `find -exec` direkt verarbeiten kannst.

## 1. Suche nach mehreren Kriterien mit `find`

In diesem Abschnitt lernst du weitere wichtige Optionen des `find`-Befehls kennen, die es dir erlauben nach unterschiedlichen Kriterien zu suchen.

**Hinweis:**
Bei Suchläufen in Systemverzeichnissen können Fehlermeldungen aufgrund von Zugriffsbeschränkungen erscheinen.
Diese können die Ausgabe etwas unübersichtlich machen, bedeuten aber nicht, dass etwas mit dem Befehl nicht stimmt.
Um die störenden Fehlermeldungen auszublenden, gibt es zwei Möglichkeiten:

- Du hängst `2> /dev/null` an den Befehl an, zum Beispiel `find /etc -type f 2> /dev/null`. Dies blendet allgemein alle Fehlermeldungen aus.
- Du schreibst `sudo` (Super User Do) vor den Befehl und führst ihn damit mit Root-Berechtigungen aus, zum Beispiel `sudo find /etc -type f`. Verzeichnisse, die ohne `sudo` nicht durchsucht werden können und deshalb Fehlermeldungen verursachen, werden in diesem Fall problemlos durchsucht. Die Fehlermeldungen treten also gar nicht erst auf.

`sudo` solltest du bewusst einsetzen, weil du damit Zugriffsbeschränkungen umgehst, die als Sicherheitsmechanismus gedacht sind.
Bei `2> /dev/null` ist dagegen wichtig zu beachten, dass auch andere Fehlermeldungen ausgeblendet werden können.
Im Rahmen dieser Aufgabe ist `2> /dev/null` wahrscheinlich die bessere Lösung, außer du möchtest bewusst Verzeichnisse mit Zugriffsbeschränkungen durchsuchen.

**1.1** Führe die folgenden Befehle aus. Recherchiere anschließend in der manpage zu `find`, welche Bedeutung die verwendeten Suchkriterien haben, und erkläre jeweils kurz, welche Treffer gesucht werden:

```bash
find /etc -type f
find /etc -type d
find /etc -type f -name "*.conf"
find /etc -type f -empty
```

**1.2** Suche in `/var/log` nach normalen Dateien, deren Name auf `.log` endet. Denk dran, dass du Fehlermeldungen bei Bedarf mit `2> /dev/null` ausblenden kannst.

**1.3** Suche in `/var/log` nach Dateien, die größer als 1 MiB sind. Finde die passende Suchoption in der manpage zu `find`.

**1.4** Suche in der manpage zu `find` nach einem weiteren Suchkriterium, das interessant wirkt. Probiere es in `/etc` oder `/var/log` aus und notiere kurz, was es bewirkt.

## 2. Dateien suchen und verarbeiten mit `find -exec`

Eine besonders nützliche Option von `find` ist `-exec`.
Mit `find -exec` kannst du für jeden Treffer einen weiteren Befehl ausführen. Die Grundform ist:

```bash
find SUCHBEREICH KRITERIEN -exec BEFEHL {} \;
```

`{}` steht für den aktuellen Treffer. `\;` beendet den `-exec`-Teil.

**2.1** Führe den folgenden Befehl aus. Was passiert mit jedem Treffer?

```bash
find /etc -type f -name "*.conf" -exec file {} \;
```

**2.2** Lasse dir mit `stat` Metadaten zu allen `.log`-Dateien in `/var/log` und seinen Unterverzeichnissen ausgeben. Nutze dazu die `-exec`-Option von `find`.

**2.3** Lasse dir mit `du` die Speicherbelegung aller `.conf`-Dateien in `/etc` und seinen Unterverzeichnissen ausgeben. Nutze dazu die `-exec`-Option von `find`.
Nutze die `du`-Optionen, die du in Aufgabe 4 kennengelernt hast, um die Ausgabe nach deinen Wünschen zu formatieren.

Für die nächsten Aufgaben arbeitest du im Lab-Verzeichnis.

**2.4** Kopiere mit nur einem Befehl alle `.txt`-Dateien aus `~/labs/Uebung-2-Lab/Find-Exec-Lab/eingang` und seinen Unterverzeichnissen nach `~/labs/Uebung-2-Lab/Find-Exec-Lab/ziel/texte`. Kontrolliere anschließend den Inhalt von `~/labs/Uebung-2-Lab/Find-Exec-Lab/ziel/texte`.

**2.5** Verschiebe mit nur einem Befehl alle `.log`-Dateien aus `~/labs/Uebung-2-Lab/Find-Exec-Lab` und seinen Unterverzeichnissen nach `~/labs/Uebung-2-Lab/Find-Exec-Lab/ziel/logs`. Kontrolliere anschließend, ob die `.log`-Dateien im Ziel angekommen sind.

**2.6** Lösche mit nur einem Befehl alle leeren Dateien in `~/labs/Uebung-2-Lab/Find-Exec-Lab/eingang`. Der Löschvorgang soll interaktiv sein: Für jede gefundene Datei soll gefragt werden, ob sie wirklich gelöscht werden soll.
