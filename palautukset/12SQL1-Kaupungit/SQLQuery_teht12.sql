USE Asiakaspalvelu
GO

DROP DATABASE IF EXISTS kaupungit
GO

CREATE DATABASE kaupunkien_tiedot
GO

USE kaupunkien_tiedot
GO

CREATE TABLE [dbo].[kaupungit] (
	[id] int IDENTITY (1,1) PRIMARY KEY NOT NULL,
	[nimi] nvarchar(64) NOT NULL,
	[asukasluku] int NULL,
	[pintaala] decimal (18,1) DEFAULT 0 )

GO

INSERT INTO kaupungit (nimi, asukasluku, pintaala) VALUES
('Helsinki', 550000, 184.5),
('Tampere', 280000, 523),
('Jyvaskyla', 120000, 105),
('Oulu', 220000, 1410)
GO

SELECT nimi, asukasluku FROM kaupungit
GO

SELECT nimi, pintaala FROM kaupungit WHERE nimi = 'Jyvaskyla'
GO

SELECT nimi FROM kaupungit WHERE asukasluku < 200000
GO

UPDATE kaupungit SET pintaala = 340 WHERE nimi = 'Tampere'
GO

