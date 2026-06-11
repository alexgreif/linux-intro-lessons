# Kurzreferenz: `sudo` und Package Management

Auf Linux-Servern werden Programme meistens über Pakete installiert.
Der Paketmanager lädt diese Pakete herunter, installiert sie und kann sie später aktualisieren oder entfernen.
Viele Paketaktionen verändern das System und benötigen deshalb Admin-Rechte.

## Inhalt

- [Befehle](#befehle)
- [`sudo`](#sudo)
- [Package Management mit `apt`](#package-management-mit-apt)
- [Paketlisten, Pakete und Aktualisierungen](#paketlisten-pakete-und-aktualisierungen)

## Befehle

| Befehl | Beschreibung | Beispiel |
| ------ | ------------ | -------- |
| `sudo` | Führt einen einzelnen Befehl mit erhöhten Rechten aus. | `sudo apt update` |
| `apt update` | Aktualisiert die lokalen Paketlisten. | `sudo apt update` |
| `apt upgrade` | Aktualisiert installierte Pakete, wenn neuere Versionen verfügbar sind. | `sudo apt upgrade` |
| `apt install` | Installiert ein Paket. | `sudo apt install tree` |
| `apt remove` | Entfernt ein installiertes Paket. | `sudo apt remove tree` |
| `apt show` | Zeigt Informationen zu einem Paket an. | `apt show tree` |

## `sudo`

`sudo` steht für *superuser do*.
Damit führst du einen einzelnen Befehl mit erhöhten Rechten aus, normalerweise mit den Rechten des Benutzers `root`.
`root` ist der klassische Administrator-Benutzer auf Linux-Systemen und darf fast alles am System verändern.

Nicht jeder Benutzer darf `sudo` verwenden.
Dieses Recht wird gezielt vergeben, zum Beispiel über die Gruppe `sudo`.
Auf Ubuntu darf der bei der Installation angelegte erste Benutzer `sudo` normalerweise nutzen.

`sudo` ist zum Beispiel nötig, wenn ein Befehl Systemdateien verändert, Pakete installiert oder Dienste verwaltet.

Nutze `sudo` bewusst:

- Lies den Befehl vor dem Ausführen noch einmal.
- Verwende `sudo` nur, wenn es nötig ist.

## Package Management mit `apt`

`apt` steht für *Advanced Package Tool* und ist auf Ubuntu ein Werkzeug zur Paketverwaltung.
Mit `apt` installierst, aktualisierst und entfernst du Software.
Software wird dabei in **Paketen** bereitgestellt.
Ein Paket kann zum Beispiel neben einem Programm auch Hilfedateien oder vorbereitete Konfigurationsdateien enthalten.

Viele `apt`-Befehle verändern das System und brauchen deshalb Admin-Rechte.
Darum führst du zum Beispiel `apt update`, `apt upgrade`, `apt install` und `apt remove` normalerweise mit `sudo` aus.

## Paketlisten und Aktualisierungen

**Paketlisten** enthalten Informationen darüber, welche Pakete und Paketversionen verfügbar sind.
Dein System speichert diese Informationen lokal.

`apt update` installiert noch keine neuen Programmversionen.
Der Befehl aktualisiert nur die lokalen Paketlisten.
Dadurch erfährt dein System, welche Paketversionen verfügbar sind.

`apt upgrade` vergleicht die installierten Pakete mit den lokalen Paketlisten und aktualisiert Pakete, für die dort neuere Versionen verfügbar sind.

Die typische Reihenfolge ist deshalb:

```bash
sudo apt update
sudo apt upgrade
```
