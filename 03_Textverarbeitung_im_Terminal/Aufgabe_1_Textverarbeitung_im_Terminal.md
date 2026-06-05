# Aufgabe 1: Textverarbeitung im Terminal

In dieser Aufgabe arbeitest du mit Textdateien im Terminal.
Du untersuchst echte Systemdateien, erstellst eigene Textdateien, indem du Ausgaben umleitest und verfolgst Änderungen an Textdateien.

Arbeite bei Änderungen nur in deinem Home-Verzeichnis und nur innerhalb des Verzeichnisses `text-uebung`.

## 1. Informationen in echten Systemdateien nachschlagen

Zunächst untersuchst du drei wichtige Systemdateien mit den gerade besprochenen Werkzeugen zur Textausgabe und -anzeige.

**1.1** Lasse dir die Inhalte der Dateien `/etc/hostname`, `/etc/hosts` und `/etc/services` ausgeben.

**1.2** Vergleiche die Ausgaben. Welche Dateien lassen sich direkt im Terminal gut lesen? Bei welcher Datei ist ein Pager wie `less` sinnvoller?

**1.3** Öffne `/etc/services` mit `less`. Welche Ports nutzen `http`, `https`, `ftp`, `ssh` und `imap`? Welche `sql`-Server werden gelistet und welche Ports nutzen sie?

## 2. Textdateien erzeugen und mit `cat` ausgeben lassen

In diesem Abschnitt erstellst du nicht-leere Textdateien direkt im Terminal und untersuchst, wie `cat` mit Datei-Argumenten und Standardeingabe arbeitet.

**2.1** Erstelle in deinem Home-Verzeichnis das Verzeichnis `text-uebung` und begib dich dort hinein.

**2.2** Erstelle die Dateien `datei1.txt` und `datei2.txt` mit beliebigem, unterschiedlichem Inhalt. Beide Dateien sollen nicht leer sein. Verwende dafür keinen Texteditor.

**2.3** Lasse dir den Inhalt der ersten Datei ausgeben.

**2.4** Lasse dir den Inhalt beider Dateien mit einem einzigen Befehl ausgeben.

**2.5** Schaue in der Dokumentation von `cat` nach, was dort über die Ausführung ohne Datei-Argument steht. Probiere `cat` anschließend ohne Datei-Argument aus.

**2.6** Lasse dir den Inhalt einer deiner Dateien mit `cat` und Eingabeumleitung ausgeben.

**2.7** Überlege zuerst: Welche Ausgabe erwartest du bei folgendem Befehl?

```bash
cat datei1.txt < datei2.txt
```

Führe den Befehl anschließend aus. Entspricht die Ausgabe deiner Erwartung? Versuche nachzuvollziehen, wie die beobachtete Ausgabe zustande kommt.

## 3. Befehlsausgaben in Textdateien umleiten

In diesem Abschnitt speicherst du die Ausgaben von Befehlen in einer Datei.

**3.1** Erzeuge in `text-uebung` die Datei `services-auszug.txt`. Sie soll zunächst nur eine kurze Überschrift gefolgt von einer leeren Zeile enthalten.

**3.2** Hänge die ersten 8 Zeilen von `/etc/services` an `services-auszug.txt` an.

**3.3** Hänge eine weitere Überschrift und Trennzeile an. Hänge danach die letzten 15 Zeilen von `/etc/services` an.

**3.4** Kontrolliere den Inhalt von `services-auszug.txt`. Ist er übersichtlich? Falls nicht, verbessere die Formatierung mit einem Texteditor deiner Wahl.

## 4. Suchergebnisse und Fehlermeldungen protokollieren mit Umleitungen

Du suchst eine Konfigurationsdatei, kannst dich aber nicht mehr an den genauen Namen erinnern.
Du weißt nur noch: Sie liegt wahrscheinlich irgendwo unter `/etc`, ist eine normale Datei und der Name enthält vermutlich `conf`.

**4.1** Suche unter `/etc` nach normalen Dateien, deren Name `conf` enthält.

**4.2** Die Ausgabe ist sehr lang und daher im Terminal unübersichtlich.
Speichere die Suchergebnisse, also die Standardausgabe, in der Datei `conf-suche.txt`.
Öffne diese Datei anschließend mit einem Pager.

**4.3** Prüfe, ob bei deiner Suche trotzdem noch etwas im Terminal ausgegeben wurde.
Falls ja: Welche Art von Ausgabe war das und warum steht sie nicht in `conf-suche.txt`?
Ändere deinen Befehl aus **4.2** leicht ab, sodass diesmal auch diese Ausgabe in `conf-suche.txt` gespeichert wird.

Welche der beiden Lösungen ist für unser Suchszenario sinnvoller? In welchen Fällen wäre die andere Lösung sinnvoller?

*Bemerkung*: Falls bei dir in Aufgabe **4.2** nichts im Terminal ausgegeben wurde, warst du uns wahrscheinlich schon einen Schritt voraus.
Führe die Suche noch mal so durch, dass wirklich nur die Standardausgabe in `conf-suche.txt` gespeichert wird.

**4.4** Speichere nun die normalen Suchergebnisse in `conf-suche.txt` und die Fehlermeldungen getrennt in `conf-suche-fehler.txt`.

**4.5** In Aufgabe 2 von Übung 2 hast du bereits `2> /dev/null` verwendet, ohne dass genau erklärt wurde, was dahintersteckt.
Recherchiere kurz, was `/dev/null` ist, um zu verstehen, warum wir die Fehlerausgabe ausgerechnet dorthin weitergeleitet haben.

**4.6** Führe die Suche erneut aus: Speichere die normalen Suchergebnisse in `conf-suche.txt` und verwirf die Fehlermeldungen mit `/dev/null`.

## 5. Änderungen an einer Datei live verfolgen mit `tail`

In diesem Abschnitt beobachtest du, wie sich eine Datei verändert, während neue Zeilen hinzugefügt werden.
Da du direkt im Terminal der Ubuntu-Server-VM arbeitest, verwendest du dafür zwei virtuelle Konsolen.

**5.1** Erstelle in `text-uebung` die Datei `live.txt` mit mindestens einer Zeile Inhalt.

**5.2** Wechsle mit **Alt+F2** auf eine zweite virtuelle Konsole und melde dich dort an.

**5.3** Finde in der Dokumentation von `tail` heraus, mit welcher Option du eine Datei laufend beobachten kannst. Beobachte damit in der zweiten Konsole die Datei `live.txt`.

**5.4** Wechsle mit **Alt+F1** zurück zur ersten Konsole. Hänge dort mehrere neue Zeilen an `live.txt` an. Du kannst dazu Umleitungen oder einen Texteditor verwenden. Was passiert in der zweiten Konsole, in der du die Datei beobachtest?

**5.5** Beende die laufende Beobachtung in der zweiten Konsole mit **Strg+C**. Dadurch wird der laufende Prozess abgebrochen, indem ihm ein Interrupt-Signal gesendet wird.

**5.6** Erkläre kurz, in welchen Situationen es nützlich sein könnte, eine Datei laufend zu beobachten.
