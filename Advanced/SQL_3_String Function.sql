/*
STRING FUNCTION - TRIM, LTRIM, RTRIM, REPLACE, SUBSTRING, UPPER, LOWER
*/

--Drop Table EmployeeErrors;

CREATE TABLE EmployeeErrors (
EmployeeID Varchar(50),
FirstName Varchar(50),
LastName Varchar(50))

INSERT INTO EmployeeErrors VALUES 
('1001', 'Muhammad', 'Safaruddin' ),
('1002', 'Salman', 'Alfarisi' ),
('1003', 'Jufri', 'Hasanuddin' )

SELECT * FROM EmployeeErrors

--Using TRIM, LTRIM, RTRIM

SELECT EmployeeID, TRIM(EmployeeID) AS IDTRIM
FROM EmployeeErrors

SELECT EmployeeID, LTRIM(EmployeeID) AS IDLTRIM
FROM EmployeeErrors 

SELECT EmployeeID, RTRIM(EmployeeID) AS RTRIM
FROM EmployeeErrors

--USING REPLACE

SELECT LastName, REPLACE(LastName, '- Fired', '') AS LastNameFixed
FROM EmployeeErrors

--USING SUBSTRING

SELECT SUBSTRING(err.FirstName,1,3), SUBSTRING(dem.FirstName,1,3), SUBSTRING(err.LastName,1,3), SUBSTRING(dem.LastName,1,3)
FROM EmployeeErrors err
JOIN EmployeeErrors dem 
ON SUBSTRING(err.FirstName,1,3) = SUBSTRING(dem.FirstName,1,3)
AND SUBSTRING(err.LastName,1,3) = SUBSTRING(dem.LastName,1,3)

--USING UPPER & LOWER

SELECT FirstName, LOWER(FirstName) as LOWERNAME
FROM EmployeeErrors

SELECT FirstName, UPPER(FirstName) as UPPERNAME
FROM EmployeeErrors
