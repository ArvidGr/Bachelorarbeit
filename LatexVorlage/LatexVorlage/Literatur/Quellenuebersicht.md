# Quellenübersicht

Arbeitsnotiz zu den PDFs in `Literatur/Quellen/` (git-ignoriert). Seitenangaben: **S.** = gedruckte Buchseite (zum Zitieren),
**PDF** = Seite in der PDF-Datei. Zitierschlüssel erst eintragen, wenn die Quelle in Zotero ist.

Stand: 02.11.2026

---

## Yilmaz et al. (2022): Transparenz und Rückverfolgbarkeit

- **Datei:** `978-3-658-38181-3_2.pdf` (nur Kapitel 2, S. 9–13 = PDF 1–5)
- **Quelle:** E. Yilmaz et al.: *Blockchain-Implementierung in eine Automotive Supply Chain*. Reihe essentials,
  Springer Fachmedien Wiesbaden, 2022, Kap. 2, DOI 10.1007/978-3-658-38181-3_2. Vollständige Autorenliste über die DOI in Zotero holen.
- **Zotero-Schlüssel:** –
- **Bewertung:** brauchbar für 2.1. Das Thema (Blockchain, Automotive) ist fremd, die Grundlagen zur Rückverfolgbarkeit sind allgemein.
  Kurzes essentials-Bändchen, daher als Ergänzung, nicht als Hauptquelle nutzen.

| Seite | Inhalt | Verwendung |
| --- | --- | --- |
| S. 9–12 (PDF 1–4) | Transparenz in Wirtschaft und Technik (Produkt-/Prozesstransparenz, Verhaltens-/Strukturtransparenz) | eher nicht, zu weit weg |
| S. 12 (PDF 4) | Rückverfolgbarkeit ist für Handelssysteme unabdingbar; Wissen über **Herkunft, Zustand und Ziel** eines Gutes; Aufwand steigt mit der Komplexität des Netzwerks (nach Dippel) | 2.1 Motivation |
| S. 12 (PDF 4) | Begriff = englisch **Tracking und Tracing**. Definition, angeblich nach Moe 1998, S. 211: „Das Konzept der Rückverfolgbarkeit und der Überwachung bezieht sich auf Material-, Informations- und/oder Finanzprotokollierung von der Quelle bis zur Senke …“ | **Nicht verwenden.** Diese Formulierung steht so nicht bei Moe (1998), siehe unten. Stattdessen Moe direkt und ISO 9000 zitieren |
| S. 12 (PDF 4) | **TRU** = rückverfolgbare Einheit, z. B. Stückgut, Container, Palette, Produktionscharge | 2.1, Bezug: Platine/Modul/Kiste als TRU |
| S. 13 (PDF 5) | Treiber: **Sicherheit und Qualität** (teils gesetzlich vorgeschrieben), Gesellschaft, Wirtschaft (Effizienz der Lieferkette) | 2.1 Bedeutung |
| S. 13 (PDF 5) | Für ein wirksames System braucht es eine **Verbindung zwischen Informationen und physischem Fluss**, z. B. über Verpackung und Beschriftung (nach Aung & Chang 2014, S. 28) | 2.1, Überleitung zu 2.5 (Kennzeichnung) |
| S. 13 (PDF 5) | Vier Faktoren nach Regattieri et al. (2007, S. 349 ff.): **Produktidentifikation, Datenverfolgung, Materialfluss, Rückverfolgbarkeitstool** | 2.1 Gliederungsgerüst. Passt direkt auf die App: Seriennummer/Etikett, Produktionsnachweise, Standorte/Kisten, Webanwendung |
| S. 13 (PDF 5) | Blockchain: Transaktionen unveränderlich gespeichert | höchstens in 2.3 als Abgrenzung zur Historisierung in der Datenbank |

## DIN EN ISO 9000:2026-09: Qualitätsmanagement – Grundlagen und Begriffe

- **Datei:** `DIN EN ISO 9000_2026-09-00_DE_3705896.pdf` (78 PDF-Seiten; gedruckte Seite = PDF-Seite − 4)
- **Quelle:** DIN EN ISO 9000:2026-09, *Qualitätsmanagement – Grundlagen und Begriffe (ISO 9000:2026)*; Deutsche Fassung EN ISO 9000:2026.
  Berlin: DIN Media, September 2026. Ersetzt DIN EN ISO 9000:2015-11 (PDF 3).
