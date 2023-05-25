
USE Elokuvat
GO

--	-- VAIHE 1 --

--UPDATE elokuvat SET Julkaisija = 'MTV3' WHERE Julkaisija LIKE 'MTV%'
--GO



--CREATE TABLE [julkaisijat] (
--[id] int IDENTITY PRIMARY KEY,
--[nimi] nvarchar(110) DEFAULT NULL );


--ALTER TABLE elokuvat ADD julkaisija_id int
--GO

--ALTER TABLE elokuvat ADD FOREIGN KEY (julkaisija_id) REFERENCES julkaisijat(id);
--GO

--INSERT INTO julkaisijat (nimi) SELECT DISTINCT Julkaisija FROM elokuvat 
--GO

--UPDATE elokuvat SET julkaisija_id = ( SELECT id FROM julkaisijat WHERE julkaisijat.nimi = Julkaisija)
--GO



--ALTER TABLE elokuvat DROP CONSTRAINT DF__elokuvat__Julkai__276EDEB3
--GO
--ALTER TABLE elokuvat DROP COLUMN Julkaisija
--GO


--SELECT nimi FROM elokuvat WHERE Julkaisuvuosi >= 1998 AND Julkaisuvuosi <= 2007 AND Kesto > 160
--GO

--UPDATE elokuvat SET Julkaisuvuosi= 2011 WHERE id = 7
--GO


--SELECT Nimi, Arvio FROM elokuvat ORDER BY Arvio DESC
--GO

--SELECT Nimi, Julkaisuvuosi, Arvio FROM elokuvat WHERE Julkaisuvuosi = 2020 ORDER BY Arvio DESC, Nimi ASC
--GO

--SELECT Nimi FROM elokuvat WHERE Nimi LIKE '% and %'
--GO


	 --VAIHE 2 --



--SELECT nimi FROM elokuvat WHERE Nimi LIKE ' k%'
--GO


--SELECT elokuvat.Nimi, julkaisijat.nimi FROM elokuvat JOIN julkaisijat ON Julkaisija_id = julkaisijat.id WHERE julkaisijat.nimi = 'YLE'
--GO


--UPDATE dbo.julkaisijat SET nimi = UPPER (nimi)
--GO

--SELECT Nimi, Julkaisuvuosi, Kesto FROM elokuvat WHERE Kesto < 60 AND julkaisuvuosi >= 2000
--GO

--SELECT Nimi, Kesto FROM elokuvat WHERE Kesto > 80 AND nimi LIKE ' s%'
--GO 


----SELECT elokuvat.nimi, elokuvat.julkaisuvuosi, julkaisijat.nimi 
----FROM elokuvat JOIN julkaisijat ON julkaisija_id =julkaisijat.id WHERE julkaisijat.nimi != 'YLE' OR elokuvat.julkaisuvuosi = 2000
----SELECT elokuvat.nimi, julkaisijat.nimi FROM elokuvat JOIN julkaisijat ON julkaisija_id =julkaisijat.id 
----WHERE julkaisijat.nimi IN ('YLE', 'MTV3', 'BBC')
----GO


----	 --VAIHE 3 --

--SELECT COUNT (*) AS riveja FROM elokuvat

--SELECT AVG(Kesto) AS keskiarvo FROM elokuvat

--SELECT MAX(Kesto) AS maksimi FROM elokuvat

--SELECT MIN(Julkaisuvuosi) AS vanhin FROM elokuvat

