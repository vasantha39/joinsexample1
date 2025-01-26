create database vasantha;
use vasantha;
create table employee(
EmployeeID INT PRIMARY KEY,
Name VARCHAR(30),
DepartmentID INT
);
insert into employee(EmployeeID,Name,DepartmentID)
values
(1,'John',101),
(2,'Bob',102),
(3,'Doe',103),
(4,'Emily',NULL);
create table department(
DepartmentID int primary key,
DepartmentName VARCHAR(30)
);
insert into department(DepartmentID,DepartmentName)
values
(101,'Manager'),
(102,'HR'),
(103,'Accountant'),
(104,'GM');
select * from employee;
select * from department;
SELECT e.EmployeeID, e.Name, e.DepartmentID, d.DepartmentName
FROM employee e
INNER JOIN department d
ON e.DepartmentID = d.DepartmentID;

SELECT e.EmployeeID, e.Name, e.DepartmentID, d.DepartmentName
FROM employee e
LEFT JOIN department d
ON e.DepartmentID = d.DepartmentID;

SELECT e.EmployeeID, e.Name, e.DepartmentID, d.DepartmentName
FROM employee e
RIGHT JOIN department d
ON e.DepartmentID = d.DepartmentID;

SELECT e.EmployeeID, e.Name, e.DepartmentID, d.DepartmentName
FROM employee e
LEFT JOIN department d
ON e.DepartmentID = d.DepartmentID
UNION
SELECT e.EmployeeID, e.Name, e.DepartmentID, d.DepartmentName
FROM employee e
RIGHT JOIN department d
ON e.DepartmentID = d.DepartmentID;
show databases;
