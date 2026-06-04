# Aufgabe 2: Dateien und Verzeichnisse bearbeiten

In dieser Aufgabe übst du Befehle zur Manipulation von Dateien und Verzeichnissen.
Arbeite nur in deinem Home-Verzeichnis und nur innerhalb des Verzeichnisses `datei-uebung`.

## 1. Struktur erstellen

Zuerst erstellst du ein kleines Übungsverzeichnis, in dem alle weiteren Änderungen stattfinden.

**1.1** Begib dich in dein Home-Verzeichnis.

**1.2** Lege dort die folgende Struktur an:

```text
datei-uebung/
├── eingang/
│   ├── notizen.txt
│   ├── todo.txt
│   ├── einkaufsliste.txt
│   ├── wichtige notiz.txt
│   ├── entwurf.md
│   ├── bild-01.jpg
│   ├── bild-02.jpg
│   ├── alt.tmp
│   └── backup.tmp
├── projekt alpha/
│   ├── bilder/
│   └── text/
├── archiv/
│   └── alt/
│       └── protokoll.md
└── papierkorb/
```

**1.3** Überprüfe die Struktur anschließend als Baum.

## 2. Dateien und Verzeichnisse bearbeiten

In diesem Abschnitt veränderst du die zuvor angelegte Struktur. Achte darauf, ob eine Datei erhalten bleiben, verschoben oder umbenannt werden soll.

**2.1** Kopiere `notizen.txt` in das Verzeichnis `projekt alpha/text`. Die ursprüngliche Datei soll in `eingang` erhalten bleiben.

**2.2** Kopiere `wichtige notiz.txt` ebenfalls in das Verzeichnis `projekt alpha/text`.

**2.3** Verschiebe `todo.txt` in das Verzeichnis `projekt alpha/text`.

**2.4** Benenne `einkaufsliste.txt` in `einkauf.txt` um.

**2.5** Verschiebe alle Dateien mit der Endung `.jpg` aus `eingang` in das Verzeichnis `projekt alpha/bilder`. Verwende dafür ein Wildcard-Zeichen.

**2.6** Kopiere alle Dateien mit der Endung `.txt`, die jetzt noch in `eingang` liegen, in das Verzeichnis `archiv/alt`. Verwende dafür ein Wildcard-Zeichen.

**2.7** Kopiere das gesamte Verzeichnis `projekt alpha` in das Verzeichnis `archiv`.

**2.8** Kopiere das Verzeichnis `projekt alpha/text` in das Verzeichnis `archiv/alt`.

**2.9** Lösche die Datei `alt.tmp` aus `eingang`.

**2.10** Lösche alle Dateien mit der Endung `.tmp`, die noch in `eingang` liegen. Verwende dafür ein Wildcard-Zeichen.

**2.11** Lösche die Kopie des Verzeichnisses `text` aus `archiv/alt`.

**2.12** Lasse dir die gesamte Struktur von `datei-uebung` als Baum ausgeben und kontrolliere, ob deine Änderungen plausibel sind.

## 3. Dotfiles

In diesem Abschnitt legst du eine Datei an, die von vielen Programmen standardmäßig nicht angezeigt wird.

**3.1** Lege im Verzeichnis `projekt alpha/text` die leere Datei `.notizen-intern.txt` an.

**3.2** Lasse dir den Inhalt von `projekt alpha/text` ausgeben und überprüfe, ob `.notizen-intern.txt` angezeigt wird.

**3.3** Falls die Datei nicht angezeigt wird: Recherchiere, warum das passiert und wie du sie trotzdem anzeigen kannst.

**3.4** Lasse dir anschließend die gesamte Struktur von `datei-uebung` so als Baum ausgeben, dass auch versteckte Dateien angezeigt werden.

## 4. Symlinks

In diesem Abschnitt erstellst du einen symbolischen Link und untersuchst, wie er im Dateisystem dargestellt wird.

**4.1** Begib dich in das Verzeichnis `datei-uebung`.

**4.2** Führe den Befehl `ln -s "projekt alpha/text" aktueller-text` aus, um einen symbolischen Link (**Symlink**) zu erstellen.

**4.3** Lasse dir die Struktur von `datei-uebung` als Baum ausgeben. Wie wird der symbolische Link dargestellt?

**4.4** Untersuche `aktueller-text` mit `file` und `stat`.

Vergleiche deine Struktur am Ende mit diesem Zielzustand:

```text
datei-uebung/
├── aktueller-text -> projekt alpha/text/
├── eingang/
│   ├── einkauf.txt
│   ├── entwurf.md
│   ├── notizen.txt
│   └── wichtige notiz.txt
├── projekt alpha/
│   ├── bilder/
│   │   ├── bild-01.jpg
│   │   └── bild-02.jpg
│   └── text/
│       ├── .notizen-intern.txt
│       ├── notizen.txt
│       ├── todo.txt
│       └── wichtige notiz.txt
├── archiv/
│   ├── alt/
│   │   ├── einkauf.txt
│   │   ├── notizen.txt
│   │   ├── protokoll.md
│   │   └── wichtige notiz.txt
│   └── projekt alpha/
│       ├── bilder/
│       │   ├── bild-01.jpg
│       │   └── bild-02.jpg
│       └── text/
│           ├── notizen.txt
│           ├── todo.txt
│           └── wichtige notiz.txt
└── papierkorb/
```

## 5. Wildcards, Globbing und Shell-Expansion

In diesem Abschnitt untersuchst du, wie sich Anführungszeichen auf Wildcards auswirken.

**5.1** Begib dich in das Verzeichnis `datei-uebung/eingang`.

**5.2** Führe von dort aus den Befehl `find .. -name "*"` aus. Was wird ausgegeben?

**5.3** Führe anschließend den Befehl `find .. -name *` aus. Was passiert? Notiere die Ausgabe oder Fehlermeldung.

**5.4** Führe nun den Befehl `find .. -name "*.md"` aus. Was wird ausgegeben?

**5.5** Führe anschließend den Befehl `find .. -name *.md` aus. Was wird ausgegeben?

**5.6** Vergleiche die Ausgaben aus den beiden Experimenten. Wie kommen die unterschiedlichen Ausgaben zustande? Recherchiere bei Bedarf zu den Begriffen **Globbing** und **Shell-Expansion**. Welche Rolle spielt die Shell und welche Rolle spielt `find`?
