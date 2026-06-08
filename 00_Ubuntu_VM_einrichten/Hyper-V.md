# Hyper-V: Ubuntu-Server-VM vorbereiten

In Hyper-V erstellst du die virtuelle Maschine (VM), in der Ubuntu Server später installiert wird.
Dabei legst du fest, welche Ressourcen die VM bekommt, wie sie mit dem Netzwerk verbunden ist und zu welchem Zustand du später zurückkehren kannst.

## Wichtige Begriffe

| Begriff | Bedeutung |
| ------- | --------- |
| Virtuelle Maschine | Ein virtueller Rechner mit eigener CPU-Zuteilung, eigenem Arbeitsspeicher, Datenträger und Netzwerkanschluss. |
| Host | Der physische Rechner, auf dem Hyper-V läuft. |
| Gast | Die VM bzw. das Betriebssystem innerhalb der VM, hier Ubuntu Server. |
| vCPU | Rechenleistung, die der VM als virtuelle CPU-Kerne bereitgestellt wird. |
| Dynamischer Arbeitsspeicher | Hyper-V-Funktion, bei der der Arbeitsspeicher einer VM innerhalb festgelegter Grenzen automatisch angepasst werden kann. |
| Secure Boot | UEFI-Funktion, die nur Bootloader mit passender Vertrauensstellung starten soll. Bei Generation-2-VMs kann die Zertifizierungsstelle relevant sein. |
| Virtueller Datenträger | Eine Datei auf dem Host, die die VM als Datenträger verwendet, bei Hyper-V meist im Format VHDX. |
| VHDX | Virtual Hard Disk v2. Hyper-V-Dateiformat für virtuelle Datenträger. |
| Virtueller Switch | Eine virtuelle Netzwerkkomponente, über die VMs mit dem Host, anderen VMs oder einem Netzwerk verbunden werden. |
| Checkpoint | Ein gespeicherter Zustand einer VM, zu dem du später zurückkehren kannst. |

## Entscheidungen beim Einrichten

Beim Einrichten einer VM triffst du mehrere Entscheidungen.
Sie bestimmen, wie gut die VM läuft, wie sie erreichbar ist und wie einfach du nach Änderungen zu einem funktionierenden Zustand zurückkehren kannst.

### Hyper-V-Generation

Die VM-Generation legt in Hyper-V grundlegende Eigenschaften der virtuellen Hardware fest.
Für moderne Betriebssysteme ist `Generation 2` meistens die bessere Wahl, weil sie UEFI nutzt.
`Generation 1` ist vor allem für ältere Betriebssysteme relevant, die UEFI nicht unterstützen.

Für diese Ubuntu-Server-VM verwendest du `Generation 2`.

### Secure Boot

Secure Boot ist eine UEFI-Funktion.
Sie soll verhindern, dass beim Start ein nicht vertrauenswürdiger Bootloader ausgeführt wird.
Dafür prüft die VM, ob der Bootloader zur eingestellten Vertrauens- bzw. Zertifizierungsstelle passt.

Aktuelle Ubuntu-Versionen sind unter anderem bei der `Microsoft UEFI Certificate Authority` zertifiziert.

Wenn eine Generation-2-VM nicht vom Ubuntu-ISO startet, ist die Secure-Boot-Einstellung eine typische Stelle, die du prüfen solltest.

### CPU, Arbeitsspeicher und Datenträger

CPU, Arbeitsspeicher und Datenträger bestimmen, wie flüssig die VM arbeitet und wie viel Platz für Betriebssystem, Übungen und Logs vorhanden ist.
Mehr Ressourcen machen die VM komfortabler, stehen dann aber dem Host nicht mehr in gleichem Umfang zur Verfügung.

Für diese Ubuntu-Server-VM sind `2 vCPU`, `2-4 GB RAM` und `25-40 GB` Datenträgergröße ein sinnvoller Startpunkt.
Diese Werte reichen für die ersten Übungen aus und belasten den Windows-Rechner nicht unnötig stark.

### Dynamischer Arbeitsspeicher

