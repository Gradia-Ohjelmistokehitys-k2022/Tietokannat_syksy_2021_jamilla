


--	-- VAIHE 4 -- --

----USE Elokuvat
----GO

----CREATE DATABASE Asiakasrekisteri
----GO

----USE Asiakasrekisteri
----GO


----CREATE TABLE [henkilotiedot] (
----[id] int IDENTITY(1,1) PRIMARY KEY NOT NULL,
----[nimi] nvarchar(64) NOT NULL )
----GO

----CREATE TABLE [varaukset] (
----[id] int IDENTITY(1,1) PRIMARY KEY NOT NULL,
----[henkilo_id] int FOREIGN KEY REFERENCES henkilotiedot(id), 
----[pvm] date NOT NULL )
----GO


--INSERT INTO henkilotiedot(nimi) VALUES
--('Tatu'),
--('Pertti'),
--('Emma'),
--('Juni'),
--('Hen')
--GO

DECLARE @key int; 
INSERT INTO henkilotiedot(nimi) VALUES ('Marianne Roseberg')
set @key = SCOPE_IDENTITY()

SELECT @key AS avain

INSERT INTO varaukset (henkilo_id, pvm)VALUES
(@key, '2023-9-8')
GO

SELECT henkilotiedot.nimi, varaukset.pvm FROM henkilotiedot JOIN varaukset ON henkilotiedot.id = varaukset.henkilo_id