# Bachelorarbeit Arvid Graatz – Kontext für Claude

Arbeitssprache: **Deutsch**. Ziel des Repos: die schriftliche Bachelorarbeit (LaTeX)
über die selbst entwickelte Web-App **Produktionsnachweis**.

Stand dieser Zusammenfassung: 01.11.2026.

## Maßgeblicher Software-Stand

**Stichtag 30.10.2026.** Branch `bachelorarbeit` in `Produktionsnachweis/` (HEAD `81ccf8a` vom 01.11. =
Merge von `main` + Diagramm-Commit; letzter Code-Commit `0d62eb1` vom 29.10.). Code, Schema und Doku auf
diesem Branch lesen. Was danach auf `main` landet, ist nicht Gegenstand der Arbeit (höchstens Ausblick).
(Früherer Stichtag c9e14cb/20.10. ist überholt.)

## Ordner

| Pfad | Inhalt |
| --- | --- |
| `WissenschArbeiten.pdf` | Folien „Wissenschaftliches Arbeiten – Hinweise zum Anfertigen von Bachelor- und Graduierungsarbeiten“, Prof. Dr.-Ing. Thomas Kudraß (HTWK, Fakultät IMN). Verbindliche Formvorgaben, siehe unten. |
| `LatexVorlage/LatexVorlage/` | HTWK-LaTeX-Vorlage. Einstieg `Arbeit.tex`; Metadaten in `Header/Metadaten.tex` (noch Platzhalter „Max Muster“, „Masterarbeit“ → anpassen!); Text in `Inhalt/Haupttext.tex`; Literatur `Literatur/Literatur.bib`. Alle Dateien **UTF-8** (am 09.10.2026 von latin1 umgestellt, `\usepackage[utf8]{inputenc}`). Kapiteldateien in `Inhalt/` beginnen mit `% !TEX root = ../Arbeit.tex`. Kompiliert wird in VS Code mit LaTeX Workshop (Einstellungen in `/.vscode/settings.json`, automatischer Build beim Speichern, Ausgabe `build/Arbeit.pdf`). |
| `Produktionsnachweis/` | Eigenes Git-Repo (GitHub `ArvidGr/Produktionsnachweis`) der Software. Wird im Root-Repo per `.gitignore` ignoriert. |
| `Gliederung.md` | Vorgeschlagene Gliederung der Arbeit (mit Begründung). |
| `TODO` | Offene Aufgaben des Nutzers. |

## Das Projekt Produktionsnachweis (Kurzfassung)

In der Oberfläche und in der Arbeit heißt die App **Produktionsverwaltung** (seit 20.08.2026); „Produktionsnachweis“
ist nur der Repo-Name und der Fachbegriff für einen erfassten Schritt. Prüfstand-TestApp (Python) entstand in
Zusammenarbeit mit zwei Kollegen → in der Arbeit nur die Schnittstelle `/api/pruefung` als eigene Leistung.

Web-App für die **Platinen-Fertigung** der Firma **ZOPF Energieanlagen GmbH** (Standorte Leipzig, Magdala,
Wickede). Ersetzt papier-/Excel-basierte Laufkarten und Produktionsnachweise durch eine
Datenbank mit lückenloser Rückverfolgbarkeit je Platine (Seriennummer).

- **Stack:** SvelteKit 2, Svelte 5 (Runes), TypeScript, Tailwind 3 + daisyUI,
  PostgreSQL 18 (Docker, Paket `postgres`), argon2, exceljs, qrcode, adapter-node
  (Ubuntu-Server im Firmennetz).
- **Kernbegriffe:** *Laufkarte* = Fertigungsauftrag eines Platinentyps mit reserviertem
  Seriennummernbereich (+ Zusatzbereiche). *Platine* = eine Seriennummer.
  *Produktionsnachweis* = erfasster Schritt je Platine (mit `versuch`, `ist_aktuell`, Historie bleibt).
- **Hauptkette:** SMD → THT → Prüfung/optische Kontrolle → Lackierung → Endkontrolle → Im Lager.
  Sonderschritte **Reparatur** und **Gesperrt** außerhalb der Kette; nach Reparatur zweiter Durchlauf möglich,
  dabei nach der Endkontrolle direkt einlagerbar.