- **Zotero-Schlüssel:** –
- **Bewertung:** **Primärquelle für die Begriffe in 2.1.** Aktuelle Fassung verwenden. Die Begriffsnummern haben sich gegenüber 2015 geändert
  (Rückverfolgbarkeit früher 3.6.13, jetzt 3.5.11).

| Seite | Inhalt | Verwendung |
| --- | --- | --- |
| S. 19 (PDF 23) | **3.5.11 Rückverfolgbarkeit:** „Möglichkeit, den Werdegang, die Verwendung oder den Ort eines Objekts zu verfolgen“. Anm. 1: bei Produkten bezogen auf Herkunft von Werkstoffen und Teilen, **Ablauf der Verarbeitung**, Verteilung und Standort nach Auslieferung | 2.1 **Kerndefinition**. Die drei Bezüge passen auf Bauteile (nicht im Umfang), Produktionsschritte und Standorte/Lager |
| S. 26 (PDF 30) | **3.8.12 Aufzeichnung:** „Dokument, das erreichte Ergebnisse angibt oder einen Nachweis ausgeführter Tätigkeiten bereitstellt“. Anm. 1: dient u. a. zur Darlegung von Rückverfolgbarkeit | 2.1, ein Produktionsnachweis ist eine Aufzeichnung im Sinne der Norm |
| S. 26 (PDF 30) | **3.8.14 dokumentierte Information:** Informationen, die gesteuert und aufrechterhalten werden müssen, samt Medium. Anm. 1: in jedem Format oder Medium. Anm. 2: u. a. „Nachweis erreichter Ergebnisse [Aufzeichnungen]“ | 2.1, Papier und Datenbank sind gleichermaßen zulässig |
| S. 27 (PDF 31) | **3.8.15 Formular:** wird zur Aufzeichnung, sobald Daten eingetragen sind | 2.1/3.1, die Papier-Laufkarte als Formular |
| S. 49–50 (PDF 53–54) | **4.4.10 Informationsmanagement:** Genauigkeit, Rechtzeitigkeit, Vollständigkeit von Informationen; steuert „Erfassung, Integrität, Speicherung, Aufbewahrung und den Schutz von Daten“; „Viele Prozesse sind von der Verfügbarkeit genauer Informationen am Ort der Nutzung […] abhängig“; Schutz der Integrität wichtig | 2.1 Überleitung zu 2.3 (Integrität), 3.4 nichtfunktionale Anforderungen |
| S. 47–48 (PDF 51–52) | 4.4.5 Neue Technologien: können Prozesse optimieren, aber das QMS beeinträchtigen, wenn ihre Auswirkungen nicht verstanden sind | optional, Motivation in 1.1 oder 8 |

## DIN EN ISO 9001:2026-11: Qualitätsmanagementsysteme – Anforderungen

- **Datei:** `DIN EN ISO 9001_2026-11-00_ML_3728579.pdf` (104 PDF-Seiten, deutsch + englisch; deutscher Teil: gedruckte Seite = PDF-Seite − 4)
- **Quelle:** DIN EN ISO 9001:2026-11, *Qualitätsmanagementsysteme – Anforderungen (ISO 9001:2026)*; Deutsche und Englische Fassung
  EN ISO 9001:2026. Berlin: DIN Media, November 2026. Ersetzt DIN EN ISO 9001:2015-11 und A1:2024-11 (S. 3).
- **Zotero-Schlüssel:** –
- **Bewertung:** **Primärquelle für die Anforderungen in 2.1.** Aktuelle Fassung zitieren. Die Abschnittsnummern 7.5 und 8.5.2 sind gegenüber
  2015 gleich geblieben, der Inhalt von 8.5.2 entspricht der Zusammenfassung bei Koubek (S. 99). Die Änderungen 2026 betreffen u. a.
  Qualitätskultur, Risiken/Chancen und Änderungsmanagement (S. 3–4), nicht die Rückverfolgbarkeit.

