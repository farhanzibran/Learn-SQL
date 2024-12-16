/*
UPDATING / DELETE
*/

SELECT * FROM [SQL Tutorial].dbo.EmployeeDemographics

UPDATE [SQL Tutorial].dbo.EmployeeDemographics
SET  Age = 31, Gender = 'Female'
WHERE EmployeeID = 1012

DELETE FROM [SQL Tutorial].dbo.EmployeeDemographics
WHERE EmployeeID = 1013

