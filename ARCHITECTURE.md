# Architektur der Unterrichtsmaterialien

Dieses Repository ist kein Softwareprojekt im klassischen Sinn.
Es hat trotzdem eine klare Material- und Dokumentationsarchitektur.
Es ist das interne Authoring-Repo; eine spätere Schülerdistribution wird daraus abgeleitet.

## Ebenen

- Nummerierte Verzeichnisse wie `01_Dateimanagement/` und `02_Befehlssyntax_und_Dokumentation/` sind Schülerübungen.
- Die Root-`README.md` ist der Einstiegspunkt für Schüler.
- `.tools/` enthält versionierte technische Infrastruktur, vor allem die gemeinsame Logik für Lab-Skripte.
- `.assets/` kann innerhalb einzelner Übungen technische Hilfsdateien oder Payloads enthalten.
- `_instructor/` enthält Lehrkraftmaterial und gehört zum internen Authoring-Repo.

## Typische Übungsstruktur

Eine Übung enthält typischerweise:

```text
NN_Thema/
├── README.md
├── Konzepte_und_Befehle.md
├── Aufgabe_1_....md
├── Aufgabe_2_....md
├── lab_uebung_N.sh
└── .assets/
```

`lab_uebung_N.sh` und `.assets/` sind optional.
`.assets/` wird nur angelegt, wenn technische Hilfsdateien für die Übung benötigt werden.

## Schülerdateien

Schüler arbeiten mit:

- `README.md`
- `Konzepte_und_Befehle.md`
- Aufgabenblättern
- sichtbaren Lab-Skripten wie `lab_uebung_N.sh`

Schüler sollen keine Dateien aus `_instructor/` benötigen oder sehen.

## Technische Infrastruktur

`.tools/` ist versioniert und für Lab-Skripte notwendig.
Schüler müssen dieses Verzeichnis nicht direkt bearbeiten.

`.assets/` ist ebenfalls versioniert, wenn es existiert.
Es enthält technische Payloads oder Hilfsdateien für eine konkrete Übung.
Diese Dateien werden von Lab-Skripten genutzt, aber nicht als Schüler-Arbeitsdateien aufgeführt.

## Instructor-Material

`_instructor/` enthält Material für die Lehrkraft, zum Beispiel:

- Besprechungen
- Lösungen oder Lösungshinweise
- Zielzustände
- Arbeitsnotizen
- Backups

`_instructor/` ist Teil des internen Authoring-Repos, aber nicht Teil einer späteren Schülerdistribution.
Schüler-READMEs und Aufgaben dürfen nicht auf `_instructor/` verweisen.

## Lab-System

Labs werden durch sichtbare Skripte im jeweiligen Übungsordner erzeugt.
Schüler führen diese Skripte aus dem Übungsordner mit `bash` aus.

Die gemeinsame Logik liegt in:

```text
.tools/lab_common.sh
```

Standardmäßig erzeugen Lab-Skripte ihr Lab unter:

```text
~/labs
```

Lab-Skripte unterstützen über `.tools/lab_common.sh` einheitlich `--force`, `--fresh`, `--name` und ein optionales Zielverzeichnis.
Konkrete Lab-Skripte sollen nur die lab-spezifischen Inhalte beschreiben.

Details zur Erstellung neuer Lab-Skripte stehen in `.tools/README.md`.
