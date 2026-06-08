# D011: Dieses Repository ist das interne Authoring-Repo

Datum: 2026-06-04

## Entscheidung

Dieses Repository wird als internes Authoring-Repo gepflegt.
Es enthält Schülerdateien, technische Infrastruktur, Agenten-Dokumentation, Entscheidungen und Instructor-Material.

## Begründung

Die Unterrichtsmaterialien entstehen iterativ.
Für diese Arbeit ist es hilfreich, Aufgaben, technische Hilfsmittel, didaktische Entscheidungen, Agenten-Guides und Lehrkraftmaterial an einem gemeinsamen Ort zu pflegen.

## Konsequenzen

Die Root-`README.md` bleibt als Schüler-Einstieg formuliert, obwohl sie im internen Repo liegt.
Eine spätere Schülerdistribution wird aus diesem Repo abgeleitet und enthält nur Schülerdateien sowie technisch notwendige Hilfsdateien.
Interne Dateien wie `AGENTS.md`, `.agent-guides/`, `ARCHITECTURE.md`, `DECISIONS/` und `_instructor/` gehören nicht in die Schülerdistribution.
Die konkrete Bereitstellung ist in [D013: Schülerdistribution als ZIP-Release](D013-schuelerdistribution-als-zip-release.md) festgelegt.