- **Funktionen:** Erfassung per SN-Bereich oder **Scan-Modus** (Barcode, alte + neue Aufkleber);
  Laufkartenverwaltung (Admin); öffentliche Suche (Platine / Bereich / Modul, Laufkarten über Tabelle);
  revisionssichere **Korrektur** mit Änderungsprotokoll `PK-JAHR-NNNNNN`; Korrekturanfrage;
  Benachrichtigungen (neue Laufkarte, Liefertermin ≤ 7 Tage, Fehler);
  Prüfprotokoll-PDFs (EC300KW) vom Fileserver; Excel-Bericht je Laufkarte (Fortschritt, Sonderstatus, Lager je Standort);
  **Lager**: Kisten/Paletten mit QR-Etikett (62×90 mm, Brother QL-500), Versand/Wareneingang
  zwischen Standorten, Teillieferungen, Lagerbestandsübersicht.
- **Module** (zunächst Enercon EC300KW): Platinen werden in Module eingebaut. Tabellen `modultypen`,
  `modultyp_bestueckung` (Soll-Bestückung, Erfassung lässt nur genau diese zu), `module`
  (SN `[L|W|ES][JJ][sn_code][Zähler 4-stellig]`, z. B. `ES26440001`), `modul_platinen` (Platine in höchstens
  einem Modul, UNIQUE). Erfassung über Umschalter „Module“ auf `/erfassung`, Detailseite `/suche/modul/[sn]`,
  Etikett im Format Code 128. Die Montage ist **kein** Produktionsschritt. Platinen in Modulen tauschbar,
  protokolliert in `modul_platinen_protokoll` (nur anhängend, Ausbau mit Grund). Modul-Prüfprotokolle werden
  automatisch von den Netzlaufwerken Leipzig/Wickede in `modul_pruefungen` eingelesen (`lib/server/modultests*.ts`,
  stündlich + gezielt beim Aufruf der Modulseite; der frühere Upload von Hand ist entfallen).
  Das Programm **„Modultest ZOPF“** (eigene Leistung des Nutzers, aber eigenständige Anwendung → in der Arbeit nur
  die Anbindung) legt getestete Module über `/api/modul/teststand` an (Bearer-Token wie `/api/pruefung`).
- **Kistenhistorie:** `kisten_protokoll` (eingepackt/umgebucht/entnommen/einzeln versandt, nur anhängend);
  aktueller Stand weiter in `platinen.kiste_id`. Muster „aktueller Stand + Append-only-Protokoll“ ist ein
  Kernargument für Revisionssicherheit. Standort „PCB-Produktion“ (Unterort Leipzig, `standorte.fertigung_id`).
- **Abgrenzung:** ZOPF hat ein ERP-System, an das die App bewusst **nicht** angebunden ist.
- **SK-tronic** (Fremdfertiger): Alte SK-Aufkleber (Typ 1, SN 1–4000, ohne „SK“ im QR-Code) kollidieren
  mit Leipziger SN. In der DB liegen sie als SN + 10 000 000 (`SK_OFFSET`). Ein mehrdeutiger Scan wird über den
  Standort aufgelöst, sonst kommt eine Rückfrage (`sk.ts`, `SkRueckfrage.svelte`).
- **DB-Geschäftsregeln als Trigger:** `trg_platinen_seriennummer_bereich`, `trg_laufkarten_bereich_schutz`.
- **Nutzerverwaltung:** keine Selbstregistrierung; Anlage per Terminal mit einmaligem Startcode (argon2, 7 Tage).
- **Bekannte Schwäche (für kritische Bewertung relevant):** Zugriffskontrolle nur clientseitig
  (Login-Status im `localStorage`, kein Server-Session-Cookie).
- **Doku im Repo:** `README.md` (ausführlich, Abschnitt „Transport“ teils veraltet – seit 08.10. heißt das Modul **Lager**, Routen `/lager/...`),
  `kurzErklärung.txt` (Datei-für-Datei-Erklärung), `docs/DIAGRAMME.md` (Mermaid: Komponenten, ER,
  9 Sequenzdiagramme, Zustandsdiagramm), `DBMS/ER-Diagramm.png`, `UI_Planung/` (UI-Entwürfe Alt/Neu/Transport/Module),
  `app/src/lib/server/schema.sql`.
  `docs/DIAGRAMME.md` am 01.11.2026 auf den Stand 30.10. gebracht (16 Diagramme: Komponenten, ER inkl.
  Protokolltabellen/`modul_pruefungen`, 13 Sequenzdiagramme inkl. Platinentausch und Modul-Prüfstand,
  Zustandsdiagramm; ohne Kunden- und Magdala-Namen, also für den Anhang der Arbeit geeignet; uncommittet im Branch
  `bachelorarbeit`). **Veraltet** bleibt `DBMS/ER-Diagramm.png` (Stand 08.07.) – für die Arbeit nicht verwenden.
