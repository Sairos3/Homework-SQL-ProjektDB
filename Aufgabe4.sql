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