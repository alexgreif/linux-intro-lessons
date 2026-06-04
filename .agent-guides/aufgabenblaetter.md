# Guide: Aufgabenblätter

Dieser Guide beschreibt, wie Aufgabenblätter gestaltet werden sollen.
Orientiere dich an den bestehenden Aufgaben in `01_Dateimanagement/` und `02_Befehlssyntax_und_Dokumentation/`.

## Zweck

Aufgabenblätter führen Schüler durch praktische Arbeit im Terminal.
Sie sollen Anwendung, Beobachtung, Vergleich und Reflexion ermöglichen.

Die Aufgaben sollen Anfänger nicht verlieren, aber auch nicht jeden Schritt mechanisch vorgeben.
Die Selbstständigkeit soll innerhalb einer Übung oder über mehrere Übungen hinweg zunehmen.

## Aufbau

Typische Struktur:

```md
# Aufgabe N: Titel

Kurze Einleitung zur Aufgabe.

## 1. Abschnittstitel

Kurzer Einleitungssatz.

**1.1** Konkreter Teilschritt.

**1.2** Nächster Teilschritt.
```

Abschnitte werden nummeriert.
Teilschritte werden im Format `1.1`, `1.2`, … geschrieben.

## Lernkurve

Eine gute Aufgabe entwickelt sich in Phasen:

- zuerst Orientierung oder Vorbereitung
- dann Anwendung an konkreten Dateien, Verzeichnissen oder Befehlen
- danach Vergleich, Recherche oder Reflexion
- am Ende ggf. ein Zielzustand oder eine selbstständigere Anwendung

Vermeide sprunghafte Aufgabenfolgen, die ständig zwischen Befehlen oder Themen wechseln.
Arbeite lieber länger zusammenhängend mit einem Befehl, Konzept oder Szenario.

Gute Aufgaben haben häufig einen kleinen Spannungsbogen:

- erst eine erwartbare Handlung
- dann eine Beobachtung oder ein Vergleich
- anschließend eine Erklärung, Recherche oder Einordnung

Beispiele für solche Spannungsbögen:

- erst `ls ..` vorhersagen, dann ausführen, dann mit `file` und `stat` den Symlink-Sonderfall untersuchen
- erst eine Dotfile anlegen, dann mit normalem `ls` nicht sehen, dann selbst recherchieren, warum sie versteckt ist
- erst quoted und unquoted Wildcards ausführen, dann Globbing und Shell-Expansion als Ursache einordnen
- erst `du` und `stat` vergleichen, dann Dateigröße und belegten Speicherplatz erklären

## Didaktische Arbeitsweise

Aufgaben dürfen neue Themen auf Einführungsebene praktisch erarbeiten, bevor sie vollständig systematisch erklärt werden.
Schüler sollen dadurch zuerst Beobachtungen, Motivation und Kontext gewinnen.
Die allgemeinere oder theoretischere Einordnung kann anschließend in der Besprechung erfolgen.

Diese Arbeitsweise ist besonders wertvoll, wenn:

- Schüler ein neues Konzept zunächst im echten Gebrauch sehen sollen
- die vollständige Erklärung zu abstrakt wäre, bevor es praktische Erfahrung gibt
- eine spätere Besprechung die Beobachtungen systematisch einordnen soll
- ein Thema für die aktuelle Übung nur angerissen, aber noch nicht vollständig behandelt wird

Aufgaben dürfen deshalb gezielt mit Konzepten arbeiten, die noch nicht vollständig im Konzeptdokument erklärt wurden.
Dann muss der Arbeitsauftrag aber so gestaltet sein, dass Schüler die Beobachtung sicher und sinnvoll durchführen können.
Die Aufgabe soll nicht voraussetzen, dass sie das neue Konzept bereits vollständig verstanden haben.

## Echtes System Und Realistische Labs

Wenn es sinnvoll und sicher ist, sollen Schüler am echten Linux-Dateisystem arbeiten.
Systempfade wie `/etc`, `/var`, `/home` oder `/var/log` können lesend untersucht werden, damit Schüler ein Gefühl für echte Strukturen, Dateien und Konventionen entwickeln.

Dabei muss nicht jede verwendete Datei oder jedes verwendete Verzeichnis vollständig erklärt werden.
Es reicht, die Aspekte herauszugreifen, die zum aktuellen Lernstand passen.
Unklare Details können später aufgegriffen oder bewusst offen gelassen werden.

