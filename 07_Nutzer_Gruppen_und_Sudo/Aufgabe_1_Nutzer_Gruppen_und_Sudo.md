# Aufgabe 1: Nutzer, Gruppen und `sudo`

In dieser Aufgabe untersuchst du Benutzer und Gruppen auf deiner Ubuntu-Server-VM.
Danach legst du den Benutzer `kurstest` an, gibst ihm testweise `sudo`-Rechte und entfernst ihn wieder.

## 1. Deinen eigenen Benutzer untersuchen

Zuerst prüfst du, mit welchem Benutzer du arbeitest und zu welchen Gruppen dieser Benutzer gehört.

**1.1** Prüfe, mit welchem Benutzernamen du angemeldet bist.

**1.2** Lasse dir deine Benutzer-ID, Gruppen-ID und Gruppenmitgliedschaften anzeigen.

**1.3** Lasse dir deine Gruppen zusätzlich in kompakter Form anzeigen.
Kommt die Gruppe `sudo` in der Ausgabe vor?

**1.4** Lasse dir den Gruppeneintrag zur Gruppe `sudo` anzeigen.
Welche Benutzer werden dort aufgeführt?

**1.5** Lasse dir den Benutzereintrag zu deinem eigenen Benutzer anzeigen.
Vergleiche ihn grob mit dem Eintrag zu `root`.
Welche Unterschiede erkennst du beim Home-Verzeichnis und bei der Login-Shell?

**1.6** Schaue dir `/etc/passwd` und `/etc/group` an.
Suche nach den Einträgen, die du dir in den letzten Aufgabenteilen ausgeben lassen hast.

## 2. Einen Testbenutzer anlegen

Jetzt legst du einen eigenen Testbenutzer an.
Verwende den Namen `kurstest`.

**2.1** Lege den Benutzer `kurstest` an.
Wähle ein einfaches Passwort für die Übung.
Weitere Angaben wie vollständiger Name oder Telefonnummer kannst du leer lassen.

**2.2** Prüfe, ob es jetzt einen Benutzereintrag für `kurstest` gibt.

**2.3** Prüfe, zu welchen Gruppen `kurstest` gehört.

**2.4** Wechsle in eine Login-Shell des Testbenutzers.
Prüfe dort mit passenden Befehlen, mit welchem Benutzer du angemeldet bist und in welchem Verzeichnis du dich befindest.

**2.5** Versuche als `kurstest`, einen einfachen Befehl mit `sudo` auszuführen:

```bash
sudo whoami
```

Was passiert?
Beende die Sitzung des Testbenutzers anschließend wieder mit `exit`.

## 3. `sudo`-Rechte über die Gruppe `sudo` testen

In diesem Abschnitt fügst du `kurstest` testweise zur Gruppe `sudo` hinzu.

**3.1** Füge `kurstest` zur Gruppe `sudo` hinzu.

**3.2** Prüfe, ob `kurstest` jetzt tatsächlich Mitglied der Gruppe `sudo` ist.

**3.3** Wechsle erneut zum Testbenutzer.
Prüfe in dieser neuen Sitzung, ob die Gruppe `sudo` sichtbar ist.

**3.4** Führe als `kurstest` denselben `sudo`-Befehl wie in **2.5** erneut aus:

```bash
sudo whoami
```

Welche Ausgabe erhältst du?
Was hat sich gegenüber **2.5** geändert?

**3.5** Beende die Sitzung des Testbenutzers mit `exit`.

## 4. Testbenutzer entfernen

Zum Schluss entfernst du den Testbenutzer wieder.

**4.1** Entferne den Benutzer `kurstest` zusammen mit seinem Home-Verzeichnis.

**4.2** Prüfe, ob es noch einen Benutzereintrag für `kurstest` gibt.