| Seite | Inhalt | Verwendung |
| --- | --- | --- |
| S. 3–4 (PDF 3–4) | Änderungen gegenüber 2015, u. a. Qualitätskultur, Trennung Risiken/Chancen, Umgang mit Änderungen; ISO 9000 bleibt Referenz für die Begriffe | ein Satz zur Einordnung |
| S. 27 (PDF 31) | **7.5.2:** Kennzeichnung dokumentierter Information (Titel, Datum, Autor, Referenznummer); Medium „Papier, elektronisch“. **7.5.3.1:** verfügbar, wo und wann benötigt; geschützt u. a. vor „Verlust der Integrität“. **7.5.3.2:** Verteilung, Zugriff, Auffindung; Speicherung inkl. Lesbarkeit; „Überwachung von Änderungen (z. B. Versionskontrolle)“; Aufbewahrung | 2.1, Bezug zu 2.3 (Integrität) und 5.5 (Korrektur mit Protokoll) |
| S. 28 (PDF 32) | „Dokumentierte Information, die als Nachweis der Konformität verfügbar ist, muss vor unbeabsichtigten Änderungen geschützt werden.“ Anmerkung: Zugriff = Recht nur zu lesen oder zu lesen und zu ändern | 2.1 **Kernsatz für Revisionssicherheit**; 4.5 Rollen |
| S. 34 (PDF 38) | **8.5.2 Kennzeichnung und Rückverfolgbarkeit:** a) Outputs kennzeichnen, wenn für die Konformität nötig; b) **Status der Outputs** während der gesamten Produktion in Bezug auf Überwachungs- und Messanforderungen kennzeichnen; c) **eindeutige Kennzeichnung** steuern, wenn Rückverfolgbarkeit gefordert ist; d) dokumentierte Information als Nachweis verfügbar halten, die die Rückverfolgbarkeit ermöglicht | 2.1 **Kernstelle**. a)/c) Seriennummer und Etikett, b) Status je Platine, d) Produktionsnachweise |
| S. 34 (PDF 38) | 8.5.1 g) „Maßnahmen zur Verhinderung menschlichen Fehlverhaltens“ | 2.1 oder 3.4, Scan statt Abschreiben |
| S. 48 (PDF 52) | **A.7.5** (informativ): dokumentierte Information in jedem Medium und Format; dient als Nachweis, dass Prozesse wie beabsichtigt durchgeführt wurden; Nachweise der Konformität werden „vor unbeabsichtigten oder unbefugten Änderungen und Löschung geschützt“ | 2.1/2.3, Begründung für nur anhängende Protokolle |
| S. 50 (PDF 54) | **A.8.5** (informativ): „Kennzeichnung und Rückverfolgbarkeit sind eng miteinander verbunden, denn die Rückverfolgbarkeit erfordert eine eindeutige Kennzeichnung der Outputs, wenn es notwendig ist, frühere Verarbeitungsstufen oder den Status nach der Auslieferung zu bestimmen.“ Kennzeichnung kann zeigen, ob geplante Kontrollen abgeschlossen sind. Rückverfolgbarkeit kann von der Organisation, von **Kunden** oder gesetzlich gefordert sein | 2.1 **gutes Direktzitat**; Überleitung zu 2.5 |

## Moe (1998): Perspectives on traceability in food manufacture

- **Datei:** `Moe(1998).pdf` (4 Seiten = S. 211–214)
- **Quelle:** Moe, T.: Perspectives on traceability in food manufacture. In: *Trends in Food Science & Technology* 9 (1998), S. 211–214.
  DOI 10.1016/S0924-2244(98)00037-5. Zotero: Zeitschriftenartikel (`@article`).
- **Zotero-Schlüssel:** –
- **Bewertung:** **sehr gut für 2.1**, oft zitierter Grundlagenartikel. Er ist zwar auf Lebensmittel bezogen, beschreibt die Grundlagen aber
  ausdrücklich als unabhängig vom Produkt (S. 211). Englisch, daher sinngemäß zitieren oder eigene Übersetzung kennzeichnen.
- **Befund:** Das deutsche „Zitat nach Moe 1998, S. 211“ bei Yilmaz et al. (S. 12) steht so **nicht** im Artikel. Moe übernimmt auf S. 211 die
  ISO-Definition (siehe unten), die TRU wird erst auf S. 212 erklärt. Die Stelle bei Yilmaz daher nicht verwenden.

