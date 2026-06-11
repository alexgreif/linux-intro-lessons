# Aufgabe 1: SSH praktisch nutzen

In dieser Aufgabe verbindest du dich per SSH mit deiner Ubuntu-Server-VM.
Du nutzt dafür den Benutzer deiner VM und meldest dich mit Passwort an.

## 1. Verbindungsdaten vorbereiten

Zuerst brauchst du die Adresse deiner VM und deinen Benutzernamen.

**1.1** Melde dich direkt an der Konsole deiner Ubuntu-Server-VM an.

**1.2** Prüfe, mit welchem Benutzernamen du angemeldet bist.

**1.3** Lasse dir die IP-Adressen deiner VM anzeigen.
Suche die IPv4-Adresse des Netzwerkinterfaces, das mit deinem normalen Netzwerk verbunden ist.
Die Adresse `127.0.0.1` ist dafür nicht geeignet, weil sie nur auf das eigene System zeigt.
Auch die Broadcast-IP ist nicht geeignet.

**1.4** Notiere die SSH-Verbindungsform für deine VM:

```text
ssh <benutzername>@<ip-adresse>
```

## 2. Per SSH verbinden

Jetzt stellst du die Verbindung von deinem Host-System aus her.

**2.1** Öffne auf deinem Host-System ein Terminal.

**2.2** Stelle mit der Verbindungsform aus **1.4** eine SSH-Verbindung zu deiner VM her.

**2.3** Prüfe nach der Anmeldung:

- Auf welchem System arbeitest du?
- Mit welchem Benutzer bist du angemeldet?
- In welchem Verzeichnis befindest du dich?

## 3. Mehrere SSH-Sitzungen nutzen

In diesem Abschnitt öffnest du mehrere Sitzungen und untersuchst, wie sie auf dem Server sichtbar werden.

**3.1** Öffne auf deinem Host-System ein zweites Terminal und stelle eine zweite SSH-Verbindung zu deiner VM her.

**3.2** Lasse dir in einer SSH-Sitzung mit `w` anzeigen, welche Benutzer und Sitzungen gerade auf dem System sichtbar sind.
Probiere anschließend auch `who` aus und vergleiche die Ausgabe.

**3.3** Was sind die Terminalnamen der beiden SSH-Sitzungen?

**3.4** Beende eine SSH-Sitzung mit `exit`.
Prüfe danach in der anderen SSH-Sitzung erneut, welche Sitzungen sichtbar sind.

**3.5** Beende auch die zweite SSH-Sitzung.
