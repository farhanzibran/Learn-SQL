--SELECT * FROM [SQL Tutorial].dbo.EmployeeDemographics
--SELECT * FROM [SQL Tutorial].dbo.EmployeeSalary
--SELECT * FROM [SQL Tutorial].dbo.WareHouseEmployeeDemographics

/*
Inner Join, Full/Left/Right/ Outer Join
*/

--SELECT * FROM [SQL Tutorial].dbo.EmployeeDemographics 
--INNER JOIN [SQL Tutorial].dbo.EmployeeSalary 
--      ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

--SELECT * FROM [SQL Tutorial].dbo.EmployeeDemographics 
--FULL OUTER JOIN [SQL Tutorial].dbo.EmployeeSalary 
--      ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

--SELECT * FROM [SQL Tutorial].dbo.EmployeeDemographics 
--LEFT OUTER JOIN [SQL Tutorial].dbo.EmployeeSalary 
--      ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

--SELECT * FROM [SQL Tutorial].dbo.EmployeeDemographics 
--RIGHT OUTER JOIN [SQL Tutorial].dbo.EmployeeSalary 
--      ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

--SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, JobTitle, Salary  
--FROM [SQL Tutorial].dbo.EmployeeDemographics
--INNER JOIN [SQL Tutorial].dbo.EmployeeSalary
--   ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID


--SELECT EmployeeSalary.EmployeeID, FirstName, LastName, JobTitle, Salary  
--FROM [SQL Tutorial].dbo.EmployeeDemographics
--RIGHT OUTER JOIN [SQL Tutorial].dbo.EmployeeSalary
--   ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

--SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, Salary
--FROM [SQL Tutorial].dbo.EmployeeDemographics
--INNER JOIN [SQL Tutorial].dbo.EmployeeSalary
--   ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
--WHERE LastName <> 'Zibran'
--ORDER BY Salary ASC

SELECT JobTitle, AVG(Salary)
FROM [SQL Tutorial].dbo.EmployeeDemographics
INNER JOIN [SQL Tutorial].dbo.EmployeeSalary
   ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
WHERE JobTitle = 'salesman'
GROUP BY JobTitle