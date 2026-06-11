# Kurzreferenz: Nutzer, Gruppen und `sudo`

Linux-Systeme unterscheiden zwischen Benutzern und Gruppen.
Ein Benutzer ist ein Konto auf dem System.
Gruppen fassen Benutzer zusammen und können Rechte bündeln, zum Beispiel für `sudo` oder für den Zugriff auf gemeinsame Dateien.
Als Administrator musst du einerseits verstehen, mit welchen Rechten deine eigenen Befehle laufen.
Andererseits verwaltest du Benutzer und Gruppen, damit andere Konten die passenden Rechte erhalten.

## Inhalt

- [Befehle](#befehle)
- [Benutzer und Gruppen](#benutzer-und-gruppen)
- [Wichtige Dateien](#wichtige-dateien)
- [`sudo`-Rechte über Gruppen](#sudo-rechte-über-gruppen)
- [Testbenutzer verwalten](#testbenutzer-verwalten)

## Befehle

| Befehl | Beschreibung | Beispiel |
| ------ | ------------ | -------- |
| `whoami` | Zeigt den aktuellen Benutzernamen an. | `whoami` |
| `id` | Zeigt Benutzer-ID, Gruppen-ID und Gruppenmitgliedschaften an. | `id` |
| `groups` | Zeigt die Gruppen eines Benutzers an. | `groups alex` |
| `getent passwd` | Zeigt den Benutzereintrag zu einem Namen an. | `getent passwd alex` |
| `getent group` | Zeigt den Gruppeneintrag zu einem Namen an. | `getent group sudo` |
| `adduser` | Legt einen neuen Benutzer an. | `sudo adduser kurstest` |
| `usermod -aG` | Fügt einen Benutzer zu einer zusätzlichen Gruppe hinzu. | `sudo usermod -aG sudo kurstest` |
| `su -` | Wechselt in eine Login-Shell eines anderen Benutzers. | `su - kurstest` |
| `deluser --remove-home` | Entfernt einen Benutzer und sein Home-Verzeichnis. | `sudo deluser --remove-home kurstest` |

## Benutzer und Gruppen

Jeder Prozess läuft unter einem Benutzer.
Wenn du im Terminal arbeitest, laufen deine Befehle normalerweise unter dem Benutzer, mit dem du angemeldet bist.

Die Befehle aus der [Befehlstabelle](#befehle) helfen dir zu prüfen, unter welchem Benutzer du arbeitest und zu welchen Gruppen ein Benutzer gehört.

## Wichtige Dateien

Benutzer, Gruppen und `sudo`-Regeln hängen mit wichtigen Systemdateien zusammen:

| Datei | Bedeutung |
| ----- | --------- |
| `/etc/passwd` | enthält Benutzerkonten, Home-Verzeichnisse und Login-Shells |
| `/etc/group` | enthält Gruppen und Gruppenmitglieder |
| `/etc/sudoers` | enthält Regeln dafür, wer `sudo` verwenden darf |
| `/etc/sudoers.d/` | enthält zusätzliche `sudo`-Regeln in einzelnen Dateien |

Diese Dateien sind systemkritisch.
Wir untersuchen sie in der Regel nur lesend oder nutzen Werkzeuge wie `getent`.
Auch `sudo`-Regeln werden nicht direkt mit einem normalen Texteditor bearbeitet.
Stattdessen gibt es hierfür den Befehl `visudo`.

## `sudo`-Rechte über Gruppen

Nicht jeder Benutzer darf `sudo` verwenden.
Auf Ubuntu erhalten Benutzer `sudo`-Rechte normalerweise über die Gruppe `sudo`.
Wenn ein Benutzer Mitglied dieser Gruppe ist, darf er Befehle mit `sudo` ausführen.

## Testbenutzer verwalten

Wenn du auf Ubuntu einen Benutzer mit `adduser` anlegst, wird dabei auch ein Home-Verzeichnis für diesen Benutzer erstellt.

Beim Hinzufügen zu einer zusätzlichen Gruppe mit `usermod` ist die Option `-aG` wichtig:

- `-a` bedeutet *append*, also hinzufügen.
- `-G` nennt die zusätzlichen Gruppen.

Ohne `-a` wird die Liste der zusätzlichen Gruppen ersetzt.
Deshalb ist bei Gruppenänderungen besondere Vorsicht wichtig.

`deluser` wird häufig mit der Option `--remove-home` genutzt, damit beim Entfernen eines Benutzers auch sein Home-Verzeichnis entfernt wird.