- **Tests:** `npm run test` (node:test; `scan`, `seriennummer`, `testprotokolle-pfade`, `modul`, `sk`).

## Git-Historie Produktionsnachweis (bis Stichtag: 209 Commits, davon 169 ohne Merges, 29.06.–29.10.2026, 29 PRs, Feature-Branches)

1. **Prototyp der Oberfläche** (29.06.–07.07.): UI-Entwürfe von *Anna* (fremde Leistung – kennzeichnen!),
   Login, Erfassungs-, Such-, Korrektur-, Laufkartenseite; nur Demo-Daten/localStorage.
2. **Datenbankanbindung** (07.–10.07.): Schema (Basis von Anna, angepasst), PostgreSQL, echte Platinentypen.
3. **Fachlicher Ausbau** (13.–17.07.): Korrekturanfrage, Benachrichtigungen, Prüfung der Vorgängerschritte,
   Reparatur/Sperren, Scan-Modus.
4. **Deployment** (21.–28.07.): adapter-node, Docker/Postgres 18, Ubuntu-Host, Arbeitsanweisung (Word, später aus Git entfernt).
5. **Datenmigration** (29.07.–06.08.): Import aller Excel-Altdaten + Laufkarten per Skripte, Performance ×2,7.
6. **Sicherheit & Wartbarkeit** (18.–20.08.): Startcode-Erstanmeldung, Sync mit Prüfstand-TestApp, großes Refactoring
   (z. B. Korrekturseite 1442 → 380 Zeilen).
7. **Erweiterungen aus dem Betrieb** (Sep.): Reparatur jederzeit, neue Aufkleber, Prüfprotokolle, Transport
   (Kisten, Paletten, Etiketten, Versand/Wareneingang), Scan-Tests, Excel-Export.
