/*
CTEs
*/
WITH CTE_Employee AS
(SELECT FirstName, LastName, Gender, Salary,
COUNT(Gender) OVER (PARTITION BY Gender) AS TotalGender,
AVG(Salary) OVER (PARTITION BY Salary) AS AVGSalary
FROM  [SQL Tutorial].dbo.EmployeeDemographics Dem
JOIN [SQL Tutorial].dbo.EmployeeSalary Sal
ON Dem.EmployeeID = Sal.EmployeeID
WHERE Salary > '45000'
)

SELECT FirstName, AVGSalary
FROM CTE_Employee