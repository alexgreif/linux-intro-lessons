# Konzepte_und_Befehle

Der "Syntax Konvention" Abschnitt ist so glaube ich nicht besonders hilfreich. Lass ihn uns einfach entfernen.
Die Sonderfälle sind aber trotzdem wichtig.
Vielleicht können wir einen Abschnitt "Ausnahmen" einfügen.
Dort können wir, nach dem wir die Standardsyntax (Reihenfolge und dashes vor optionen) eingeführt haben, erklären, dass nicht alle Befehle diesen Konventionen folgen.
Als Beispiele können wir find, tar und ps nennen.
Dann muss aber auch kurz erklärt werden, inwiefern diese Befehle "anders" sind.

Ich denke, es ist nicht nötig, im Abschnitt "Kurze und lange Optionen" zu erwähnen, dass Optionen sich zwischen Befehlen unterscheiden.
Das sollte eigentlich klar sein.
Außerdem wird es im Abschnitt "Häufige Optionen" erwähnt, wo es auch besser hinpasst.

## Dokumentation im Terminal

Die ersten drei Abschnitte sind hier irgendwie Unterthemen von Manpages und die restlichen sind dann andere Dokumentationsthemen.
Vielleicht kann man die Abschnitte hier besser strukturieren.
Zum Beispiel "## Dokumentation im Terminal 1 - Manpages" und "## Dokumentation im Terminal 2 - Andere Optionen".
Das ist sehr schlecht ausgedrückt, aber die Idee sollte klar sein. Ich bin sicher du findest hier eine bessere Lösung.

Wenn ich mir da noch mal Gedanken drüber mache, glaube ich eigentlich, dass help, --help, whatis und apropos gar keine eigenen Abschnitte brauchen.
Sie können in einem Abschnitt unter sowas wie "Weitere Hilfequellen" (Hilfequellen ist kein guter Ausdruck, finde hier bitte etwas besseres) kurz zusammengefasst werden.
Beispiele oder lange Erklärungen sind hier nicht nötig.
Auch die Abschnitte zu den manpages können stark gekürzt, bzw. zu einem Abschnitt zusammengefasst werden.
Wichtig ist eigentlich nur folgendes:
- Was sind manpages?
- Wie öffne ich sie?
- Es gibt mehrere Sections, aber 1 ist (insbesondere für uns und diese Übung) die wichtigste.
- Mehr Informationen zu Inhalten, Syntax des man Befehls und weitere Infos findet man in den manpages zu man (man man).
- Die Anleitung zur Navigation in den manpages ist gut so wie sie ist und sollte nicht entfernt oder gekürzt werden.

Mit diesen Änderungen sollte dieses Konzepte_und_Befehle.md dann auch deutlich näher an dem aus Übung 1 sein.
Generell sollen diese Dokumente als kompakte Zusammenfassung dienen.
Die Themen werden nämlich alle schon vor der Übung von mir präsentiert und auch aktiv mit geteiltem Bildschirm vorgeführt wo passend.
Stand jetzt ist das aktuelle Dokument dafür finde ich etwas zu lang und ausufernd.
Es ist ja länger als das aus Übung 1, obwohl weniger Inhalte besprochen wurden und es deshalb ja auch weniger Aufgaben gibt.

### man

Du schreibst hier allgemein "eines dokumentierten Systemthemas".
Das ist zum einen sehr technisch ausgedrückt und zum anderen ist das "In manpages findest du meistens:" dann eigentlich nur auf Befehle bezogen.
Das muss besser zusammenpassen, oder es muss klarer ausgedrückt sein wie z.B. "Zu Befehlen findest du in den manpages meistens:".
Es ist okay, neue technische, allgemeine Begriffe so wie hier zu verwenden, aber dann sollten in der Regel auch Beispiele genannt werden.

### Sections

Hier steht "für diese Übung ist meistens Section 1 wichtig".
Eigentlich ist für diese Übung aber doch nur Section 1 wichtig oder?
Ich denke, dass Section 1 allgemein diejenige ist, die die meisten Linux am häufigsten benutzen.
Das kann hier auch ruhig erwähnt werden.