8. **Lagerverwaltung und Module** (01.–20.10.): Transport → Lager, Lagerübersicht; Branches `module-sk`
   (Modulmontage) und `sk-tronic` (SK-Platinen-Erkennung) gemergt (PR #29); Excel-Bericht je Laufkarte,
   direkte Einlagerung nach zweitem Durchlauf, Laufkarten ab SN-Start wieder bearbeitbar, EC300KW Typ 4,
   „Alle Benachrichtigungen löschen“. 20.–29.10.: Modul-SN bearbeitbar, Kistenprotokoll/Umbuchung, PCB-Produktion,
   Platinentausch + Modulprotokoll, automatische Modul-Prüfprotokolle, Teststand-Schnittstelle.

## Stand der Ausformulierung

- Kapitel 1 (1.1–1.4) als Entwurf geschrieben (01.11.2026); 1.4 am Ende der Arbeit noch einmal prüfen (Kudraß).
  Verwendet „der Verfasser“ statt Ich-Form. Übrige Kapitel: nur `\geplant{...}`.

## Formvorgaben Kudraß (aus WissenschArbeiten.pdf, Folien 3–6, 8–11, 16–19)

**Gliederung**
- Roter Faden; Gliederungsmethode z. B. deduktiv (allgemein → speziell).
- Keine unverbindlichen Punkte wie „Hauptteil“, „Schluss“ – aussagekräftige Überschriften.
- Punkte gleicher Ebene gleichrangig; ausgewogen; je Punkt ca. **0,5–2 Seiten**.
- **Max. 3 numerische Ebenen** (Vorlage empfiehlt meist 2); jeder unterteilte Punkt ≥ **2 Unterpunkte**.
- Überschriften als **Substantive**, keine Fragen, keine Sätze, keine Satzzeichen; Unterpunkt ≠ Wiederholung des Oberpunkts.
- Nummeriert wird nur der Textteil; nicht nummeriert: Vorwort, Abstract, Verzeichnisse, Anhang, Selbstständigkeitserklärung.

**Einleitung:** Hinführung (Hintergrund, betriebliches Umfeld) · Gegenstand und Ziel mit Fragestellungen ·
Abgrenzung · Aufbau der Arbeit. Erst am Ende endgültig formulieren.
**Hauptteil:** lückenlose Argumentation, keine Wiederholungen, systematisch/methodisch, Fachliteratur einbeziehen,
Überleitungen, Zusammenfassungen am Ende großer Kapitel.
**Schluss:** immer eigenes Schlusskapitel: Zusammenfassung (keine reine Wiederholung), kritische Bewertung, Ausblick.

**Reihenfolge:** Titelblatt (ohne Firmenlogo!) · Inhaltsverzeichnis · ggf. Vorwort · Darstellungs-/Abkürzungsverzeichnis
(hier oder hinten) · Abstract (ca. 1 Seite, ohne Zwischenüberschriften) · Text · Anhangsverzeichnis · Anhang ·
Literaturverzeichnis · Selbstständigkeitserklärung (nicht im Inhaltsverzeichnis).

**Sonstiges:** 11 pt Arial / 12 pt Times, Blocksatz; Seitenzahlen oben, römisch bis Textbeginn, dann arabisch;
Abgabe als PDF, Programm-Artefakte als ZIP-Anlage. Harvard-Zitierweise mit Kürzeln (`[Gr81]`, `[GR86]`, `[ABD+89]`);
Quelle unter jeder Darstellung („Quelle: Eigene Darstellung“). **KI-Nutzung kennzeichnen.** Keine Ich-/Wir-Form;
keine Füllwörter („nun“, „natürlich“, „enorm“); keine eingedeutschten Verben („deployen“, „updaten“);
Zahlen 0–12 ausschreiben; Fachbegriffe beim ersten Auftreten erklären, Abkürzungsverzeichnis sinnvoll.
Generisches Maskulinum mit Gender-Disclaimer ist laut Folie zulässig.

Hinweis: Prof. Kudraß ist Datenbank-Professor (PDF-Metadaten: „The Relational Model“) – Datenmodell,
Integritätsregeln/Trigger und Revisionssicherheit verdienen in der Arbeit Gewicht.

## Festgelegt (09.10.2026)

- **Titel:** „Entwicklung eines datenbankgestützten Webtools zur Erfassung von Platinenproduktionsschritten
  mit Auswertung der Progressionsinformationen, sowie Sicherstellung der Rückverfolgbarkeit einzelner Platinen“
  (steht in `Header/Metadaten.tex`).
- **Kollegen** (Anna, Jan u. a.) werden in der Arbeit **nicht namentlich** erwähnt. Ihre Beiträge
  (UI-Entwürfe, erstes DB-Schema) neutral kennzeichnen, z. B. „Entwurf aus dem Unternehmen“.
- In der Arbeit **nicht nennen:** Kunde Enercon (→ „Kunde aus der Windenergiebranche“), Standort Magdala
  (→ „externer Dienstleister“ für die Lackierung), Kollegen. Firma: „ZOPF Energieanlagen GmbH (im Folgenden ZOPF)“;
  Autor ist Werkstudent.
- Module und SK-tronic gehören **zur Arbeit** (28.10.2026): Module in Abschnitt 5.7 „Zuordnung von Platinen
  zu Modulen“, SK-tronic in 5.2/4.2/7.5/8.2.
- Eine **Anwenderbefragung** ist geplant (Abschnitt 7.3, Fragebogen in Anhang E).
- Gliederung ist in LaTeX umgesetzt (`Inhalt/Haupttext.tex`, `Inhalt/Anhang.tex`), kursive
  `\geplant{...}`-Stichpunkte sind Platzhalter. `Gliederung.md` synchron halten.
- Kompilieren: in `LatexVorlage/LatexVorlage` → `latexmk -pdf -outdir=build -f Arbeit.tex`
  (BibTeX-Fehler, solange es keine `\cite` gibt, sind normal). Kopie des PDFs liegt als `Gliederung.pdf` im Root.
- `Arbeit.tex`: Anhang steht vor dem Literaturverzeichnis, kein Wechsel auf römische Seitenzahlen (beides nach Kudraß).

## Offene Punkte

- Studiengang, Matrikelnummer, Erst-/Zweitprüfer (Platzhalter in `Metadaten.tex`), Abgabetermin.
- Formvorgaben Kudraß noch nicht in der Vorlage umgesetzt: Seitenzahlen oben, Zeilenabstand einzeilig
  (Vorlage: 1,5-fach), Schrift 11 pt Arial / 12 pt Times.
