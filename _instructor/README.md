# Instructor-Bereich

Dieses Verzeichnis enthält interne Materialien für die Lehrkraft.
Es ist Teil des Authoring-Repos, aber nicht Teil der Schülerdistribution.

## Wichtige Dateien

- `Kursplanung.md`: grober thematischer Verlauf des Kurses
- `Ideen_und_Todos.md`: offene Ideen und noch nicht umgesetzte Punkte
- `<Übung>/Besprechung.md`: Hinweise für Nachbesprechungen
- `<Übung>/Ideen.md`: Rohmaterial und Planungsnotizen zu einzelnen Übungen
- `tools/`: interne Werkzeuge für Veröffentlichung und Pflege

## Schülerdistribution

Die Schülerunterlagen werden als ZIP-Paket über GitHub Releases bereitgestellt.
Der stabile Download-Link lautet:

```text
https://github.com/alexgreif/linux-intro-lessons/releases/latest/download/linux-server-uebungen.zip
```

### Automatisch veröffentlichen

1. Öffne das Repository auf GitHub.
2. Gehe zum Tab **Actions**.
3. Wähle links den Workflow **Publish student package** aus.
4. Klicke auf **Run workflow**.
5. Wähle den gewünschten Branch aus, normalerweise `main`.
6. Klicke erneut auf **Run workflow**.
7. Warte, bis der Lauf abgeschlossen ist.
8. Prüfe unter **Releases**, ob ein neues Release mit `linux-server-uebungen.zip` erstellt wurde.

Der Workflow:

1. checkt das Repository aus
2. erzeugt mit `_instructor/tools/create_student_package.sh` das ZIP-Paket
3. veröffentlicht das Paket als neues GitHub Release

Dadurch bleibt der `latest/download`-Link für Schüler stabil.

### Lokal testen

Zum lokalen Testen kannst du das Paket manuell erzeugen:

```bash
_instructor/tools/create_student_package.sh
```

Das erzeugte ZIP liegt danach unter:

```text
dist/linux-server-uebungen.zip
```

`dist/` wird nicht versioniert.
