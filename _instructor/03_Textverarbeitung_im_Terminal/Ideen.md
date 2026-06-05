# Übung 3: Textverarbeitung

## Zuschnitt

Übung 3 fokussiert Textdateien, Textausgabe, Umleitungen und einfache Texteditoren.
Umgebungsvariablen und Konfigurationsdateien werden als systematische Hauptthemen in Übung 4 behandelt.

Konfigurationsdateien oder andere wichtige Textdateien können in Übung 3 trotzdem bereits vorkommen, aber nur als Textdateien mit Bedeutung.
Sie werden dort nicht als eigenes Konzeptthema systematisch erklärt.

## Themen

cat
pagers, insbesondere less (wurde schon mehr oder weniger eingeführt durh manpages)
echo
Redirecting: stdout, stderr, stdin
Texteditoren: nano, vim und emacs (nano und vim werden wirklich behandelt, emacs nur kurz angesprochen)
head und tail

## Aufgaben

Einfache Textverarbeitung mit cat, echo, und redirect.
Idee zu `cat` und `stdin`:

1. Zwei Textdateien mit beliebigem, unterschiedlichem Inhalt erstellen. Beide Dateien sollen nicht leer sein. Kein Texteditor.
2. Inhalt der ersten Datei ausgeben.
3. Inhalt beider Dateien mit einem Befehl ausgeben.
4. In der Dokumentation von `cat` nachsehen, was dort über die Ausführung ohne Datei-Argument steht. Anschließend ausprobieren.
5. Inhalt einer Datei mit `cat` und Input-Umleitung ausgeben.
6. Erwartung zu `cat file1.txt < file2.txt` formulieren, dann ausprobieren und mit der Erwartung vergleichen.

Einfache Textverarbeitung mit nano.
vimtutor + nano Aufgaben mit vim wiederholen.
Konfigurationsdateien oder andere wichtige Textdateien ggf. lesen oder in sicheren Kopien leicht bearbeiten.

## Begriffe

Deutscher Leitbegriff: Umleitung.
Englischer Fachbegriff: redirection.
In der Kurzreferenz beide Begriffe einführen.
