# Aufgabe 1: `sudo` und Package Management

In dieser Aufgabe führst du erste Administrationsbefehle mit `sudo` aus.
Außerdem installierst du mit `apt` ein kleines Werkzeug und entfernst es anschließend wieder.

## 1. `sudo` bewusst verwenden

Viele Administrationsbefehle verändern das System.
Deshalb dürfen sie nur mit erhöhten Rechten ausgeführt werden.

**1.1** Prüfe mit `whoami`, mit welchem Benutzer du angemeldet bist.

**1.2** Versuche deine lokalen Paketlisten ohne erhöhte Rechte zu aktualisieren. Was passiert?

**1.3** Führe denselben Befehl nun mit erhöhten Rechten aus.

**1.4** Aktualisiere nun deine installierten Pakete.

**1.5** Erkläre kurz den Unterschied zwischen `apt update` und `apt upgrade`.

## 2. Ein Paket installieren und prüfen

Jetzt installierst du ein kleines Werkzeug, das laufende Prozesse übersichtlich anzeigen kann.

**2.1** Zeige Informationen zum Paket `htop` an.

**2.2** Installiere das Paket `htop`.

**2.3** Prüfe, ob der Befehl `htop` jetzt gefunden wird.

**2.4** Starte `htop` kurz und beende es wieder mit `q`.

## 3. Ein Paket entfernen

Zum Schluss entfernst du das Paket wieder.

**3.1** Entferne das Paket `htop`.

**3.2** Prüfe erneut, ob der Befehl `htop` noch gefunden wird.
