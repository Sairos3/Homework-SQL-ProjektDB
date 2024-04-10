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