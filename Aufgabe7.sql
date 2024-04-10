-- 7. Daten in Tabelle Aufgaben einfügen
USE ProjektDB;
GO

INSERT INTO Aufgaben (Aufgabenname, Beschreibung, Startdatum, Enddatum, Status, ProjektID, MitarbeiterID)
VALUES 
    ('Task 1', 'Implementieren neuer Funktionen', '2024-04-01', '2024-04-30', 'In Bearbeitung', 1, 1),
    ('Task 2', 'Testen der Software', '2024-05-01', '2024-05-31', 'Offen', 1, 2),
    ('Task 3', 'Dokumentation erstellen', '2024-06-01', '2024-06-30', 'Abgeschlossen', 2, 1),
    ('Task 4', 'Anforderungen analysieren', '2024-07-01', '2024-07-31', 'In Bearbeitung', 2, 3),
    ('Task 5', 'Bugfixing', '2024-08-01', '2024-08-31', 'Offen', 3, 2),
    ('Task 6', 'Designoptimierung', '2024-09-01', '2024-09-30', 'Abgeschlossen', 3, 3),
    ('Task 7', 'Benutzeroberfläche verbessern', '2024-10-01', '2024-10-31', 'In Bearbeitung', 4, 1),
    ('Task 8', 'Performanceoptimierung', '2024-11-01', '2024-11-30', 'Offen', 4, 2),
    ('Task 9', 'Sicherheitstests durchführen', '2024-12-01', '2024-12-31', 'Abgeschlossen', 5, 1),
    ('Task 10', 'Benutzerdokumentation aktualisieren', '2025-01-01', '2025-01-31', 'In Bearbeitung', 5, 3);
GO