| Seite | Inhalt | Verwendung |
| --- | --- | --- |
| S. 211 | Rückverfolgbarkeit = Fähigkeit, eine Produktcharge und ihre Geschichte durch die ganze Kette oder Teile davon zu verfolgen (**chain traceability**) oder intern innerhalb eines Schritts, z. B. der Produktion (**internal traceability**); die Grundlagen sind unabhängig von Produkt und Produktion („a generic issue“) | 2.1, Unterscheidung intern/Kette; die App leistet interne Rückverfolgbarkeit über mehrere Standorte |
| S. 211 | Hersteller von Fahrzeugen, Flugzeugen und Raumfahrzeugen haben seit Langem fortgeschrittene Systeme zur Rückverfolgbarkeit | 2.1 Bedeutung in der technischen Fertigung |
| S. 211 | „Traceability is an essential subsystem of quality management.“ Interne Systeme entstehen auch aus dem Ziel, die Datenerfassung effizienter zu machen | 2.1, Verbindung zur ISO 9001 |
| S. 211 | Definition nach ISO 8402: „the ability to trace the history, application or location of an entity, by means of recorded identifications“; vier Kontexte: Produkt, Daten, Kalibrierung, IT/Programmierung | 2.1; Vorgänger der Definition in ISO 9000:2026, 3.5.11. Den Kontext „IT“ (Anforderungs-Rückverfolgbarkeit) ausdrücklich abgrenzen |
| S. 212 | Produkt-Rückverfolgbarkeit beruht auf **eindeutiger Identifikation**, durch physische Kennzeichnung am Produkt oder an der Verpackung oder durch Aufzeichnungen; System = **Route** (Weg des Produkts) und **Umfang** (extent) | 2.1 Kern; Seriennummer/Etikett und Kiste; Route = Produktionsschritte und Standorte |
| S. 212 | Kernobjekte **Produkt** und **Aktivität** mit Beschreibungsmerkmalen (Fig. 1: Art, Menge, Art der Tätigkeit, Zeitpunkt/Dauer) | 2.1, Abb.-Idee: Platine = Produkt, Produktionsnachweis = Aktivität mit Schritt, Zeit, Mitarbeiter |
| S. 212 | **Traceable Resource Unit (TRU)**: eindeutige Einheit; was eine TRU ist, legt der Systementwickler fest; beim **Zusammenführen** von TRUs entsteht eine **neue TRU mit neuer Identifikation** | 2.1 und 5.7: Platine = TRU (Losgröße 1), Modul = neue TRU aus mehreren Platinen mit eigener Seriennummer |
| S. 212 | **Retrospektive Analyse**: Rückverfolgbarkeit arbeitet rückwärts; Aufzeichnungen sind so zu gestalten, dass sie im Nachhinein abgefragt werden; „a stable, accessible record system is essential“ | 2.1 → 2.3, Argument für Datenbank und unveränderliche Historie |
| S. 213 | „Traceability systems work fine based on pen and paper versions.“ Computer erlauben mehr Daten und sehr detaillierte Historie zu Produkt und Verarbeitung | 2.1/3.1, fairer Vergleich Papier vs. Datenbank |
| S. 213 | Box 3, Vorteile interner Rückverfolgbarkeit: bessere Prozesssteuerung; Ursache-Wirkung bei Nichtkonformität; leichtere Informationsbeschaffung bei QM-Audits; Grundlage für IT-Lösungen wie **MES** | 2.1 Nutzen; MES-Abgrenzung aus 1.3 |
| S. 213 | Kettenrückverfolgbarkeit: meist werden Informationen lokal je Schritt gespeichert und nur die Produktidentifikation wandert mit | optional, Bezug zu Fremdfertiger/Standorten |
| S. 214 | Nur ein internes System nahe an der idealen TRU taugt als Raster, um Daten aus Prozesssteuerung, QM und anderen Systemen zu verknüpfen | 2.1, Begründung für Rückverfolgbarkeit je Seriennummer statt je Charge |

## Koubek (2017): DIN EN ISO 9001:2015 umsetzen

