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