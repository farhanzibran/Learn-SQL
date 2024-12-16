/*Table 1 Query:*/
Create Table EmployeeDemographics 
(EmployeeID int, 
FirstName varchar(50), 
LastName varchar(50), 
Age int, 
Gender varchar(50)
)

/*Table 2 Query:*/
Create Table EmployeeSalary 
(EmployeeID int, 
JobTitle varchar(50), 
Salary int
)

INSERT INTO EmployeeDemographics VALUES
(1001, 'Farhan','Zibran', 21, 'Male'),
(1002, 'Fadhil','Muhammad', 24, 'Male'),
(1003, 'Fahri','Rizky', 15, 'Male'),
(1004, 'Nova','Rina', 45, 'Female'),
(1005, 'Sarah','Muthia', 22, 'Female'),
(1006, 'Raihan','Toyib', 21, 'Male'),
(1007, 'mahrusa','karnaini', 21, 'Male'),
(1008, 'Bunga','Alya', 18, 'Female'),
(1009, 'Fajar','Ramadhan', 21, 'Male')


INSERT INTO EmployeeSalary VALUES
((1001, 'CEO', 99000),
(1002, 'Receptionist', 36000),
(1003, 'Salesman', 63000),
(1004, 'Accountant', 47000),
(1005, 'HR', 50000),
(1006, 'Regional Manager', 65000),
(1007, 'Supplier Relations', 41000),
(1008, 'Salesman', 48000),
(1009, 'Accountant', 42000)