Labs sollen ebenfalls möglichst realistisch wirken.
Sie dürfen vereinfachte oder künstlich erzeugte Strukturen enthalten, sollten aber nach Möglichkeit wie plausible Arbeitsverzeichnisse, Konfigurationen, Logs oder Projektstrukturen aussehen.
Labs sind besonders geeignet, wenn Schüler Dateien verändern, löschen, umleiten oder konfigurieren sollen.

Nutze diese Arbeitsweise nicht dogmatisch.
Manche Themen brauchen kleinteiligere Übungsstrukturen, künstliche Mini-Beispiele oder rein geführte Aufgaben.
Die Balance aus echtem System, realistischen Labs und gezielten Mini-Szenarien soll zur jeweiligen Übung passen.

## Aufgabenmuster Aus Übung 1 Und 2

Die bisherigen Übungen nutzen einige Muster, die für neue Aufgaben als Vorbild dienen können.

### Geführte Erkundung

Geführte Erkundungen eignen sich, wenn Schüler reale Systemstrukturen kennenlernen sollen.

Gutes Muster:

```md
## 4. Das var-Verzeichnis

In `/var` liegen Daten, die sich im laufenden Betrieb verändern können.

**4.1** Begib dich in das Verzeichnis `/var` und verschaffe dir einen Überblick über die Unterverzeichnisse.

**4.2** Begib dich anschließend in `/var/log`. Untersuche ausgewählte Logdateien: Was ist jeweils der Dateityp? Wie groß sind die Dateien? Welche Zeitstempel werden angezeigt?
```

Warum gut:

- Der Abschnitt nennt knapp, warum das Verzeichnis relevant ist.
- Die Aufgabe bleibt lesend und sicher.
- Nicht jedes Detail des echten Systems muss vollständig erklärt werden.
- Schüler bekommen ein Gefühl für echte Linux-Strukturen.

### Erst Handeln, Dann Kontrollieren

Bei verändernden Aufgaben soll der erwartete Zustand kontrollierbar sein.

Gutes Muster:

```md
**2.5** Verschiebe alle Dateien mit der Endung `.jpg` aus `eingang` in das Verzeichnis `projekt alpha/bilder`. Verwende dafür ein Wildcard-Zeichen.

**2.12** Lasse dir die gesamte Struktur von `datei-uebung` als Baum ausgeben und kontrolliere, ob deine Änderungen plausibel sind.
```

Warum gut:

- Die Handlung ist konkret.
- Der Lernfokus ist klar, hier Wildcards.
- Die Kontrolle zwingt nicht zu einer bestimmten Lösung, macht Fehler aber sichtbar.

### Experiment Mit Überraschung

Ein gutes Experiment erzeugt eine Beobachtung, die nicht sofort selbstverständlich ist.

Gutes Muster:

```md
**5.2** Führe `find .. -name "*"` aus. Was wird ausgegeben?

**5.3** Führe anschließend `find .. -name *` aus. Was passiert? Notiere die Ausgabe oder Fehlermeldung.

**5.6** Vergleiche die Ausgaben. Recherchiere bei Bedarf zu den Begriffen **Globbing** und **Shell-Expansion**.
```

Warum gut:

- Die Befehle unterscheiden sich nur minimal.
- Der Unterschied erzeugt eine echte Beobachtung.
- Recherchebegriffe geben Orientierung, ohne die Erklärung vorwegzunehmen.

### Selbstständige Anwendung

Spätere Aufgaben dürfen deutlich offener sein, wenn die nötigen Werkzeuge vorher eingeführt wurden.

Gutes Muster:

```md
Arbeite selbstständig mit den Befehlen aus den bisherigen Aufgaben.

Stelle die Struktur so wieder her, dass `Lab-Chaos` dem folgenden Zielzustand entspricht.
```

Warum gut:

- Die Aufgabe bündelt mehrere vorherige Konzepte.
- Der Zielzustand macht Erfolg überprüfbar.
- Hinweise unterstützen, ohne kleinschrittig zu werden.

### Dokumentation Und Anwendung Verbinden

Dokumentation soll nicht isoliert abgefragt werden.
Sie ist besonders wertvoll, wenn Schüler eine Option oder Syntax direkt anwenden.

Gutes Muster:

```md
Finde in der manpage zu `du` heraus, was `--apparent-size` bewirkt und wende es auf `~/.bashrc` an.
```

Warum gut:

