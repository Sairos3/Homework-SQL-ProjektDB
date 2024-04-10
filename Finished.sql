-- 1. Datenbank ProjektDB erstellen
CREATE DATABASE ProjektDB;
GO
-- 2. Tabelle Projekte erstellen
USE ProjektDB;
GO

CREATE TABLE Projekte (
    ID INT PRIMARY KEY IDENTITY(1,1),
    Projektname NVARCHAR(255) NOT NULL,
    Startdatum DATE,
    Enddatum DATE,
    Budget DECIMAL(18, 2)
);
GO
-- 3. Tabelle Mitarbeiter erstellen
USE ProjektDB;
GO

CREATE TABLE Mitarbeiter (
    ID INT PRIMARY KEY IDENTITY(1,1),
    Vorname NVARCHAR(50),
    Nachname NVARCHAR(50),
    Abteilung NVARCHAR(100)
);
GO
-- 4. Tabelle Aufgaben erstellen
USE ProjektDB;
GO

CREATE TABLE Aufgaben (
    ID INT PRIMARY KEY IDENTITY(1,1),
    Aufgabenname NVARCHAR(255) NOT NULL,
    Beschreibung TEXT,
    Startdatum DATE,
    Enddatum DATE,
    Status NVARCHAR(50),
    ProjektID INT,
    MitarbeiterID INT,
    FOREIGN KEY (ProjektID) REFERENCES Projekte(ID),
    FOREIGN KEY (MitarbeiterID) REFERENCES Mitarbeiter(ID)
);
GO
-- 5. Daten in Tabelle Projekte einfügen
USE ProjektDB;
GO

INSERT INTO Projekte (Projektname, Startdatum, Enddatum, Budget)
VALUES 
    ('Projekt 1', '2024-04-01', '2024-06-30', 50000.00),
    ('Projekt 2', '2024-05-15', '2024-08-31', 75000.00),
    ('Projekt 3', '2024-06-10', '2024-09-30', 60000.00),
    ('Projekt 4', '2024-07-01', '2024-10-31', 80000.00),
    ('Projekt 5', '2024-08-15', '2024-12-31', 100000.00);
GO
-- 6. Daten in Tabelle Mitarbeiter einfügen
USE ProjektDB;
GO

INSERT INTO Mitarbeiter (Vorname, Nachname, Abteilung)
VALUES 
    ('Max', 'Mustermann', 'Entwicklung'),
    ('Maria', 'Musterfrau', 'Qualitätssicherung'),
    ('Michael', 'Meier', 'Projektmanagement');
GO
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
-- 8. Login User erstellen und Berechtigung erteilen
USE master;
GO

CREATE LOGIN ProjektAdmin WITH PASSWORD = 'Test1234!';
GO

USE ProjektDB;
GO

CREATE USER ProjektAdmin FOR LOGIN ProjektAdmin;
GO

ALTER ROLE db_owner ADD MEMBER ProjektAdmin;
GO