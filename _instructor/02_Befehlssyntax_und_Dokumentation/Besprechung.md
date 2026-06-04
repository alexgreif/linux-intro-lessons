# Besprechung: Befehlssyntax und Dokumentation

Dieses Dokument ist für die Nachbesprechung gedacht. Im Mittelpunkt stehen die Konzepte, die Schüler während der Übung praktisch nutzen und danach systematisch einordnen sollten.

## Vorbereitung

- Auf den Ubuntu-Server-VMs sollte geprüft werden, ob `man`, `whatis` und `apropos` verfügbar sind.
- Falls manpages oder Kurzbeschreibungen fehlen, muss vor der Übung `man-db` installiert oder die manpage-Datenbank aktualisiert werden.

## Syntax von Befehlen

- Befehle bestehen typischerweise aus Befehl, Optionen und Argumenten.
- Optionen können Verhalten verändern, Argumente geben an, worauf der Befehl angewendet wird.
- Manche Optionen benötigen Parameter, andere sind reine Flags.
- Die Schreibweise in Dokumentationen ist selbst eine Sprache: `[]`, Platzhalter, wiederholbare Argumente und optionale Teile sollten besprochen werden.
- Nicht alle Befehle folgen exakt demselben Aufbau. `find` ist ein gutes Beispiel, weil der Suchbereich vor dem Suchausdruck steht.

## Optionen und Flags

- Kurze Optionen beginnen meist mit einem Bindestrich, lange Optionen mit zwei Bindestrichen.
- Kombinierte Kurzoptionen wie `-lah` sind praktisch, aber nur verständlich, wenn die einzelnen Optionen bekannt sind.
- Gleiche Optionsbuchstaben können bei unterschiedlichen Befehlen unterschiedliche Bedeutungen haben.
- Einige Kurzoptionen haben direkte Langoptionen, andere nicht oder nur indirekt über eine allgemeinere Langoption.

## Dokumentation im Terminal

- `man` ist die wichtigste ausführliche Dokumentationsquelle.
- `--help` ist oft schneller, aber weniger ausführlich.
- `help` ist besonders für Shell-Builtins wie `cd` relevant.
- `whatis` und `apropos` durchsuchen Kurzbeschreibungen von manpages und helfen beim schnellen Einordnen oder Finden von Befehlen.
- Für diese Übung ist vor allem Section `1` relevant. Andere Sections zeigen, dass derselbe Name in unterschiedlichen Kontexten vorkommen kann.

## Zugriffsmeldungen und Rechte

- Zugriffsmeldungen bei `find` oder `du` sind kein Fehler im Befehl, sondern eine Folge von Berechtigungen.
- `2> /dev/null` wurde nur pragmatisch genutzt, um Fehlermeldungen auszublenden. Die genaue Redirection-Syntax kann später systematisch behandelt werden.
- `sudo` sollte hier nicht als allgemeine Problemlösung verstanden werden, sondern als bewusster Umgang mit Rechten.

## `du`, `stat` und Speicherangaben

- `stat` zeigt Metadaten zu einem konkreten Dateisystemobjekt.
- `du` zeigt belegten Speicherplatz.
- Die angezeigten Werte können sich unterscheiden, weil Dateigröße und belegter Speicherplatz nicht dasselbe sind.
- Optionen wie `-h`, `-s`, `-a` und `--apparent-size` verändern die Perspektive auf dieselben Daten.

## `find -exec`

- `find` kann Treffer nicht nur anzeigen, sondern mit `-exec` an andere Befehle übergeben.
- `{}` steht für den aktuellen Treffer.
- `\;` beendet den `-exec`-Teil.
- Vor verändernden Aktionen sollte immer erst geprüft werden, welche Treffer gefunden werden.
- Verändernde Aktionen mit `find -exec` gehören in klar begrenzte Übungs- oder Arbeitsverzeichnisse.
