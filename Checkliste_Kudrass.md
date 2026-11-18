# Checkliste Formvorgaben Kudraß

Abgleich der Arbeit mit `WissenschArbeiten.pdf` (Folien von Prof. Kudraß), Stand 17.11.2026.
Folienangaben in Klammern. `[x]` = erledigt.

## A. Erledigt am 17.11.2026

- [x] Inhaltsverzeichnis direkt nach dem Titelblatt, Abstract danach (F. 16, 19)
- [x] Überschrift „Abstrakt“ → „Abstract“, Abstract-Seite ohne Seitenzahl (F. 18)
- [x] Abbildungsverzeichnis zwischen Anhang und Literaturverzeichnis statt dahinter (F. 16)
- [x] Leeres Tabellenverzeichnis entfernt; wieder einbinden (`\listoftables` in `Arbeit.tex`), falls Tabellen dazukommen (F. 23)
- [x] Seitenzahl oben rechts statt unten, ohne Kapiteltitel in der Kopfzeile (F. 15)
- [x] Keine Seitenzahl auf der ersten Seite eines Kapitels oder Verzeichnisses (F. 15)
- [x] Letzte Seite des Literaturverzeichnisses hatte keine Seitenzahl → behoben
- [x] Schrift: 12 pt Times (`newtxtext`) statt Latin Modern (F. 13)
- [x] Titelblatt: Matrikelnummer wird angezeigt, Datum = Abgabedatum statt `\today` (F. 17)
- [x] Selbstständigkeitserklärung: „Graduierungsarbeit“ → „Bachelorarbeit“, Datum = Abgabedatum
- [x] Grammatik in Kap. 1 und 2 (u. a. „optischer Kontrolle“, „für den Typ eindeutigen“, „Ob sich die Anwendung im Alltag bewährt“, „eine relationale Datenbank“, Kommas)
- [x] „Hompel et al.“ → „ten Hompel et al.“ (5 Stellen in 2.5)

## B. Offen – unabhängig vom fehlenden Text

### Titelblatt und Erklärung

- [x] Matrikelnummer in `Header/Metadaten.tex` eintragen (noch Platzhalter)
- [ ] Abgabedatum in `Metadaten.tex` (`\abgabedatum`) prüfen, falls früher abgegeben wird
- [ ] KI-Nutzung kennzeichnen (F. 37), z. B. Absatz in der Selbstständigkeitserklärung oder eigener Hinweis
- [ ] Aktuelle Vorlage der Selbstständigkeitserklärung beim Prüfungsamt erfragen (Satz „ohne Hilfe Dritter“ vs. KI-Nutzung)
- [ ] Gender-Hinweis zum generischen Maskulinum („die Mitarbeiter“) einfügen (F. 57)

### Satzspiegel

- [ ] Zeilenabstand: bewusst 1,5-fach gelassen, Kudraß verlangt einzeilig (F. 14) → **bei Kudraß nachfragen**

### Abkürzungen

- [ ] Abkürzungsverzeichnis anlegen (F. 26, 51; Paket `glossaries` ist schon geladen)
- [ ] Bei erster Nennung ausschreiben: HTML, URL, TCP/IP (2.4), SQL (2.3), JSON (2.4), ASCII, EAN, QR (2.5), IPC-A-610 (2.2)

### Literaturverzeichnis (in Zotero ändern, `.bib` wird automatisch exportiert)

- [ ] Auflage nur als „2. Aufl.“ ohne Zusatz wie „neu bearbeitete“ (F. 31) – betrifft Taschenbuch Datenbanken, Goll, Zickert
- [ ] Taschenbuch Datenbanken vereinheitlichen: ISBN 978-3-446-44026-5 vs. 978-3-446-43508-7 (Rakow, Schiefer); Verlag bei Schiefer „Fachbuchverlag Leipzig im Carl Hanser Verlag“
- [ ] Normen DIN EN ISO 9000/9001: Herausgeber (z. B. DIN Deutsches Institut für Normung e. V. (Hrsg.)), Ort, Verlag; Jahr steht doppelt („2026-09 2026“) (F. 34)
- [ ] Webquellen (Svelte, SvelteKit, Postgres.js): „o. J.“ ergänzen (F. 36)
- [ ] Webquellen: URL zeigt nur auf die Startseite der Doku, zitiert werden Unterseiten (F. 36 „kpl. Pfad zur Datei“) → entscheiden: Einträge je Unterseite oder so lassen
- [ ] Zitierte Webseiten als PDF sichern und aufbewahren (F. 35) – die Online-Doku beschreibt schon SvelteKit 3
- [ ] Kürzel [THBF08] wirkt wie vier Autoren (es sind drei) → Nachname „ten Hompel“ in Zotero prüfen
- [ ] Optional: Einträge enden ohne Punkt (F. 32) – zulässig, wenn einheitlich
- [ ] Optional: Yilmaz et al. mit vier Autoren → erste drei + „u. a.“ (F. 30)

