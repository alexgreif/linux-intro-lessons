# Konzepte und Befehle: Befehlssyntax und Dokumentation

Dieses Dokument fasst die wichtigsten Konzepte und Befehle zusammen, die du für diese Übung brauchst.

## Konzept 1: Die Anatomie eines Befehls

### Typische Befehlssyntax

Viele Terminalbefehle folgen grob dieser Struktur:

```text
Befehl [Optionen] [Argumente]
```

Beispiele:

```bash
ls -l /etc
cp -r quelle/ ziel/
find /var/log -name "*.log"
```

Wichtige Begriffe:

- **Befehl**: Das Programm oder Shell-Kommando, das ausgeführt wird, zum Beispiel `ls`, `cp`, `find` oder `cd`.
- **Option**: Verändert, wie ein Befehl arbeitet, zum Beispiel `-l`, `-a` oder `--help`.
- **Flag**: Eine Option ohne Parameter, die ein Verhalten ein- oder ausschaltet, zum Beispiel `-a`.
- **Parameter**: Ein Wert, den eine Option benötigt, zum Beispiel das Muster bei `find -name "*.txt"`.
- **Argument**: Ein Wert, auf den sich der Befehl bezieht, zum Beispiel ein Dateiname, ein Verzeichnis oder ein Suchmuster.

Eckige Klammern in Dokumentationen bedeuten meistens: Dieser Teil ist optional.

### Kurze und lange Optionen

Viele Befehle kennen kurze Optionen mit einem Bindestrich. Manche kurzen Optionen sind reine Flags, andere benötigen einen Parameter.

```bash
ls -a
du -h
find . -name "*.txt"
```

Viele GNU-Befehle kennen zusätzlich lange Optionen mit zwei Bindestrichen:

```bash
ls --all
du --human-readable
rm --recursive
```

Kurze Optionen können manchmal kombiniert werden. Zum Beispiel kann

```bash
ls -l -a -h
```

abgekürzt werden durch:

```bash
ls -lah
```

### Ausnahmen

Es gibt Befehle, die von den Konventionen abweichen. Zum Beispiel:

- `find` ist sehr speziell, was Reihenfolge von Flags, Argumenten und weiteren Optionen angeht. Viele Flags müssen vor dem Argument (dem Ausgangspunkt der Suche) angegeben werden, Optionen wie die Suchparameter oder `-exec` müssen aber dahinter stehen, zum Beispiel `find -P /var/log -name "*.log" -type f,d -exec stat {} \;`.

- `tar` und `ps` erlauben auch Schreibweisen, bei denen Optionsbuchstaben ohne führenden Bindestrich verwendet werden, zum Beispiel `tar cf archiv.tar datei` oder `ps aux`.

Deshalb ist es immer wichtig, sich, zum Beispiel mit Hilfe der manpages, über die Syntax eines Befehls zu informieren, wenn man diesen benutzen möchte.
So kann man Überraschungen und frustrierende Erlebnisse größtenteils vermeiden.

### Häufige Optionen

Folgende Optionen kommen bei vielen Befehlen vor:

| Option | Häufige Bedeutung | Befehle |
| ------ | ----------------- | --------- |
| `-a` | all: alle Einträge anzeigen oder alle passenden Dinge berücksichtigen | `ls`, `du`, `cp` |
| `-l` | long: ausführliche Ausgabe oder zeilenbezogene Ausgabe | `ls`, `wc`, `grep` |
| `-h` | human readable oder help | `du`, `ls`, `df` |
| `-r` | recursive oder reverse | `cp`, `rm`, `grep` (recursive), `ls` (reverse) |
| `-R` | recursive | `cp`, `chmod`, `chown` |
| `-i` | interactive: vor Aktionen nachfragen | `rm`, `cp`, `mv` |
| `-v` | verbose: ausführlicher ausgeben, was passiert | `cp`, `mv`, `rm` |

Die Tabelle ist eine Orientierung, keine feste Regel. Derselbe Optionsbuchstabe kann bei verschiedenen Befehlen unterschiedliche Bedeutungen haben.

## Konzept 2: Manpages

Manpages sind die ausführliche Dokumentation im Terminal zu Befehlen, speziellen Dateien und weiteren Systemthemen. Zu Befehlen findest du dort meistens eine Kurzbeschreibung, die Syntax, Optionen und weitere Hinweise.

Du öffnest eine manpage mit `man`, zum Beispiel `man ls`, `man find` oder `man man`.

### Sections

Die manpages sind in Sections eingeteilt. Section `1` behandelt Befehle.
Dies ist die Section, die du im Linux-Alltag am häufigsten konsultieren wirst und die in dieser Übung behandelt wird.
Da Begriffe in mehreren Sections auftreten können, wird die Section in Klammern hinter dem Begriff angegeben, um die manpage eindeutig zu identifizieren, zum Beispiel `passwd(1)` für die manpage zum `passwd`-Befehl und `passwd(5)` für die manpage zur Datei `/etc/passwd`.

Wenn du mehr über die Sections der manpages, die Syntax des Befehls `man` oder andere manpage-Themen wissen möchtest, öffne die manpage zu `man`:

```bash
man man
```

### Navigation

Viele manpages werden mit `less` angezeigt.
`less` ist ein sogenannter Terminal-Pager, also ein Programm zur Anzeige von Textdateien im Terminal.
Für manpages reichen zunächst diese Tasten:

| Taste | Funktion |
| ----- | -------- |
| `↑` / `↓` | zeilenweise scrollen |
| `f` / `Leertaste` | eine Seite weiter |
| `b` | eine Seite zurück |
| `/Suchwort` | nach einem Suchwort suchen |
| `n` | zum nächsten Treffer springen |
| `N` | zum vorherigen Treffer springen |
| `h` | Hilfe anzeigen |
| `q` | manpage schließen |

## Konzept 3: Weitere Hilfen im Terminal

- Shell-Builtins wie `cd` haben in der Regel keine manpage. Stattdessen kannst du ihre Dokumentation mit dem `help`-Befehl ausgeben lassen, zum Beispiel `help cd`.
- Für viele Programme kannst du mit der `--help`-Option eine kurze Hilfe ausgeben lassen, zum Beispiel `ls --help`.
- `whatis` gibt die Kurzbeschreibung einer manpage aus.
- Mit `apropos` kannst du die Kurzbeschreibungen der manpages nach einem bestimmten Begriff durchsuchen.

## Befehle

### Dokumentation
| Hilfe | Beschreibung | Beispiel |
| ----- | ------------ | -------- |
| `man` | Öffnet eine manpage. | `man ls` |
| `help` | Zeigt Hilfe zu Shell-Builtins wie `cd` an. | `help cd` |
| `whatis` | Zeigt die Kurzbeschreibung einer manpage. | `whatis du` |
| `apropos` | Sucht in den Kurzbeschreibungen nach einem Begriff. | `apropos file` |
| `type` | Zeigt, ob ein Name z. B. Alias, Builtin oder Programm ist. | `type cd` |