- **Dateien:** `koubek-2017-din-en-iso-9001-2015-umsetzen.pdf` (Titelei, Inhalt), `koubek-2017-einleitung.pdf` (S. 7–12),
  `koubek-2017-unterstützung_Kapitel7.pdf` (Kap. 7, darin 7.5 ab S. 79), `koubek-2017-betrieb_Kapitel8.pdf` (Kap. 8, S. 84–107).
  Die gedruckten Seitenzahlen stehen im PDF-Text, z. B. „Betrieb 99“.
- **Quelle:** Anni Koubek: *DIN EN ISO 9001:2015 umsetzen. QM-System aufbauen und weiterentwickeln*. Reihe Pocket Power,
  hrsg. von Gerd F. Kamiske. München: Carl Hanser Verlag, 2017. ISBN 978-3-446-45199-5. **Als ganzes Buch** in Zotero (`@book`),
  Koubek ist alleinige Autorin; Kamiske ist nur Reihenherausgeber.
- **Zotero-Schlüssel:** –
- **Bewertung:** **gut geeignet für 2.1.** Erklärt die Anforderungen der ISO 9001:2015 Abschnitt für Abschnitt („Worum geht es? / Was bringt es? / Wie gehe ich vor?“).
  Die Anforderungen selbst aus der **ISO 9001:2026** zitieren, Koubek für Einordnung und Erläuterungen (Praxis, Mängel, Nutzen).

| Seite | Inhalt | Verwendung |
| --- | --- | --- |
| S. 8–10 | Geschichte der ISO 9001 (erste Fassung 1987, ursprünglich vereinheitlichte Anforderungen an Lieferanten, Revisionen 1994/2000/2008/2015); Normenfamilie: **ISO 9000 Grundlagen und Begriffe, ISO 9001 Anforderungen**, ISO 9004 Leitfaden (Bild 1, S. 10) | 2.1 Einordnung der Normen, ein bis zwei Sätze |
| S. 79–80 | **7.5 Dokumentierte Information**: Lenkung (verteilen, zugreifen, speichern, Änderungen überwachen, aufbewahren); **„Schutz von Aufzeichnungen vor unbeabsichtigten Änderungen“** (S. 80) | 2.1, Grundlage für die revisionssichere Korrektur (Bezug 2.3, 5.5) |
| S. 81 | Typische Mängel: keine einheitliche Kennzeichnung, keine Aufbewahrungsregeln, **Mehrfachablage**, **ineffiziente Verteilung über E-Mail**; Gefahr, mit falschen oder unauffindbaren Dokumenten zu arbeiten | 3.1 Ist-Analyse, passt genau auf die Excel-/E-Mail-Praxis |
| S. 82 | Prüffrage „Gibt es Informations- oder **Medienbrüche**?“ | 3.1 |
| S. 83 | Handlungsrelevante Information von archivierter trennen; **nur ein einziger Punkt, an dem die gültige Information abgerufen werden kann** | 2.1/3.4, Argument für eine zentrale Datenbank |
| S. 98–99 | **8.5 Produktion**: beherrschte Bedingungen, u. a. Dokumentation zu Produkten und Tätigkeiten, „Maßnahmen zur Verhinderung von menschlichen Fehlern“ (S. 99) | 2.1, Bezug zu Scan statt Abtippen |
| S. 99 | **Kennzeichnung/Rückverfolgbarkeit (8.5.2):** Kennzeichnung von Prozessergebnissen; **Kennzeichnung des Produktstatus** in Bezug auf Überwachungs- und Messanforderungen; falls gefordert **eindeutige Kennzeichnung und Aufzeichnungen, damit Rückverfolgbarkeit von Ergebnissen möglich ist** | 2.1 **Kernstelle** (Seriennummer, Status je Platine, Produktionsnachweise) |
| S. 100 | Rückverfolgbarkeit und Kennzeichnung sind in Branchen wie Medizinprodukte, Lebensmittel, **Automobilindustrie** „von hoher Bedeutung“ | 2.1 Bedeutung |
| S. 103 | **8.6 Freigabe**: Aufzeichnungen über Freigaben aufbewahren, inkl. Konformität mit Annahmekriterien und **wer freigegeben hat** | 2.1, Bezug: Mitarbeiternummer je Nachweis, Endkontrolle |
| S. 104 | Rückverfolgbarkeit über alle relevanten Prozesse der Freigabephasen sicherstellen, Nachweise systematisch aufbewahren; üblich ist es, sie **gesammelt und nicht an den einzelnen Arbeitsplätzen** aufzubewahren | 2.1/3.4, Argument für zentrale Erfassung |
| S. 105 | **8.7 Nichtkonforme Ergebnisse**: Korrektur, **aussondern, sperren**, zurückgeben; Aufzeichnungen über Nichtkonformität, Maßnahmen und wer entschieden hat | 2.1 oder 4.3, Bezug zu Sonderschritten Gesperrt/Reparatur |
| S. 106 | Fehlerbehandlung u. a. durch **Nacharbeit, Reparatur**, Ersetzen fehlerhafter Teile | 4.3 Reparatur, 5.7 Platinentausch |

