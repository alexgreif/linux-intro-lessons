# Linux-Server Übungen

Dieses Repository enthält Übungen zum Arbeiten mit Linux-Servern im Terminal.
Die Übungen sind nach Themen sortiert und bauen schrittweise aufeinander auf.

## Aufbau

- `00_Ubuntu_VM_einrichten/`: Ubuntu-Server-VM in Hyper-V einrichten und dokumentieren
- `01_Dateimanagement/`: Dateien und Verzeichnisse im Terminal erkunden und bearbeiten
- `02_Befehlssyntax_und_Dokumentation/`: Befehlssyntax, Optionen und Dokumentation im Terminal nutzen
- `03_Textverarbeitung_im_Terminal/`: Textdateien anzeigen, Ausgaben umleiten und Terminaleditoren üben
- `04_Shell_Umgebung_und_Konfiguration/`: Shell-Umgebung, Variablen und einfache Shell-Konfiguration verstehen
- `05_Sudo_und_Package_Management/`: Admin-Rechte mit `sudo` nutzen und Pakete mit `apt` verwalten
- `06_SSH_praktisch_nutzen/`: per SSH auf die Ubuntu-Server-VM zugreifen und Remote-Sitzungen nutzen
- `07_Nutzer_Gruppen_und_Sudo/`: Nutzer, Gruppen und `sudo` auf Einstiegsebene verwalten
- `08_Dateiberechtigungen/`: Besitzer, Gruppen und Zugriffsrechte von Dateien und Verzeichnissen verwalten

Die Verzeichnisse, deren Namen mit einer Zahl beginnen, sind die eigentlichen Übungen.
Öffne zuerst die `README.md` im jeweiligen Übungsverzeichnis.

## Bestandteile einer Übung

Die `README.md` im Übungsverzeichnis ist dein Einstiegspunkt.
Sie nennt die Lernziele, die empfohlene Bearbeitungsreihenfolge und die benötigten Dateien.

Die `Kurzreferenz.md` fasst die wichtigsten Begriffe, Konzepte und Befehle der Übung kompakt zusammen.
Lies sie als Einstieg in die Übung, um dich mit den relevanten Inhalten vertraut zu machen, und nutze sie während der Aufgaben als Nachschlagehilfe.

Die Aufgabenblätter führen dich durch die praktische Arbeit im Terminal.
Manche Übungen enthalten zusätzlich ein Lab-Skript, das vorbereitete Übungsverzeichnisse erzeugt.

Einige technische Hilfsverzeichnisse sind versteckt und beginnen mit einem Punkt, zum Beispiel `.tools` oder `.assets`.
Diese Dateien werden von den Lab-Skripten benötigt, müssen aber nicht direkt bearbeitet werden.

## Kursunterlagen in der VM

Für manche Aufgaben brauchst du die Kursunterlagen direkt in deiner Ubuntu-VM, zum Beispiel um Lab-Skripte auszuführen.
Lade die Kursunterlagen dazu in der VM herunter und entpacke sie. Führe dazu die folgenden Befehle aus:

```bash
mkdir -p ~/kurs
cd ~/kurs
wget -O linux-server-uebungen.zip "https://github.com/alexgreif/linux-intro-lessons/releases/latest/download/linux-server-uebungen.zip"
unzip linux-server-uebungen.zip
cd linux-server-uebungen
```

Danach kannst du in das passende Übungsverzeichnis wechseln und dort weiterarbeiten.

## Lab-Skripte

Einige Aufgaben benötigen vorbereitete Lab-Verzeichnisse.
Diese Verzeichnisse werden durch Skripte erzeugt.
Um ein Verzeichnis anzulegen, musst du das jeweilige Skript ausführen.
Das passende Skript liegt jeweils im Übungsverzeichnis und heißt `lab_uebung_N.sh`, wobei N für die Nummer der Übung steht.
Das Skript für das Lab aus Übung 1 liegt also zum Beispiel in `01_Dateimanagement` und heißt `lab_uebung_1.sh`.

Die folgende Anleitung erklärt am Beispiel von Übung 1, wie du die Lab-Skripte ausführen kannst.
Wenn du der Anleitung oben genau gefolgt bist, liegen die Übungsverzeichnisse unter `~/kurs/linux-server-uebungen` und du kannst die Befehle eins-zu-eins übernehmen. Hast du die Kursunterlagen woanders abgelegt, musst du den Pfad entsprechend anpassen.

Um das Lab-Skript zu starten, wechselst du zuerst in das passende Übungsverzeichnis:

```bash
cd ~/kurs/linux-server-uebungen/01_Dateimanagement
```

Anschließend startest du das Skript:

```bash
bash lab_uebung_1.sh
```

Standardmäßig wird das Lab unter `~/labs` erstellt.
Im Beispiel entsteht also das Verzeichnis `~/labs/Uebung-1-Lab`.

Mit `--help` kannst du dir die Hilfe zu einem Lab-Skript anzeigen lassen:

```bash
bash lab_uebung_1.sh --help
```

Wenn ein Lab bereits existiert, wird es nicht automatisch überschrieben.
Mit `--force` kannst du ein vorhandenes Lab bewusst zurücksetzen:

```bash
bash lab_uebung_1.sh --force
```

Mit `--fresh` kannst du eine zusätzliche neue Kopie erzeugen:

```bash
bash lab_uebung_1.sh --fresh
```

Nutze `--force` nur, wenn du sicher bist, dass du das vorhandene Lab zurücksetzen möchtest.
