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