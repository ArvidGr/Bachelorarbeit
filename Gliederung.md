# Gliederungsvorschlag

Titel: *Entwicklung eines datenbankgestützten Webtools zur Erfassung von
Platinenproduktionsschritten mit Auswertung der Progressionsinformationen, sowie
Sicherstellung der Rückverfolgbarkeit einzelner Platinen*

Die drei Teile des Titels (Erfassung, Auswertung, Rückverfolgbarkeit) haben in Kapitel 5
jeweils einen eigenen Abschnitt (5.2, 5.4, 5.5); 5.7 erweitert die Rückverfolgbarkeit auf Module.

**Betrachteter Software-Stand:** 30.10.2026 (Branch `bachelorarbeit`, letzter Code-Commit `0d62eb1` vom 29.10.).
**Ausformuliert:** Kapitel 1 (1.1–1.4, Entwurf; 1.4 am Ende noch einmal prüfen); Kapitel 2: Einleitung und 2.1.
**Umgesetzt in LaTeX:** `LatexVorlage/LatexVorlage/Inhalt/Haupttext.tex` + `Inhalt/Anhang.tex`,
kompiliert als `Gliederung.pdf`. Bei Änderungen beide Stellen synchron halten.

Gliederungsmethode: **deduktiv** – vom allgemeinen Problem (Rückverfolgbarkeit) über
Anforderungen und Konzept zur konkreten Umsetzung und deren Bewertung. Die Kapitel 3–7
folgen dem tatsächlichen Projektverlauf aus der Git-Historie (Prototyp → Datenbank →
fachlicher Ausbau → Migration/Deployment → Erweiterungen aus dem Betrieb).

Regeln nach Kudraß eingehalten: maximal 2 Ebenen, jeder unterteilte Punkt mit ≥ 2 Unterpunkten,
substantivische Überschriften, kein „Hauptteil“, eigenes Schlusskapitel.

---

**Unnummeriert vorne:** Titelblatt · Inhaltsverzeichnis · Abkürzungsverzeichnis · Abstract

## 1 Einleitung
1.1 Ausgangssituation in der Platinenfertigung *(Papier-Laufkarten, Excel-Listen, zwei Standorte + externe Lackierung)*
1.2 Zielsetzung und Fragestellungen *(drei Teilziele, vier Fragestellungen)*
1.3 Abgrenzung *(kein MES, keine ERP-Anbindung, keine Maschinenanbindung, keine Bauteilrückverfolgung, kein Verkauf der Module und kein Entfernen verkaufter Module; Stand 30.10.2026; Eigen-/Fremdleistung)*
1.4 Aufbau der Arbeit

## 2 Grundlagen
2.1 Rückverfolgbarkeit in der Elektronikfertigung *(Traceability, Laufkarte, Seriennummer, Qualitätsnachweis, Baugruppenebenen Platine – Modul)*
2.2 Fertigungsprozess von Leiterplattenbaugruppen *(SMD, THT, Prüfung, Lackierung, Endkontrolle)*
2.3 Relationale Datenbanken und Integritätssicherung *(Relationenmodell, Constraints, Trigger, Historisierung)*
2.4 Webanwendungen mit SvelteKit *(Server-Rendering, Form-Actions, Runes)*
2.5 Maschinenlesbare Kennzeichnung *(Barcode/Code 128, QR-Code, Etikettendruck)*

## 3 Anforderungsanalyse
3.1 Analyse des bisherigen Nachweisprozesses
3.2 Akteure und Rollen *(Gast, Mitarbeiter, Admin)*
3.3 Funktionale Anforderungen *(Erfassung, Auswertung, Rückverfolgung, Korrektur, Lager, Modulmontage)*
3.4 Nichtfunktionale Anforderungen *(Revisionssicherheit, Bedienbarkeit in der Fertigung, Antwortzeiten, Sicherheit)*

## 4 Konzeption
4.1 Systemarchitektur *(Komponentendiagramm)*
4.2 Datenmodell *(ER-Diagramm: Laufkarten, SN-Bereiche, Platinen, Nachweise mit Versuchen, Änderungsprotokoll, Standorte, Module mit Soll-Bestückung, Protokolltabellen für Kisten-/Modulzuordnung, Modulprüfungen; Seriennummernkonzept inkl. SK-Versatz)*
4.3 Zustandsmodell einer Platine *(Hauptkette, Reparatur, Sperrung, zweiter Durchlauf mit direkter Einlagerung)*
4.4 Gestaltung der Benutzeroberfläche *(UI-Entwürfe, Quelle kennzeichnen)*
4.5 Anmelde- und Berechtigungskonzept *(Rollen, Startcode-Erstanmeldung, argon2)*

