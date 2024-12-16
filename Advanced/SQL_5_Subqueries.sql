/*
Subqueries (in the select , From, and where statement )
*/

SELECT * FROM [SQL Tutorial].dbo.EmployeeSalary


--sub query in select

SELECT EmployeeID, Salary, (SELECT AVG(Salary) FROM [SQL Tutorial].dbo.EmployeeSalary) AS ALLAVGSALARY
FROM [SQL Tutorial].dbo.EmployeeSalary

--How to do it with partition By

SELECT EmployeeID, Salary,  AVG(Salary) OVER () AS ALLAVGSALARY
FROM [SQL Tutorial].dbo.EmployeeSalary

--Why Group By Doesn't work

SELECT EmployeeID, Salary,  AVG(Salary)  AS ALLAVGSALARY
FROM [SQL Tutorial].dbo.EmployeeSalary
GROUP BY EmployeeID, Salary
ORDER BY 1,2

--subquery in from

SELECT a.EmployeeID,  ALLAVGSALARY
FROM (SELECT EmployeeID, Salary,  AVG(Salary) OVER () AS ALLAVGSALARY
    	FROM [SQL Tutorial].dbo.EmployeeSalary) a

--subquery in where

SELECT EmployeeID, JobTitle, Salary
FROM EmployeeSalary
WHERE EmployeeID IN (
SELECT EmployeeID FROM EmployeeDemographics
WHERE Age < 24)