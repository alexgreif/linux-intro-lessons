# Aufgabe 3: Lab rekonstruieren

Erzeuge zuerst das Lab-Verzeichnis:

```bash
bash lab_uebung_1.sh
```

Standardmäßig wird das Lab unter `~/labs/Uebung-1-Lab` erstellt.
Im Verzeichnis `~/labs/Uebung-1-Lab/Lab-Chaos` sind Dateien und Verzeichnisse durcheinandergeraten.
Stelle die Struktur so wieder her, dass `Lab-Chaos` dem folgenden Zielzustand entspricht.

Arbeite selbstständig mit den Befehlen aus den bisherigen Aufgaben.

Zielzustand:

```text
Lab-Chaos/
├── etc/
│   ├── hosts
│   └── nginx/
│       ├── conf.d/
│       ├── mime.types
│       ├── modules-enabled/
│       ├── nginx.conf
│       ├── sites-available/
│       │   └── meme-machine
│       └── sites-enabled/
│           └── meme-machine -> ../sites-available/meme-machine
└── var/
    ├── log/
    │   └── nginx/
    │       ├── access.log
    │       ├── archive/
    │       │   ├── access.log.1
    │       │   ├── access.log.2.gz
    │       │   ├── access.log.3.gz
    │       │   ├── error.log.1
    │       │   ├── error.log.2.gz
    │       │   └── error.log.3.gz
    │       └── error.log
    └── www/
        └── meme-machine/
            ├── about.html
            ├── assets/
            │   ├── css/
            │   │   └── styles.css
            │   ├── images/
            │   ├── jokes/
            │   │   ├── joke-01.txt
            │   │   ├── joke-02.txt
            │   │   ├── joke-03.txt
            │   │   ├── joke-04.txt
            │   │   ├── joke-05.txt
            │   │   ├── joke-06.txt
            │   │   ├── joke-07.txt
            │   │   ├── joke-08.txt
            │   │   ├── joke-09.txt
            │   │   ├── joke-10.txt
            │   │   └── manifest.json
            │   ├── js/
            │   │   └── main.js
            │   └── memes/
            │       ├── backup.jpg
            │       ├── bugzilla-zarro-boogs.png
            │       ├── it-is-complicated.jpg
            │       └── manifest.json
            ├── contact.html
            ├── docs/
            │   ├── credits.txt
            │   ├── deployment-notes.txt
            │   ├── license.txt
            │   └── README.md
            ├── index.html
            ├── robots.txt
            ├── sitemap.xml
            └── .well-known/
                └── security.txt
```

Hinweise:

- Verschaffe dir zuerst einen Überblick über `~/labs/Uebung-1-Lab/Lab-Chaos` und vergleiche die vorhandenen Dateien und Verzeichnisse mit dem Zielzustand.
- Alle gesuchten Dateien existieren bereits irgendwo in `~/labs/Uebung-1-Lab/Lab-Chaos`. Dementsprechend müssen keine neuen Dateien erstellt werden.
- Viele Zielverzeichnisse existieren ebenfalls schon, oft sogar mit passenden Unterverzeichnissen und Dateien, aber häufig am falschen Ort und/oder mit zusätzlichen Mülldateien.
- Entferne Mülldateien erst, wenn du sicher bist, dass sie nicht zum Zielzustand gehören.
- Achte auch auf versteckte Verzeichnisse.
- Einige Dateien im Verzeichnis `unknown` haben ihren Namen oder ihre Endung verloren. Kümmere dich am besten erst zum Schluss um dieses Verzeichnis, wenn klar ist, welche Zieldateien noch fehlen.
- Der Eintrag `meme-machine -> ../sites-available/meme-machine` ist ein symbolischer Link.
- Vergleiche deine fertige Struktur am Ende noch einmal mit dem Zielzustand.