## 5 Implementierung
5.1 Entwicklungsvorgehen und Werkzeuge *(iterativ, Feature-Branches, Pull Requests, Docker)*
5.2 Erfassung von Produktionsschritten *(Bereichserfassung, Prüfung der Vorgängerschritte, Scan-Modus, mehrdeutige SK-tronic-Seriennummern)*
5.3 Geschäftsregeln in der Datenbank *(Trigger für SN-Bereiche und Bereichsschutz)*
5.4 Auswertung des Produktionsfortschritts *(Status je Platine/Bereich/Laufkarte, Liefertermine, Benachrichtigungen, Excel-Bericht je Laufkarte)*
5.5 Rückverfolgbarkeit einzelner Platinen *(Historie, revisionssichere Korrektur, Korrekturanfrage, Prüfprotokolle, Standortverlauf, Kistenhistorie)*
5.6 Lagerverwaltung und Standortwechsel *(Kisten, Paletten, Etiketten, Versand/Wareneingang, Teillieferungen, Lagerübersicht)*
5.7 Zuordnung von Platinen zu Modulen *(Modultypen und Soll-Bestückung, Modul-Seriennummer, Montage per Scan (regulär aus dem Lager, Ausnahmen nur mit Bestätigung bzw. Warnung, gesperrte Platinen nie), Modulsuche, Etikett Code 128, Platinentausch mit Protokoll, automatisch eingelesene Modul-Prüfprotokolle, Modul-Prüfstand-Schnittstelle)*

## 6 Datenübernahme und Inbetriebnahme
6.1 Migration der Excel-Bestandsdaten *(Import-Skripte, Datenbereinigung, Problemfälle)*
6.2 Bereitstellung im Unternehmensnetz *(Node-Server, PostgreSQL-Container, Fileserver-Anbindung)*
6.3 Einführung im Betrieb *(Nutzeranlage, Arbeitsanweisung)*

## 7 Evaluation
7.1 Test der Anwendung *(Unit-Tests Scan/Seriennummer/Pfade/Module/SK, manuelle Testfälle)*
7.2 Leistungsoptimierung *(Analyse der Ladezeiten, Faktor 2,7)*
7.3 Befragung der Anwender *(Fragebogen, Durchführung in der Fertigung, Auswertung)*
7.4 Erfüllung der Anforderungen *(Abgleich mit Kap. 3)*
7.5 Anpassungen aus dem Praxiseinsatz *(Reparaturregel, Aufkleberformate, SK-tronic-Aufkleber, Etikett, Umbau zum Lager)*

## 8 Zusammenfassung und Ausblick
8.1 Zusammenfassung der Ergebnisse
8.2 Kritische Bewertung *(u. a. nur clientseitige Zugriffskontrolle, fehlende automatisierte Oberflächentests, SK-Kennzeichnung per Seriennummernversatz)*
8.3 Ausblick *(Server-Sessions, Module weiterer Kunden, weitere Standorte, ERP-Anbindung, Maschinenanbindung)*

---

**Unnummeriert hinten:** Anhangsverzeichnis · Anhang · Abbildungs-/Tabellenverzeichnis · Literaturverzeichnis ·
Selbstständigkeitserklärung (inkl. Angabe der KI-Nutzung)

**Anhang (Vorschlag):**
A1 UI-Entwürfe · A2 Vollständiges ER-Diagramm · A3 Sequenzdiagramme (aus `docs/DIAGRAMME.md`) ·
A4 Auszug Datenbankschema/Trigger · A5 Fragebogen der Anwenderbefragung · A6 Auszug Arbeitsanweisung
**Anlage (ZIP):** Quellcode Produktionsnachweis

## Umfangsschätzung (ca. 47–57 Seiten Text)

| Kapitel | Seiten |
| --- | --- |
| 1 Einleitung | 3–4 |
| 2 Grundlagen | 8–10 |
| 3 Anforderungsanalyse | 5–6 |
| 4 Konzeption | 8–10 |
| 5 Implementierung | 14–16 |
| 6 Datenübernahme und Inbetriebnahme | 4–5 |
| 7 Evaluation | 4–5 |
| 8 Zusammenfassung und Ausblick | 2–3 |

## Alternativen

- Kapitel 6 in 5 und 7 auflösen, wenn die Migration wenig Text hergibt.
- Wird Kapitel 5 zu lang, 5.6 (Lager) und 5.7 (Module) in ein eigenes Kapitel „Erweiterungen aus dem Betrieb“
  auslagern oder 5.6 kürzen.
- Liegt der Schwerpunkt stärker auf der Datenbank, 4.2 und 5.3 zu einem eigenen Kapitel
  „Datenbankentwurf“ ausbauen (passt zu Prof. Kudraß).
