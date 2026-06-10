# Wichtige Systemverzeichnisse

Linux-Systeme folgen grob einer gemeinsamen Verzeichnisstruktur.
Diese Struktur ist im Filesystem Hierarchy Standard (FHS) beschrieben.
Für den Einstieg musst du den Standard nicht auswendig kennen, aber einige Verzeichnisse wirst du immer wieder sehen.

| Pfad | Bedeutung / Inhalt |
| ---- | --------- |
| `/` | Root-Verzeichnis: Anfang des gesamten Dateisystems. |
| `/home` | Home-Verzeichnisse normaler Benutzer, zum Beispiel `/home/alex`. |
| `/root` | Home-Verzeichnis des Benutzers `root`. |
| `/etc` | Systemweite Konfigurationsdateien. |
| `/bin` | Grundlegende ausführbare Programme. Auf modernen Systemen oft ein Symlink nach `/usr/bin`. |
| `/usr` | Viele installierte Programme, Bibliotheken und gemeinsam genutzte Dateien. |
| `/var` | Veränderliche Daten, zum Beispiel Logs, Caches oder Spool-Verzeichnisse. |
| `/tmp` | Temporäre Dateien. Inhalte können beim Neustart oder durch Aufräumdienste verschwinden. |
| `/dev` | Gerätedateien, über die Hardware und virtuelle Geräte angesprochen werden. |
| `/proc` | Virtuelles Dateisystem mit Informationen über Prozesse und Kernelzustand. |

Diese Übersicht ist zum Nachschlagen gedacht.
Du muss die Verzeichnisse nicht auswendig lernen.
