/*
Case Statement
*/

--SELECT FirstName, LastName, Age,
--CASE 
--    WHEN Age > 25 THEN 'OLD'
--	ELSE 'YOUNG'
--	END
--FROM [SQL Tutorial].dbo.EmployeeDemographics
--WHERE Age IS NOT NULL
--ORDER BY Age

--SELECT FirstName, LastName, Age,
--CASE 
--    WHEN Age > 25 THEN 'OLD'
--	WHEN Age BETWEEN 20 AND 25 THEN 'YOUNG'
--	ELSE 'BABY'
--	END
--FROM [SQL Tutorial].dbo.EmployeeDemographics
--WHERE Age IS NOT NULL
--ORDER BY Age

--SELECT FirstName, LastName, Jobtitle, Salary,
--CASE 
--  WHEN JobTitle = 'CEO' THEN Salary + (Salary * .10)
--  WHEN JobTitle = 'Salesman' THEN Salary + (Salary * .05)
--  WHEN JobTitle = 'Accountant' THEN Salary + (Salary * .000001)
--  ELSE Salary + (Salary * .03)
--END AS kenaikanGaji
--FROM [SQL Tutorial].dbo.EmployeeDemographics
--JOIN [SQL Tutorial].dbo.EmployeeSalary
--ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID