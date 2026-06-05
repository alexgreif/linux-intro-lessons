# Besprechung: Textverarbeitung im Terminal

Dieses Dokument ist für die Nachbesprechung gedacht. Im Mittelpunkt stehen die Konzepte, die Schüler während der Übung praktisch genutzt haben und danach systematisch einordnen sollten.

## Textdateien Auf Linux-Systemen

- Viele wichtige Linux-Dateien sind Textdateien, zum Beispiel Konfigurationsdateien, Logdateien, Service-Listen oder Shell-Startdateien.
- Textdateien lassen sich mit einfachen Terminalwerkzeugen anzeigen, durchsuchen, speichern und bearbeiten.
- Nicht jede verwendete Systemdatei muss vollständig erklärt werden. Wichtig ist hier vor allem, dass Schüler echte Beispiele für relevante Textdateien sehen.

## Dateiinhalt Anzeigen Und Pager Nutzen

- `cat` eignet sich für kurze Dateien oder zum Zusammenführen mehrerer Ausgaben.
- `less` eignet sich für längere Dateien und Ausgaben, weil Schüler scrollen und suchen können, ohne den Inhalt zu verändern.
- `head` und `tail` liefern gezielt Anfang oder Ende einer Datei.
- `tail` kann Dateien auch laufend beobachten. Das ist besonders bei Logdateien nützlich.

## Standardströme

- Programme arbeiten häufig mit `stdin`, `stdout` und `stderr`.
- `stdout` ist die normale Ausgabe eines Programms.
- `stderr` ist für Fehlermeldungen und diagnostische Ausgaben gedacht.
- Beide erscheinen standardmäßig im Terminal, können aber getrennt umgeleitet werden.
- `stdin` ist die Standardeingabe. Sie kommt normalerweise von der Tastatur, kann aber auch aus einer Datei stammen.
- `Strg+D` signalisiert bei Eingabe über das Terminal das Ende der Eingabe (`EOF`).

## Umleitungen

- Umleitungen werden von der Shell verarbeitet, bevor das Programm gestartet wird.
- `>` überschreibt eine Datei oder erstellt sie neu.
- `>>` hängt an eine Datei an.
- `2>` leitet `stderr` um.
- `&>` leitet `stdout` und `stderr` gemeinsam um.
- `<` nutzt eine Datei als `stdin`.
- Wichtig für die Besprechung: Das Programm selbst muss nicht wissen, ob seine Ausgabe ins Terminal oder in eine Datei geht.

## `/dev/null`

- `/dev/null` ist ein spezielles Gerät, das alle hineingeschriebenen Daten verwirft.
- Es wird häufig genutzt, wenn eine Ausgabe bewusst nicht angezeigt oder gespeichert werden soll.
- In dieser Übung ist besonders relevant: `2> /dev/null` verwirft Fehlermeldungen, während die normale Ausgabe weiterhin genutzt werden kann.
- Das sollte nicht als Vertuschen von Fehlern verstanden werden, sondern als bewusstes Filtern von Ausgabeströmen.

## Texteditoren

- `nano` ist ein guter Einstieg, weil zentrale Tastenkombinationen eingeblendet werden.
- `vim` ist modaler und anfangs ungewohnt, aber sehr verbreitet und auf vielen Systemen verfügbar.
- Wichtige Unterscheidung bei `vim`: Normal Mode und Insert Mode.
- Schüler müssen nicht sofort produktiv und schnell in `vim` sein. Ziel ist zunächst Orientierung, Grundbedienung und die Fähigkeit, Dateien sicher zu öffnen, zu ändern, zu speichern und zu schließen.

## Virtuelle Konsolen Und Laufende Prozesse

- Ubuntu Server stellt mehrere virtuelle Konsolen bereit, zwischen denen mit Tastenkombinationen wie `Alt+F1` und `Alt+F2` gewechselt werden kann.
- `tail` mit laufender Beobachtung bleibt als Prozess aktiv, bis er beendet wird.
- `Strg+C` sendet ein Interrupt-Signal und beendet damit den laufenden Vordergrundprozess.
- Diese Punkte können als Vorbereitung auf spätere Themen wie Prozesse, Jobs und Signale dienen, sollten hier aber nur so weit eingeordnet werden, wie es für die Aufgabe nötig ist.