### Ausdruck (F. 46–50)

- [ ] 1.1 „Die Schwächen dieses Vorgehens liegen auf der Hand“ (Pseudo-Argument)
- [ ] 1.1 „und/oder“
- [ ] 1.1 „um sie auch eventuell wieder zurückzurufen“ (Angstwort, Doppelung)
- [ ] 1.1 „machte die Sache weiter komplizierter“ (salopp)
- [ ] 2 Einleitung „aufzeigen“ → „zeigen“ (F. 50)
- [ ] 2.4 „keine verlockende Aussicht“ (salopp)
- [ ] 2.5 „übrigens“ (Füllwort)
- [ ] 2.5 „ein Glücksfall“, „Die Kehrseite ist ebenso klar“ (journalistisch)
- [ ] 2.5 Fazit „ein recht klares Bild“ (diffus)

### Belege

- [ ] 2.1 „Zwar funktionieren Rückverfolgungssysteme in der Theorie auch auf Papier …“ – keine Quelle; unklar, ob eigene Aussage oder Moe (F. 40)

### Umfang und Absätze

- [ ] Faustregel 0,5–2 Seiten je Gliederungspunkt (F. 4): 2.3 ≈ 5 S., 2.5 ≈ 4 S., 2.1 und 2.4 ≈ 3 S. (bei 1,5-fach) → kürzen oder 2.3 in Unterpunkte teilen
- [ ] Kapitel 2 ≈ 18 Seiten, geplant 8–10 → Ausgewogenheit gegenüber Kap. 3–8 im Blick behalten
- [ ] Sehr lange Absätze teilen, ein Gedanke je Absatz (F. 14): u. a. 2.1 erster Absatz, 2.3 „Unter den Aufgaben …“ und „Eine Datenbank entsteht …“, 2.4 „Um den aktuellen Stand …“

## C. Offen – kommt mit späterem Inhalt

### Vorspann und Anhang

- [ ] Abstract schreiben: ca. 1 Seite, ohne Zwischenüberschriften; Problem, Ziel, Lösungsweg, Methoden, Ergebnis, kritische Würdigung (F. 18)
- [ ] Anhang füllen (`Inhalt/Anhang.tex` ist leer): jeder Teil mit Nummer und Überschrift (F. 20)
- [ ] Anhangsverzeichnis im Muster „Anhang 1: Überschrift … Seite“ (F. 21)
- [ ] Auf jeden Anhang im Text verweisen (F. 20)
- [ ] Abbildungen im Anhang **nicht** ins Abbildungsverzeichnis (F. 20) – bei `\appendix` landen sie dort automatisch, abschalten
- [ ] Quellcode als ZIP-Anlage (F. 13, 21)

### Hauptteil (Kap. 3–7)

- [ ] 3.1 darf den Ist-Ablauf aus 1.1 nicht wiederholen, sondern verweist darauf und vertieft (F. 9)
- [ ] Vorgehen ausdrücklich beschreiben: Erhebung der Anforderungen, iterative Entwicklung, Anlage der Befragung mit Quelle für die deutsche SUS-Fassung (F. 9)
- [ ] Fremde Leistung kennzeichnen: UI-Entwürfe (4.4), erstes DB-Schema (4.2) – in 1.3 angekündigt (F. 37)
- [ ] Kurze Zusammenfassung am Ende der größeren Kapitel 3–7 (F. 10)
- [ ] Jede neue Abbildung/Tabelle: im Text verweisen, Quelle darunter, für sich allein verständlich, S/W-tauglich (F. 22–23, 40)
- [ ] Tabellen: Einheit im Spaltenkopf, möglichst wenige Linien (`booktabs`), keine Trauerränder (F. 25)
- [ ] Diagramme (Befragung): Achsen mit Bezeichnung und Einheit, passende Skalierung (F. 24)
- [ ] Rohdaten der Befragung in den Anhang, Ergebnistabelle im Text (F. 23)

### Schluss und Endfassung

- [ ] 8.1 beantwortet die vier Fragestellungen aus 1.2 kompakt, ohne reine Wiederholung (F. 11)
- [ ] 8.2 kritische Bewertung mit offenen Fragen für Theorie und Praxis (F. 11)
- [ ] Einleitung, vor allem 1.4, nach Fertigstellung endgültig formulieren (F. 8)
- [ ] Auslegungsfrage: F. 4 nennt „Einleitung“ und „Schluss“ als zu allgemeine Gliederungspunkte; 8.1/8.3 wiederholen Teile des Kapiteltitels → ggf. bei Kudraß nachfragen
- [ ] Zum Schluss: Rechtschreibprüfung über die ganze Arbeit (F. 45), `build/Arbeit.log` ohne undefinierte Verweise