## Mai (2020): Qualitätsmanagement in der Bildungsbranche

- **Datei:** `978-3-658-27004-9.pdf` (ganzes Buch, 266 PDF-Seiten; Buchseite = PDF-Seite − 14 im Hauptteil)
- **Quelle:** Florian Mai: *Qualitätsmanagement in der Bildungsbranche. Ein Leitfaden für Bildungseinrichtungen und Lerndienstleister*.
  Wiesbaden: Springer Gabler, 2020. ISBN 978-3-658-27003-2, DOI 10.1007/978-3-658-27004-9.
- **Zotero-Schlüssel:** –
- **Bewertung:** **kaum geeignet.** Das Buch behandelt die Bildungsbranche, Rückverfolgbarkeit in der Produktion kommt nicht vor.
  Der Autor rät selbst, die Normen als Primärquelle zu nutzen (S. VIII). Nur aufnehmen, wenn eine der folgenden Stellen gebraucht wird:

| Seite | Inhalt | Verwendung |
| --- | --- | --- |
| S. 9 (PDF 23) | Qualitätsdefinition nach ISO 9000:2015: „Qualität ist der Grad, in dem eine Menge innewohnender Merkmale eines Objektes Anforderungen erfüllt.“ | höchstens 2.1. Besser direkt aus der Norm oder aus Koubek |
| S. 64 (PDF 78) | QM-Grundsatz **Faktengestützte Entscheidungsfindung**: verifizierbare Nachweise und Datenanalysen als Entscheidungsgrundlage; Vorteil u. a. „Fähigkeit frühere Entscheidungen und deren Wirkung nachzuvollziehen“ | evtl. 2.1 oder 3.4 als Begründung für die Auswertung |
| S. 53–74 | Kap. 3: Grundsätze nach ISO 9000:2015, PDCA, prozessorientierter Ansatz | nur bei Bedarf |

---

## Zickert (2023): Leiterplatten

- **Datei:** `zickert-2023-leiterplatten.pdf` (219 PDF-Seiten; gedruckte Seite = PDF-Seite − 2)
- **Quelle:** Gerald Zickert: *Leiterplatten. Stromlaufplan, Layout und Fertigung*. 3., aktualisierte Auflage. München: Carl Hanser Verlag, 2023.
  ISBN 978-3-446-47583-0.
- **Zotero-Schlüssel:** `zickertLeiterplatten2023`
- **Bewertung:** **Hauptquelle für 2.2.** Deckt Montagearten, Bestücken und Löten ab, aber nicht Prüfung, Schutzlack und Handlöten.

| Seite | Inhalt | Verwendung |
| --- | --- | --- |
| S. 65–66 (PDF 67–68) | Durchsteck- und Oberflächenmontage, Bild 3.9; THT rückläufig | 2.2, Abb. 2.2 |
| S. 92 (PDF 94) | Beide Montageprinzipien gemischt anwendbar, Bild 4.6 | 2.2 |
| S. 156–157 (PDF 158–159) | Baugruppenfertigung; Handbestückung, Bestückungsautomat | 2.2 |
| S. 159–160 (PDF 161–162) | Löten: Begriff, Ablauf, Flussmittel | 2.2 |
| S. 167 (PDF 169) | Bedrahtete Bauteile, Steckverbinder und viele Bauteile der Leistungselektronik nicht für Reflow geeignet; Selektivlöten | 2.2 |
| S. 169–171 (PDF 171–173) | Reflowlöten: Lotpaste, Bestücken, Zonen der Lötanlage | 2.2 |
| S. 172–173 (PDF 174–175) | Lötfehler: Grabsteineffekt, Aufschwimmen | 2.2 |
| S. 183 (PDF 185) | Zusammenfassung: Wellenlöten für bedrahtete Bauteile und SMD geeignet | 2.2 |

