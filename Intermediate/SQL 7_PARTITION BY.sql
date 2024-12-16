/*
PARTITION BY
*/

SELECT * FROM [SQL Tutorial].dbo.EmployeeDemographics
SELECT * FROM [SQL Tutorial].dbo.EmployeeSalary

SELECT FirstName, LastName, Gender, Salary,
COUNT(Gender) OVER (PARTITION BY Gender) AS TotalGender
FROM [SQL Tutorial].dbo.EmployeeDemographics dem
JOIN [SQL Tutorial].dbo.EmployeeSalary sal
ON dem.EmployeeID = sal.EmployeeID

SELECT Gender, COUNT(Gender) AS jumlah
FROM [SQL Tutorial].dbo.EmployeeDemographics dem
JOIN [SQL Tutorial].dbo.EmployeeSalary sal
ON dem.EmployeeID = sal.EmployeeID
GROUP BY Gender	