# Linux-Server Übungen

Dieses Repository enthält Übungen zum Arbeiten mit Linux-Servern im Terminal.
Die Übungen sind nach Themen sortiert und bauen schrittweise aufeinander auf.

## Aufbau

- `01_Dateimanagement/`: Dateien und Verzeichnisse im Terminal erkunden und bearbeiten
- `02_Befehlssyntax_und_Dokumentation/`: Befehlssyntax, Optionen und Dokumentation im Terminal nutzen

Die Verzeichnisse, deren Namen mit einer Zahl beginnen, sind die eigentlichen Übungen.
Öffne zuerst die `README.md` im jeweiligen Übungsverzeichnis.

Einige technische Hilfsverzeichnisse sind versteckt und beginnen mit einem Punkt, zum Beispiel `.tools` oder `.assets`.
Diese Dateien werden von den Lab-Skripten benötigt, müssen aber nicht direkt bearbeitet werden.

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
