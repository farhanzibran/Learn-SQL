/**
Where Statement
=, <>, <, >, And, Or, Like, Null, Not Null, In
**/

SELECT * FROM [SQL Tutorial].dbo.EmployeeDemographics WHERE FirstName = 'Farhan' 
SELECT * FROM [SQL Tutorial].dbo.EmployeeDemographics WHERE Age <> 21
SELECT * FROM [SQL Tutorial].dbo.EmployeeSalary WHERE Salary > 60000 
SELECT * FROM [SQL Tutorial].dbo.EmployeeSalary WHERE Salary < 50000
SELECT * FROM [SQL Tutorial].dbo.EmployeeDemographics WHERE Age <= 21 AND Gender = 'Male'
SELECT * FROM [SQL Tutorial].dbo.EmployeeDemographics WHERE Age >= 21 OR Gender = 'Female'
SELECT * FROM [SQL Tutorial].dbo.EmployeeDemographics WHERE FirstName LIKE 'F%'
SELECT * FROM [SQL Tutorial].dbo.EmployeeDemographics WHERE FirstName LIKE '%S%'
SELECT * FROM [SQL Tutorial].dbo.EmployeeDemographics WHERE FirstName is NULL
SELECT * FROM [SQL Tutorial].dbo.EmployeeDemographics WHERE FirstName is NOT NULL
SELECT * FROM [SQL Tutorial].dbo.EmployeeDemographics WHERE EmployeeID IN ('1001', '1009')