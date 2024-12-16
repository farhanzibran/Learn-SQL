/*
ALIASING
*/

SELECT FirstName AS Fname
FROM [SQL Tutorial].dbo.EmployeeDemographics

SELECT FirstName + ' ' + LastName AS FullName
FROM [SQL Tutorial].dbo.EmployeeDemographics

SELECT AVG(Age) AS AVGAge
FROM [SQL Tutorial].dbo.EmployeeDemographics

SELECT Demo.EmployeeID, Sal.Salary
FROM [SQL Tutorial].dbo.EmployeeDemographics AS Demo
JOIN [SQL Tutorial].dbo.EmployeeSalary AS Sal
ON  Demo.EmployeeID = Sal.EmployeeID

SELECT a.EmployeeID, a.FirstName, a.LastName	, b.JobTitle, c.Age
FROM [SQL Tutorial].dbo.EmployeeDemographics a
LEFT JOIN [SQL Tutorial].dbo.EmployeeSalary b
ON  a.EmployeeID = b.EmployeeID
LEFT JOIN [SQL Tutorial].dbo.WareHouseEmployeeDemographics c
ON a.EmployeeID = c.EmployeeID
