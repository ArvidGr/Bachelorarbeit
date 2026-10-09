# Gliederungsvorschlag

Titel: *Entwicklung eines datenbankgestützten Webtools zur Erfassung von
Platinenproduktionsschritten mit Auswertung der Progressionsinformationen, sowie
Sicherstellung der Rückverfolgbarkeit einzelner Platinen*

Die drei Teile des Titels (Erfassung, Auswertung, Rückverfolgbarkeit) haben in Kapitel 5
jeweils einen eigenen Abschnitt (5.2, 5.4, 5.5).
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
1.1 Ausgangssituation in der Platinenfertigung *(Papier-Laufkarten, Excel-Listen, drei Standorte)*
1.2 Zielsetzung und Fragestellungen
1.3 Abgrenzung *(z. B. kein vollständiges MES/ERP, keine Maschinenanbindung)*
1.4 Aufbau der Arbeit

## 2 Grundlagen
2.1 Rückverfolgbarkeit in der Elektronikfertigung *(Traceability, Laufkarte, Seriennummer, Qualitätsnachweis)*
2.2 Fertigungsprozess von Leiterplattenbaugruppen *(SMD, THT, Prüfung, Lackierung, Endkontrolle)*
2.3 Relationale Datenbanken und Integritätssicherung *(Relationenmodell, Constraints, Trigger, Historisierung)*
2.4 Webanwendungen mit SvelteKit *(Server-Rendering, Form-Actions, Runes)*
2.5 Maschinenlesbare Kennzeichnung *(Barcode, QR-Code, Etikettendruck)*

## 3 Anforderungsanalyse
3.1 Analyse des bisherigen Nachweisprozesses
3.2 Akteure und Rollen *(Gast, Mitarbeiter, Admin)*
3.3 Funktionale Anforderungen
3.4 Nichtfunktionale Anforderungen *(Revisionssicherheit, Bedienbarkeit in der Fertigung, Antwortzeiten, Sicherheit)*

## 4 Konzeption
4.1 Systemarchitektur *(Komponentendiagramm)*
4.2 Datenmodell *(ER-Diagramm: Laufkarten, SN-Bereiche, Platinen, Nachweise mit Versuchen, Änderungsprotokoll)*
4.3 Zustandsmodell einer Platine *(Hauptkette, Reparatur, Sperrung, zweiter Durchlauf)*
4.4 Gestaltung der Benutzeroberfläche *(UI-Entwürfe, Quelle kennzeichnen)*
4.5 Anmelde- und Berechtigungskonzept *(Rollen, Startcode-Erstanmeldung, argon2)*

## 5 Implementierung
5.1 Entwicklungsvorgehen und Werkzeuge *(iterativ, Feature-Branches, Pull Requests, Docker)*
5.2 Erfassung von Produktionsschritten *(Bereichserfassung, Prüfung der Vorgängerschritte, Scan-Modus)*
5.3 Geschäftsregeln in der Datenbank *(Trigger für SN-Bereiche und Bereichsschutz)*
5.4 Auswertung des Produktionsfortschritts *(Status je Platine/Bereich/Laufkarte, Liefertermine, Benachrichtigungen, Excel-Export)*
5.5 Rückverfolgbarkeit einzelner Platinen *(Historie, revisionssichere Korrektur, Korrekturanfrage, Prüfprotokolle, Standortverlauf)*
5.6 Lagerverwaltung und Standortwechsel *(Kisten, Paletten, Etiketten, Versand/Wareneingang; ggf. Branches `sk-tronic`/`module-sk`)*

## 6 Datenübernahme und Inbetriebnahme
6.1 Migration der Excel-Bestandsdaten *(Import-Skripte, Datenbereinigung, Problemfälle)*
6.2 Bereitstellung im Unternehmensnetz *(Node-Server, PostgreSQL-Container, Fileserver-Anbindung)*
6.3 Einführung im Betrieb *(Nutzeranlage, Arbeitsanweisung)*

## 7 Evaluation
7.1 Test der Anwendung *(Unit-Tests Scan/Seriennummer/Pfade, manuelle Testfälle)*
7.2 Leistungsoptimierung *(Analyse der Ladezeiten, Faktor 2,7)*
7.3 Befragung der Anwender *(Fragebogen, Durchführung in der Fertigung, Auswertung)*
7.4 Erfüllung der Anforderungen *(Abgleich mit Kap. 3)*
7.5 Anpassungen aus dem Praxiseinsatz *(Reparaturregel, Aufkleberformate, Etikett, Umbau zum Lager)*

## 8 Zusammenfassung und Ausblick
8.1 Zusammenfassung der Ergebnisse
8.2 Kritische Bewertung *(u. a. nur clientseitige Zugriffskontrolle, fehlende automatisierte Oberflächentests)*
8.3 Ausblick *(Server-Sessions, weitere Standorte/Module, Maschinenanbindung)*

---

**Unnummeriert hinten:** Anhangsverzeichnis · Anhang · Abbildungs-/Tabellenverzeichnis · Literaturverzeichnis ·
Selbstständigkeitserklärung (inkl. Angabe der KI-Nutzung)

**Anhang (Vorschlag):**
A1 UI-Entwürfe · A2 Vollständiges ER-Diagramm · A3 Sequenzdiagramme (aus `docs/DIAGRAMME.md`) ·
A4 Auszug Datenbankschema/Trigger · A5 Fragebogen der Anwenderbefragung · A6 Auszug Arbeitsanweisung
**Anlage (ZIP):** Quellcode Produktionsnachweis

## Umfangsschätzung (ca. 45–55 Seiten Text)

| Kapitel | Seiten |
| --- | --- |
| 1 Einleitung | 3–4 |
| 2 Grundlagen | 8–10 |
| 3 Anforderungsanalyse | 5–6 |
| 4 Konzeption | 8–10 |
| 5 Implementierung | 12–14 |
| 6 Datenübernahme und Inbetriebnahme | 4–5 |
| 7 Evaluation | 4–5 |
| 8 Zusammenfassung und Ausblick | 2–3 |

## Alternativen

- Kapitel 6 in 5 und 7 auflösen, wenn die Migration wenig Text hergibt.
- Kapitel 5.6 (Lager) kürzen oder in den Ausblick verschieben, falls der Umfang zu groß wird oder
  das Lagermodul nicht mehr zum Thema gehört.
- Liegt der Schwerpunkt stärker auf der Datenbank, 4.2 und 5.3 zu einem eigenen Kapitel
  „Datenbankentwurf“ ausbauen (passt zu Prof. Kudraß).
