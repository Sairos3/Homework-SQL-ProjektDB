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