-- 6. Daten in Tabelle Mitarbeiter einfügen
USE ProjektDB;
GO

INSERT INTO Mitarbeiter (Vorname, Nachname, Abteilung)
VALUES 
    ('Max', 'Mustermann', 'Entwicklung'),
    ('Maria', 'Musterfrau', 'Qualitätssicherung'),
    ('Michael', 'Meier', 'Projektmanagement');
GO