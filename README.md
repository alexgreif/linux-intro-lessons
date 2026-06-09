# Linux-Server Übungen

Dieses Repository enthält Übungen zum Arbeiten mit Linux-Servern im Terminal.
Die Übungen sind nach Themen sortiert und bauen schrittweise aufeinander auf.

## Aufbau

- `00_Ubuntu_VM_einrichten/`: Ubuntu-Server-VM in Hyper-V einrichten und dokumentieren
- `01_Dateimanagement/`: Dateien und Verzeichnisse im Terminal erkunden und bearbeiten
- `02_Befehlssyntax_und_Dokumentation/`: Befehlssyntax, Optionen und Dokumentation im Terminal nutzen
- `03_Textverarbeitung_im_Terminal/`: Textdateien anzeigen, Ausgaben umleiten und Terminaleditoren üben
- `04_Shell_Umgebung_und_Konfiguration/`: Shell-Umgebung, Variablen und einfache Shell-Konfiguration verstehen

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

Spätestens vor dem ersten Lab-Skript müssen die Kursunterlagen auch in deiner Ubuntu-VM liegen.
Lade sie dazu in der VM herunter und entpacke sie:

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
Das passende Skript liegt jeweils im Übungsverzeichnis und beginnt mit `lab_`.

Um ein Lab-Skript zu starten, wechselst du zuerst in das passende Übungsverzeichnis.
Danach führst du das Skript mit `bash` aus:

```bash
cd 02_Befehlssyntax_und_Dokumentation
bash lab_uebung_2.sh
```

Standardmäßig wird das Lab unter `~/labs` erstellt.
Im Beispiel entsteht also das Verzeichnis `~/labs/Uebung-2-Lab`.

Mit `--help` kannst du dir die Hilfe zu einem Lab-Skript anzeigen lassen:

```bash
bash lab_uebung_2.sh --help
```

Wenn ein Lab bereits existiert, wird es nicht automatisch überschrieben.
Mit `--force` kannst du ein vorhandenes Lab bewusst zurücksetzen:

```bash
bash lab_uebung_2.sh --force
```

Mit `--fresh` kannst du eine zusätzliche neue Kopie erzeugen:

```bash
bash lab_uebung_2.sh --fresh
```

Nutze `--force` nur, wenn du sicher bist, dass du das vorhandene Lab zurücksetzen möchtest.
