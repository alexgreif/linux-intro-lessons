# Guide: Aufgabenblätter

Dieser Guide beschreibt, wie Aufgabenblätter gestaltet werden sollen.
Orientiere dich bei Bedarf an bestehenden Aufgabenblättern, besonders an aktuellen Übungen mit ähnlichem Thema oder ähnlicher Arbeitsform.

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

Die Kurzreferenz ist fachlicher Anker, aber keine Gliederungsschablone für das Aufgabenblatt.
Aufgaben sollen nicht nur die Kategorien aus `Kurzreferenz.md` nacheinander abprüfen.
Nach einer kurzen Einstiegsebene sollen Befehle und Konzepte miteinander kombiniert werden, damit Transferfähigkeit entsteht.

Vermeide Aufgaben, die nur bestätigen, was vorher bereits erklärt wurde.
Ein Vergleich ist nur dann sinnvoll, wenn daraus eine Beobachtung, Entscheidung oder Einordnung entsteht.
Ein bloßes “Vergleiche `head datei` und `tail datei`” ist zu flach, wenn am Ende nur herauskommt, dass der eine Befehl den Anfang und der andere das Ende ausgibt.

Formuliere stattdessen Arbeitsaufträge, bei denen der Befehl ein Werkzeug für ein kleines Ziel ist:

```md
Erstelle eine Datei, die die ersten 10 Zeilen von `/etc/services` enthält.
Hänge anschließend die letzten 15 Zeilen derselben Datei an.
Kontrolliere das Ergebnis.
```

Warum besser:

- `head`, `tail` und Umleitungen werden kombiniert.
- Die Aufgabe hat einen überprüfbaren Zielzustand.
- Schüler müssen bekannte Werkzeuge passend auswählen, statt nur eine Definition zu wiederholen.

## Entwurfsprinzipien

Gute Aufgaben entstehen aus sinnvollen Arbeitsphasen, nicht aus der Reihenfolge der Kurzreferenz.
Nutze diese Prinzipien schon beim ersten Entwurf:

- **Kontext zuerst:** Mache kurz klar, warum eine Datei, ein Befehl oder ein Problem betrachtet wird.
- **Werkzeug als Mittel:** Befehle sollen einem Ziel dienen, nicht nur einmal ausprobiert werden.
- **Beobachtung mit Konsequenz:** Vergleiche sollen zu einer Erklärung, Entscheidung oder Folgehandlung führen.
- **Integration nach Einstieg:** Nach kurzen Grundübungen sollen mehrere Konzepte oder Werkzeuge kombiniert werden.
- **Eigenständigkeit dosieren:** Bekannte Werkzeuge werden weniger explizit vorgegeben; neue oder überraschende Syntax wird gezielter angeleitet.

Vermeide flache Aufgabenmuster:

- `Vergleiche Befehl A und Befehl B`, wenn dabei nur bereits bekannte Definitionen bestätigt werden.
- `Führe Option X aus`, wenn die Auswahl oder sinnvolle Anwendung der Option eigentlich Lernziel ist.
- Abschnitte, die nur die Reihenfolge aus `Kurzreferenz.md` wiederholen.
- Aufgaben, deren einziges Ergebnis ist: “Der Befehl tut das, was vorher erklärt wurde.”

Standard-Ausgangspunkt für neue Abschnitte:

```md
## N. Abschnittstitel

Kurzer Kontext: Welche reale oder plausible Situation liegt vor?

**N.1** Einstieg oder Orientierung.

**N.2** Zielgerichtete Handlung mit bekanntem oder recherchiertem Werkzeug.

**N.3** Kontrolle, Vergleich oder Beobachtung.

**N.4** Erklärung, Transfer oder nächste Anwendung.
```

Dieses Muster ist keine Pflichtform.
Es hilft aber, schon im ersten Draft über Kontext, Handlung und Erkenntnis nachzudenken.

## Didaktische Arbeitsweise

Aufgaben dürfen neue Themen auf Einführungsebene praktisch erarbeiten, bevor sie vollständig systematisch erklärt werden.
Schüler sollen dadurch zuerst Beobachtungen, Motivation und Kontext gewinnen.
Die allgemeinere oder theoretischere Einordnung kann anschließend in der Besprechung erfolgen.

Diese Arbeitsweise ist besonders wertvoll, wenn:

- Schüler ein neues Konzept zunächst im echten Gebrauch sehen sollen
- die vollständige Erklärung zu abstrakt wäre, bevor es praktische Erfahrung gibt
- eine spätere Besprechung die Beobachtungen systematisch einordnen soll
- ein Thema für die aktuelle Übung nur angerissen, aber noch nicht vollständig behandelt wird