## Suppa (2013): Anforderungen an eine Schutzlackierung

- **Datei:** `Anforderungen_an_eine_Schutzlackierung.pdf` (4 Seiten, über wiso-net)
- **Quelle:** Manfred Suppa: Anforderungen an eine Schutzlackierung. In: *ELEKTRONIKPRAXIS* Nr. 23 vom 2.12.2013, S. 44–47.
- **Zotero-Schlüssel:** `suppaAnforderungenSchutzlackierung2013`
- **Bewertung:** brauchbar für die Lackierung in 2.2. Fachzeitschrift, Auszug aus Suppas Buch; der Autor leitet die Entwicklung eines Lackherstellers.
- **Seiten:** Nur S. 44 trägt im PDF eine Seitenzahl. Der Umfang S. 44–47 ist vom Nutzer bestätigt, die Zuordnung PDF 2–4 = S. 45–47 ergibt sich daraus.

| Seite | Inhalt | Verwendung |
| --- | --- | --- |
| S. 44 (PDF 1) | Beschichtung richtet sich nach Funktion und Einsatzbedingungen; Tauchlackierung, partielle Beschichtung; Aufsprühen | 2.2 |
| S. 45 (PDF 2) | IPC-A-610D: Fehlerbilder wie Verlust der Haftung, Bläschen, Entnetzungen, Einschlüsse; Tabelle 2: Schutzbeschichtung gefährdeter Bereiche | 2.2 |
| S. 46 (PDF 3) | Lackfreie Flächen, z. B. Prüfpunkte und Kontaktflächen; Bauteile, die nicht beschichtet werden dürfen | 2.2 |
| S. 47 (PDF 4) | Korrosion und Feuchte als häufiger Ausfallgrund | 2.2 |

## Geprüft, aber nicht verwendet

- **Lienig/Brümmer (2024), *Elektronische Gerätetechnik*, 2. Aufl.** (`Elektronische Gerätetechnik.pdf`): behandelt Entwicklung, nicht Fertigung.
  Tab. 4.2 (S. 62) nennt für automatische Lötstellen 0,069–2,6 FIT, für manuelle nur den Minimalwert 0,14 FIT. Daraus lässt sich **nicht**
  ableiten, dass Handlöten fehleranfälliger ist.
- **`Surface Mount Technology.pdf`:** nur eine Buchbesprechung von Prasads Buch im *Microelectronics Journal*, nicht das Buch selbst.
- **Hanke/Scheel, *Baugruppentechnologie der Elektronik – Montage*:** liegt nicht vor. Wäre eine Ergänzung zu Prüfung und Handlöten, falls gedruckt verfügbar.

## Plan für 2.1 (Quellen vollständig)

1. Begriff: ISO 9000:2026, 3.5.11 (S. 19) als Definition; Moe 1998 (S. 211) für intern vs. Kette und als Teilsystem des QM.
2. Anforderungen: ISO 9001:2026, 8.5.2 (S. 34) und A.8.5 (S. 50); Einordnung der Normenfamilie mit Koubek (S. 8–10).
3. Aufbau eines Systems: Moe (S. 212) zu eindeutiger Identifikation, Route/Umfang, TRU und Zusammenführen; Yilmaz et al. (S. 13) zu den vier Faktoren nach Regattieri.
4. Nachweise: ISO 9000, 3.8.12 Aufzeichnung (S. 26); ISO 9001, 7.5.3 (S. 27–28) und A.7.5 (S. 48) zum Schutz vor Änderungen; Moe (S. 212) zur retrospektiven Abfrage.
   Überleitung zu 2.3.
5. Abbildung (TikZ): Ebenen bzw. Objekte der Rückverfolgbarkeit (Bauteil → Platine → Modul) mit Route über Schritte und Standorte, Umfang der Arbeit markiert.

Optional später: eine Quelle mit Bezug zur Elektronikfertigung, z. B. IPC-1782.
Mai (2020) wird für 2.1 nicht gebraucht.
