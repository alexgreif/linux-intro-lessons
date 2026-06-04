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
