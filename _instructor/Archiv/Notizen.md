# Readme
Ein paar der genannten Punkte sind ein bisschen zu spezifisch auf die Aufgaben bezogen (z.B. stat vs du oder find mit mehreren Suchkriterien und exec).
Das kann ruhig schon erwähnt werden aber eher nach dem Motto "Außerdem/Dabei lernst du ... kennen" oder so.
Also es soll klar sein, dass das nicht das zentrale Thema der Einheit ist, sondern eher Mittel zum Zweck (Befehlssyntax und Manpages verstehen) bzw. "Side Mission".

# Konzepte_und_Befehle

## Syntax-Konventionen

Konventionen etwas detailierter besprechen. Wie unterscheidet sich Syntax (z.B. Reihenfolge Optionen und Argumente oder Optionen ohne Minus)?
Hier kann z.B. find als ungewühnlicher Fall genannt werden, da Argument vor Optionen ist (zumindest wenn ich das richtig sehe).

## Häufige Optionen

Manche Erklärungen sind etwas unverständlich, wenn man nicht schon weiß, was gemeint ist.
Hier wären vielleicht Beispiele hilfreich.
Auch könnte man vielleicht für jede Option 3-4 Befehle nennen, die diese nutzen.

## Manpages bedienen

Less wird später noch besprochen. Darauf kann man hier vielleicht schon hinweisen, wenn es ohnehin schon erwähnt wird.

## Sections

Der Abschnitt ist etwas technisch und kann schnell überfordernd wirken.
Die Schüler haben ja gerade erst über die manpages als Hilfsmittel zu Befehlen gelernt und jetzt gibt es auf ein mal mehrere Sections und die erste heißt "Benutzerbefehle" (was ein Begriff ist, den wir in dieser Form bisher noch nie benutzt haben).
Hier könnte expliziter gesagt werden, dass für uns hier erstmal hauptsächlich Section 1 relevant ist.
Die kurze Übersicht über diese 3 üblichen Sections finde ich von der Idee her trotzdem gut.
Es wird hier im Beispiel gesagt dass "man passwd" etwas anderes anzeigt als "man 5 passwd" ohne dass vorher erwähnt wird, was die Syntax ist, um eine konkrete Section zu öffnen (und was der Default ohne Sectionangabe ist).

## Help

Der Unterschied zwischen Shell Bultins und Programmen wird auch später besprochen. Darauf kann hier kurz hingewiesen werden.
Hier sollte vielleicht explizit gesagt werden, dass man nur für programme, nicht für shell builtins ist und das es deshalb für diese den help befehl gibt (alles natürlich besserer und sauberer formuliert).

## Whatis und apropros

Die Erklärung zu apropros ist definitiv unzureichend. Was sind Kurzbeschreibungen? Was gibt dieser Befehl aus? Die Beschreibung muss deutlich besser sein.

## Zugriffsmeldungen, sudo und 2> /dev/null

Diesen Abschnitt würde ich hier vielleicht sogar weglassen.
Stattdessen erklären wir das nur direkt in der Aufgabe für die es relevant ist.
Es ist ja kein wirklicher Inhalt dieser Übung, sondern nur eine Hilfe für die Aufgabe und ggf. erste kleine Einführung.
Die Themen werden später ja ausführlicher besprochen.

# Aufgaben

## 1
Aufgabe 1.1 fehlt noch Parameter als Auswahlmöglichkeit.
Welche der Optionen sind Flags könnte auch eine gute Follow-Up Frage sein.
1.2 könnte mit 1.3 und 1.4 kombiniert sein: Welche kurzen Optionen sind hier kombiniert? Was ist ihre Bedeutung (vielleicht hast du hier einen passenderen Begriff als "Bedeutung")? Was sind ihre langen Optionen?

## 2
Ich glaube in einer frischen Ubuntu Server Installation gibt es gar keinen Manpages Eintrag für cd.
Dieser Aufgabenteil kann weggelassen werden.
Manpages und Help müssen zwar zwangsläufig beide in dieser Übung erwähnt sein mit Hinweise, dass eines Linux Doku und das andere Bash Hilfe ist, aber was das genau bedeutet und so wird ja später besprochen.
Dementsprechend muss der Unterschied hier kein Schwerpunkt sein über "für manche Befehle manpage für andere help" hinaus.

## 3
Ich weiß, dass ich gesagt habe, dass wir aus Übung 1 nicht wiederholen wollen, aber ich möchte die dort besprochenen Inhalte hier auch nicht einfach komplett verschweigen.
Ich weiß gerade nicht mehr genau, welche flags dort genutzt wurden, aber es waren zumindest -a und -r.
Hier kann vielleicht eine Frage sein wie "-a und -r haben wir schon in Übung 1 kennengelernt. Wofür stehen sie? Reflektiere noch mal kurz, wo wir sie in Übung 1 angewendet haben und warum das nötig war.".

## 4
Ich denke für du wäre auch --block-size und -b relevant.

## 5 und 6
Ich würde hier eher in find vertiefen (mehrere Kriterien aber noch kein exec) und find -exec (mit und ohne Änderungen) aufteilen.
find vertiefen kann kurz die Idee der anderen Kriterien und die, Kriterien zu kombinieren, mit einfachen Beispielen einführen.
Ggf. kann hier sogar die Syntax für den Befehl komplett vorgegeben sein und die Schüler sollen ausführen und schauen, was passiert und ggf. in manpages recherchieren, was genau die Optionen bedeuten.
Anschließend kann die Aufgabe etwas freier sein. Z.B. Schaue in den manpages, nach welchen Kriterien noch gefiltert werden kann und probiere ein paar aus, die dich interessieren.
Bei Aufgabe 6 (find -exec) soll die Syntax zunächst genau erklärt werdden.
Anschließend kann es wieder einfache Aufgaben mit vorgegebenem Befehl und "schau was passiert" geben.
Die letzten Aufgabenteile sollen dann nur noch vorgeben, was passieren soll und die Schüler müssen selbst überlegen, wie sie es umsetzen.

## Allgemein
Drauf achten, dass Aufgaben sich nicht wiederholen. Zum Beispiel 1.3 und 2.1 sind fast identisch.


# Gesamt
Achte drauf, dass du Manpages nicht übersetzt. An manchen Stellen schreibst du "Handbuchseite". Manpages ist ein fester Begriff, der meiner Meinung nach nicht ins deutsche übersetzt werden sollte.