Mit dynamischem Arbeitsspeicher kann Hyper-V den RAM einer VM innerhalb festgelegter Grenzen automatisch anpassen.
Das kann in größeren Umgebungen sinnvoll sein, macht die tatsächliche RAM-Zuteilung aber weniger leicht nachvollziehbar.

Für diese Übung verwendest du keinen dynamischen Arbeitsspeicher.
Eine feste RAM-Zuteilung ist einfacher zu dokumentieren und für die ersten Übungen übersichtlicher.

### Virtueller Datenträger

Der virtuelle Datenträger ist die Festplatte der VM.
In Hyper-V liegt er als Datei auf dem Host, meistens im Format VHDX.

Die Datenträgergröße sollte genug Platz für Ubuntu Server, Übungen, Konfigurationen und Logs lassen.
Gleichzeitig sollte sie nicht unnötig groß gewählt werden, weil der Speicherplatz auf dem Host begrenzt ist.

Für diese Übung verwendest du einen neuen VHDX-Datenträger mit `25-40 GB`.

### Virtueller Switch

Ein virtueller Switch ist die virtuelle Netzwerkverbindung, an die die VM angeschlossen wird.
Er beantwortet im Kern die Frage: Mit wem darf die VM sprechen?

- Ein **externer Switch** verbindet die VM über einen echten Netzwerkadapter des Hosts mit dem Netzwerk.
  Die VM kann dadurch ähnlich wie ein eigener Rechner im Netzwerk auftreten.
- Ein **interner Switch** verbindet VMs mit dem Host, aber nicht direkt mit dem restlichen Netzwerk.
  Das ist nützlich, wenn Host und VM miteinander kommunizieren sollen, ohne die VM direkt ins externe Netzwerk zu hängen.
- Ein **privater Switch** verbindet nur VMs untereinander.
  Der Host ist dabei nicht Teil dieses virtuellen Netzwerks.
- Der **Default Switch** wird von Hyper-V bereitgestellt und bietet eine einfache Netzwerkanbindung für VMs.
  Er ist praktisch für einen schnellen Start, aber weniger gezielt steuerbar als selbst angelegte Switches.

Für die ersten Übungen ist vor allem wichtig, dass die VM zuverlässig Netzwerkzugang hat und später nachvollziehbar ist, welche Verbindung gewählt wurde.
Verwende den für den Kurs vorgesehenen virtuellen Switch.
Wenn es keine andere Vorgabe gibt, ist der `Default Switch` ein sinnvoller Startpunkt.

### Checkpoints

Ein Checkpoint speichert den Zustand einer VM zu einem bestimmten Zeitpunkt.
Einen Checkpoint anzulegen ist besonders nützlich:

- direkt nach einer erfolgreichen Grundinstallation
- vor größeren Änderungen
- vor Experimenten, die die VM-Konfiguration oder das Betriebssystem verändern

Für diese Übung erstellst du nach der erfolgreichen Installation einen Checkpoint der Grundinstallation.
So hast du einen Rücksprungpunkt, bevor du in späteren Übungen Änderungen am System vornimmst.

Ein Checkpoint ist kein vollständiges Backup.
Er ist ein Rücksprungpunkt für diese VM auf diesem Host und hängt weiterhin von den VM-Dateien auf dem Host ab.
Wenn der Host oder die VM-Dateien verloren gehen, ersetzt er kein unabhängiges Backup.

## Empfohlene Einstellungen im Überblick

| Einstellung | Wert |
| ----------- | ---- |
| VM-Generation | `Generation 2` |
| Secure Boot | aktiviert, Zertifizierungsstelle `Microsoft UEFI Certificate Authority` |
| vCPU | `2` |
| Arbeitsspeicher | `2-4 GB RAM` |
| Dynamischer Arbeitsspeicher | deaktiviert |
| Virtueller Datenträger | `25-40 GB`, VHDX |
| Netzwerk | vorgesehener virtueller Switch, sonst `Default Switch` |
| Checkpoint | nach erfolgreicher Grundinstallation |
