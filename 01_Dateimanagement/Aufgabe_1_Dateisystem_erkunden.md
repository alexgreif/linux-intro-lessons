# Aufgabe 1: Dateisystem erkunden

In dieser Aufgabe übst du Befehle zur Navigation und zur Ausgabe von Metadaten.
Dabei erhältst du einen ersten Einblick in den **Filesystem Hierarchy Standard (FHS)**, also in die typische Verzeichnisstruktur von Linux-Systemen. Wir betrachten dazu das Home-Verzeichnis, das Root-Verzeichnis, `/home`, `/var`, `/etc` und `/bin`.

Arbeite in dieser Aufgabe nur lesend: Du sollst Dateien und Verzeichnisse nur ansehen, durchsuchen und Informationen über sie ausgeben. Erstelle, verschiebe, benenne und lösche nichts.

## 1. Startpunkt und Home-Verzeichnis

Zu Beginn orientierst du dich in dem Verzeichnis, in dem dein Terminal startet.

**1.1** Öffne ein Terminal. In welchem Verzeichnis befindest du dich direkt nach dem Öffnen?

**1.2** Verschaffe dir einen Überblick über den Inhalt dieses Verzeichnisses.

**1.3** Lasse dir die Verzeichnisstruktur deines aktuellen Verzeichnisses als Baum ausgeben.

## 2. Root-Verzeichnis und wichtige FHS-Verzeichnisse

Jetzt wechselst du vom eigenen Home-Verzeichnis in die oberste Ebene des Linux-Dateisystems.

**2.1** Begib dich in das Root-Verzeichnis `/` und verschaffe dir einen Überblick über die Verzeichnisse dort. Suche in der Ausgabe `/home`, `/var`, `/etc` und `/bin`. Diese Verzeichnisse untersuchst du im Folgenden genauer.

## 3. Das Home-Verzeichnis

Das Verzeichnis `/home` enthält die Benutzerverzeichnisse des Systems.

**3.1** Untersuche das Verzeichnis `/home`. Welche Unterverzeichnisse findest du dort?

## 4. Das var-Verzeichnis

In `/var` liegen Daten, die sich im laufenden Betrieb verändern können.

**4.1** Begib dich in das Verzeichnis `/var` und verschaffe dir einen Überblick über die Unterverzeichnisse.

**4.2** Begib dich anschließend in `/var/log`. Untersuche die Dateien `syslog` und `auth.log`: Was ist jeweils der Dateityp? Wie groß sind die Dateien? Welche Zeitstempel werden angezeigt? Wann wurden die Dateien zuletzt bearbeitet? Wer ist jeweils der Besitzer?

**4.3** Falls `syslog` oder `auth.log` auf deinem System nicht vorhanden ist, wähle stattdessen eine andere Logdatei aus `/var/log` und notiere, welche Datei du untersucht hast.

## 5. Das etc-Verzeichnis

In `/etc`, häufig "etsy" ausgesprochen, findest du viele systemweite Konfigurationsdateien.

**5.1** Begib dich in das Verzeichnis `/etc`. Welche Dateiendungen kommen dort häufig vor? Wofür könnten diese Endungen stehen? Untersuche bei einigen Beispielen auch den Dateityp.

**5.2** `/etc` enthält systemweite Konfigurationsdateien. Einige davon werden wir später noch genauer betrachten, zum Beispiel `passwd`, `shadow`, `sudoers`, `hosts`, `hostname` und `fstab`. Schaue dir von mehreren dieser Dateien Größe und Dateityp an.

**5.3** Lasse dir alle Dateien mit der Endung `.conf` in `/etc` und seinen Unterverzeichnissen ausgeben.

## 6. Größenvergleich und Sonderfall bin

Zum Schluss vergleichst du mehrere Systemverzeichnisse und untersuchst eine Besonderheit von `/bin`.

**6.1** Begib dich wieder in das Root-Verzeichnis `/`. Welches der Verzeichnisse `/home`, `/var`, `/etc` und `/bin` ist am größten?

**6.2** Begib dich nun in `/bin` und lasse dir die Inhalte des Verzeichnisses ausgeben. Vergleiche die Ausgabe mit deiner vorherigen Beobachtung zur Größe. Passt das zusammen?

**6.3** Überlege zuerst: Welche Ausgabe erwartest du, wenn du in `/bin` den Befehl `ls ..` ausführst?

**6.4** Führe nun `ls ..` aus und vergleiche die Ausgabe mit deiner Vermutung.

**6.5** Führe anschließend `cd ..` und danach `ls` aus. Warum stimmt diese Ausgabe möglicherweise nicht mit der Ausgabe von `ls ..` überein?

**6.6** Nutze die Befehle `file` und `stat`, um den Grund zu untersuchen. Führe eine kleine Google- oder KI-Recherche zum Begriff **Symlink** durch, um zu verstehen, warum sich `/bin` so verhält.
