-- 6. Daten in Tabelle Mitarbeiter einf�gen
USE ProjektDB;
GO

INSERT INTO Mitarbeiter (Vorname, Nachname, Abteilung)
VALUES 
    ('Max', 'Mustermann', 'Entwicklung'),
    ('Maria', 'Musterfrau', 'Qualit�tssicherung'),
    ('Michael', 'Meier', 'Projektmanagement');
GO