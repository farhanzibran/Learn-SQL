/*
Temp Tables
*/

CREATE TABLE #Temp_Employee (
EmployeeID Int,
JobTitle Varchar(100),
Salary Int
)

Select * from #Temp_Employee

INSERT INTO #Temp_Employee VALUES (
'1001', 'HR', '45000'
)

INSERT INTO #Temp_Employee
SELECT * FROM [SQL Tutorial]..EmployeeSalary

DELETE FROM #Temp_Employee
WHERE EmployeeID IS NULL


DROP TABLE IF EXISTS #Temp_Employee2
CREATE TABLE #Temp_Employee2 (
JobTitle Varchar(100),
EmployeesPerJob Int,
AvgAge Int,
AvgSalary Int)

INSERT INTO #Temp_Employee2
SELECT JobTitle, COUNT(JobTitle), AVG(Age), AVG(Salary)
FROM [SQL Tutorial]..EmployeeDemographics dem
JOIN [SQL Tutorial]..EmployeeSalary sal
ON dem.EmployeeID = sal.EmployeeID
GROUP BY JobTitle
 
SELECT* FROM #Temp_Employee2
