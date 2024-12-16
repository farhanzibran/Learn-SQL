/*
Stored Procedures
*/

--CREATE PROCEDURE TEST 
--AS 
--SELECT *
--FROM EmployeeDemographics

--EXECUTE TEST

CREATE PROCEDURE Temp_Employee
AS
CREATE TABLE #temp_employee (
JobTitle Varchar(100),
EmployeesPerJob int,
AVGAge int,
AVGSalary int
)

INSERT INTO #temp_employee
SELECT JobTitle, COUNT(JobTitle), AVG(Age), AVG(Salary)
FROM [SQL Tutorial]..EmployeeDemographics emp
JOIN [SQL Tutorial]..EmployeeSalary sal
ON emp.EmployeeID = sal.EmployeeID
GROUP BY JobTitle

SELECT * 
FROM #temp_employee

EXECUTE Temp_Employee