- Die Recherche hat einen konkreten Zweck.
- Die Anwendung zeigt direkt, ob die Bedeutung verstanden wurde.
- Die Aufgabe bleibt an einem Befehl und einem Beispielkontext.

## Formulierung

Arbeitsaufträge sollen beobachtbar und klar sein.

Gute Formulierungen:

- `Vergleiche ...`
- `Notiere ...`
- `Erkläre in 1-2 Sätzen ...`
- `Kontrolliere anschließend ...`
- `Recherchiere ..., ohne ...`

Erzwinge keine Frage, wenn ein Arbeitsauftrag klarer ist.
Eine Aufgabe muss nicht immer mit einem Fragezeichen enden.

Vage Formulierung:

```md
Was fällt dir auf?
```

Besser:

```md
Vergleiche die beiden Ausgaben. Notiere einen Unterschied, der für die weitere Arbeit wichtig ist.
```

## Befehlsvorgaben

Gib Befehle explizit vor, wenn:

- ein neues Konzept eingeführt wird
- die Syntax ungewohnt ist
- der Fokus auf Beobachtung oder Reflexion liegt
- ein bestimmter Sonderfall demonstriert werden soll

Gib Befehle weniger explizit vor, wenn:

- das Konzept bereits eingeführt wurde
- Schüler bekannte Befehle gezielt auswählen sollen
- Recherche Teil des Lernziels ist

Vermeide unnötige Hinweise wie “Dafür brauchst du `-r`”, wenn genau das herausgefunden werden soll.
Wenn Wildcards Lernziel sind, darf und soll die Aufgabe aber ausdrücklich verlangen, ein Wildcard-Zeichen zu verwenden.

## Rechercheaufgaben

Rechercheaufgaben sollen einen Ansatz geben, ohne die Lösung vollständig vorwegzunehmen.

Gutes Muster:

```md
Recherchiere bei Bedarf zu den Begriffen **Globbing** und **Shell-Expansion**.
```

So erhalten Schüler Suchbegriffe, müssen die Bedeutung aber selbst erschließen.

## Labs und Sicherheit

- Schreib- und Löschoperationen nur in Home- oder Lab-Verzeichnissen verlangen.
- Systempfade wie `/etc` oder `/var/log` nur lesend untersuchen lassen.
- Bei verändernden `find -exec`-Aufgaben den Lab-Bereich klar nennen.
- Weisen Aufgaben auf Zugriffsmeldungen hin, soll klar sein, ob diese nur beobachtet, ausgeblendet oder bewusst mit `sudo` untersucht werden.
- `sudo` nicht inflationär empfehlen.
- Wenn ein reales Systemobjekt genutzt wird, muss klar sein, ob nur Beobachtung, Vergleich oder eine spätere Besprechung erwartet wird.

## Zielbäume

Zielbäume sind sinnvoll, wenn Schüler eine Struktur herstellen oder kontrollieren sollen.

Die Darstellung darf zur Klarheit wie `tree -F` wirken, zum Beispiel mit `/` für Verzeichnisse oder `->` für Symlinks.
Verlange `tree -F` aber nur, wenn genau diese Option Lernziel ist.

Gutes Muster:

```text
datei-uebung/
├── aktueller-text -> projekt alpha/text/
├── eingang/
│   └── notizen.txt
└── papierkorb/
```

## Abschnittsmuster

Gutes Muster:

```md
## 2. Dateien und Verzeichnisse bearbeiten

In diesem Abschnitt veränderst du die zuvor angelegte Struktur. Achte darauf, ob eine Datei erhalten bleiben, verschoben oder umbenannt werden soll.

**2.1** Kopiere `notizen.txt` in das Verzeichnis `projekt alpha/text`. Die ursprüngliche Datei soll in `eingang` erhalten bleiben.
```

Warum gut:

- Der Abschnitt hat einen klaren Fokus.
- Der Einleitungssatz bereitet die Denkaufgabe vor.
- Der Teilschritt nennt Handlung, Pfade und erwartetes Ergebnis.

## Qualitätscheck

Prüfe vor Abschluss:

- Hat jeder Abschnitt einen klaren Fokus?
- Gibt es eine erkennbare Lernkurve?
- Sind Befehle und Dokumentation sinnvoll verbunden?
- Werden Schüler nicht unnötig zwischen Themen hin- und hergeschickt?
- Sind alle Pfade reproduzierbar?
- Finden verändernde Befehle nur in sicheren Bereichen statt?
- Sind Zielzustände und Kontrollaufgaben eindeutig?
