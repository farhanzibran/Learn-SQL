/**
Group By, Order By
**/

/*SELECT * FROM EmployeeDemographics
ORDER BY Age desc
*/

SELECT  Gender, COUNT(Gender) AS COUNTGender FROM [SQL Tutorial].dbo.EmployeeDemographics WHERE Age > 21
GROUP BY  Gender
ORDER BY Gender

SELECT * FROM [SQL Tutorial].dbo.EmployeeDemographics ORDER BY Age DESC

