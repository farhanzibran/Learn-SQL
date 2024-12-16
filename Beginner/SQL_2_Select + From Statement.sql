/*
SELECT + FROM STATEMENT
*/

SELECT TOP (1000) [EmployeeID]
      ,[FirstName]
      ,[LastName]
      ,[Age]
      ,[Gender]
  FROM [SQL Tutorial].[dbo].[EmployeeDemographics]
       
SELECT TOP (1000) [EmployeeID]
        ,[EmployeeID]
		,[JobTitle]
		,[Salary]
	FROM [SQL Tutorial].dbo.EmployeeSalary

/**
select Statement
*, top, Distinct, Count, As, Max, Min, Avg
**/

SELECT * FROM [SQL Tutorial].dbo.EmployeeDemographics
SELECT TOP 5 * FROM  [SQL Tutorial].dbo.EmployeeDemographics
SELECT DISTINCT FirstName, Age FROM [SQL Tutorial].dbo.EmployeeDemographics
SELECT COUNT (*)  FROM [SQL Tutorial].dbo.EmployeeDemographics WHERE Gender = 'Male'
SELECT COUNT (FirstName) FROM  [SQL Tutorial].dbo.EmployeeDemographics AS FirstNameCOUNT

SELECT * FROM [SQL Tutorial].dbo.EmployeeSalary
SELECT MAX(Salary) FROM [SQL Tutorial].dbo.EmployeeSalary
SELECT MIN(Salary) FROM [SQL Tutorial].dbo.EmployeeSalary
SELECT AVG(Salary) FROM [SQL Tutorial].dbo.EmployeeSalary