Aufgaben dürfen deshalb gezielt mit Konzepten arbeiten, die noch nicht vollständig in der Kurzreferenz erklärt wurden.
Dann muss der Arbeitsauftrag aber so gestaltet sein, dass Schüler die Beobachtung sicher und sinnvoll durchführen können.
Die Aufgabe soll nicht voraussetzen, dass sie das neue Konzept bereits vollständig verstanden haben.

## Ausnahme: Übung 0

`00_Ubuntu_VM_einrichten` ist eine bewusste Ausnahme zu den normalen Terminalübungen.
Diese Übung dient dazu, zuerst eine arbeitsfähige Ubuntu-Server-VM herzustellen.

Sie darf deshalb statt einer `Kurzreferenz.md` thematische Setup-Dokumente wie `Hyper-V.md` und `Ubuntu_Server.md` verwenden.
Das Aufgabenblatt bleibt kurz und verweist auf diese Dokumente sowie auf ein separates Dokumentationstemplate.
So bleibt die Einrichtung möglichst reibungslos, ohne die wichtigsten VM-Daten, Kontrollpunkte und Entscheidungen zu verlieren.

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

## Aufgabenmuster Aus Bestehenden Übungen

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

### Integrierte Anwendung

Gute Aufgaben verbinden mehrere bekannte Werkzeuge in einem kleinen, plausiblen Auftrag.
Das ist besonders wichtig, nachdem ein neues Konzept einmal grundlegend ausprobiert wurde.

Gutes Muster:

```md
Erzeuge eine Datei `services-auszug.txt`, die zuerst die ersten Zeilen von `/etc/services` enthält.
Hänge danach die letzten Zeilen derselben Datei an.
Kontrolliere, ob beide Teile enthalten sind.
```

Warum gut:

- Die Aufgabe verbindet Textausgabe, Ausschnittbildung und Umleitungen.
- Der Zweck ist klarer als bei einem reinen Befehlsvergleich.
- Es gibt ein sichtbares Ergebnis, das Schüler prüfen können.

Weiteres gutes Muster:

```md
Finde einen Weg, eine Datei laufend zu beobachten, während du in einem zweiten Terminal neue Zeilen an diese Datei anhängst.
Notiere, woran du erkennst, dass die Ausgabe aktualisiert wird.
```

Warum gut:

- Ein bekanntes Werkzeug wird erweitert, ohne die Option direkt vorwegzunehmen.
- Die Aufgabe erzeugt eine echte Beobachtung.
- Das Konzept wirkt nützlich statt isoliert abgefragt.

### Offene Übungsphase

Offene Übungsphasen, Bootcamps oder Trainingsabschnitte sind erlaubt, wenn Übungszeit wichtiger ist als kleinschrittige Aufgabenführung.
Sie eignen sich besonders für Bedienfertigkeiten, Routineaufbau oder längere Erkundungen.

Gutes Muster:

```md
In diesem Abschnitt nimmst du dir Zeit, um mit Terminaleditoren sicherer zu werden.
Nutze Kopien echter Systemdateien und probiere die wichtigsten Tätigkeiten der Textbearbeitung aus.

**1.** Beginne mit `nano`.
**2.** Wechsle anschließend zu `vim`.
**3.** Nutze `vimtutor` oder eine passende Übungsressource.
**4.** Reflektiere am Ende kurz, was schon sicher funktioniert und was noch ungewohnt ist.
```

Warum gut:

- Der Abschnitt hat ein klares Ziel.
- Die Materialien sind sinnvoll und sicher.
- Die Reihenfolge gibt Orientierung, ohne jede Handlung vorzuschreiben.
- Die Reflexion verhindert, dass freie Übungszeit beliebig wird.

Wenn eine offene Übungsphase deutlich mehr Zeit oder eine andere Arbeitsweise braucht als der Rest des Aufgabenblatts, plane sie als eigenes Aufgabenblatt.

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

Befehlsvorgaben müssen bewusst dosiert werden.
Eine Aufgabe soll nicht automatisch die vollständige Befehlszeile enthalten, nur weil ein bestimmter Befehl oder Operator verwendet werden soll.

Unterscheide drei Stufen:

1. **Ziel vorgeben:** Die Aufgabe beschreibt Handlung, Pfade und erwartetes Ergebnis. Schüler wählen die passenden bekannten Befehle selbst.
2. **Werkzeug oder Begriff vorgeben:** Die Aufgabe nennt einen Befehl, eine Option oder einen Begriff, aber nicht unbedingt die vollständige Befehlszeile.
3. **Konkreten Befehl vorgeben:** Die Aufgabe gibt die auszuführende Befehlszeile explizit an.

Nutze standardmäßig Stufe 1 oder 2.
Stufe 3 ist nur sinnvoll, wenn der genaue Befehl selbst Untersuchungsgegenstand ist.
Auch einzelne Optionen, Operatoren oder Umleitungssymbole können bereits zu viel verraten, wenn gerade deren Auswahl geübt werden soll.

Gib konkrete Befehle explizit vor, wenn:

- ein neues Konzept eingeführt wird
- die Syntax ungewohnt ist
- der Fokus auf Beobachtung oder Reflexion liegt
- ein bestimmter Sonderfall demonstriert werden soll
- minimale Unterschiede zwischen zwei Befehlen verglichen werden sollen
- eine neue Syntaxform sonst zu viel Nebenschwierigkeit erzeugen würde

Gib Befehle weniger explizit vor, wenn:

- das Konzept bereits eingeführt wurde
- Schüler bekannte Befehle gezielt auswählen sollen
- Schüler passende Optionen, Flags, Operatoren oder Umleitungssymbole auswählen sollen
- Recherche Teil des Lernziels ist
- die Aufgabe eine echte Anwendung statt eine reine Beobachtung ist
- mehrere sinnvolle Lösungswege möglich sind

Vermeide unnötige Hinweise wie “Dafür brauchst du `-r`”, wenn genau das herausgefunden werden soll.
Wenn Wildcards Lernziel sind, darf und soll die Aufgabe aber ausdrücklich verlangen, ein Wildcard-Zeichen zu verwenden.
Wenn Umleitungen Lernziel sind, reicht häufig ein Arbeitsauftrag wie “Speichere die Ausgabe in einer Datei”, “Hänge eine weitere Ausgabe an” oder “Leite die Fehlermeldung in eine Datei um”.
Nenne `>`, `>>`, `2>` oder `&>` nur dann ausdrücklich, wenn genau dieser Operator eingeführt, verglichen oder als Sonderfall untersucht werden soll.

Gutes Muster für weniger explizite Vorgaben:

```md
**2.5** Verschiebe alle Dateien mit der Endung `.jpg` aus `eingang` in das Verzeichnis `projekt alpha/bilder`. Verwende dafür ein Wildcard-Zeichen.
```

Warum gut:

- Die Handlung und der Zielzustand sind klar.
- Der Lernfokus Wildcards wird genannt.
- Der konkrete Befehl bleibt Schülerentscheidung.

Gutes Muster für explizite Befehle:

```md
**5.2** Führe von dort aus den Befehl `find .. -name "*"` aus. Was wird ausgegeben?

**5.3** Führe anschließend den Befehl `find .. -name *` aus. Was passiert? Notiere die Ausgabe oder Fehlermeldung.
```

Warum gut:

- Der minimale Unterschied zwischen den Befehlen ist der Untersuchungsgegenstand.
- Die Schüler sollen nicht selbst einen Befehl finden, sondern einen Sonderfall beobachten.

Prüfe beim Erstellen neuer Aufgaben besonders kritisch, ob eine vollständige Befehlszeile wirklich nötig ist.
Wenn ein Arbeitsauftrag auch mit Handlung, Ziel, Pfaden und ggf. genanntem Werkzeug verständlich ist, ist diese offenere Form meistens besser.

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

## Qualitätscheck

Prüfe vor Abschluss:

- Hat jeder Abschnitt einen klaren Fokus?
- Gibt es eine erkennbare Lernkurve?
- Leistet jeder Abschnitt mehr als “Konzept aus der Referenz einmal anwenden”?
- Verbindet mindestens ein Teil der Aufgabe mehrere Werkzeuge oder Konzepte in einem sinnvollen Arbeitsauftrag?
- Sind Befehle und Dokumentation sinnvoll verbunden?
- Werden Schüler nicht unnötig zwischen Themen hin- und hergeschickt?
- Sind alle Pfade reproduzierbar?
- Finden verändernde Befehle nur in sicheren Bereichen statt?
- Sind Zielzustände und Kontrollaufgaben eindeutig?
- Haben Abschnitte mit deutlich anderer Arbeitsweise ggf. ein eigenes Aufgabenblatt bekommen?
