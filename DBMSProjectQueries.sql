CREATE DATABASE EmployeeManagementSystem;
USE EmployeeManagementSystem;

CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY AUTO_INCREMENT,
    DepartmentName VARCHAR(100) NOT NULL
);

CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100),
    PhoneNumber VARCHAR(15),
    HireDate DATE,
    DepartmentID INT,
    IsTechnical BOOLEAN,
    FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
);

CREATE TABLE DepartmentManagementHistory (
    HistoryID INT PRIMARY KEY AUTO_INCREMENT,
    DepartmentID INT,
    ManagerID INT,
    StartDate DATE,
    EndDate DATE,
    FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID),
    FOREIGN KEY (ManagerID) REFERENCES Employee(EmployeeID)
);

CREATE TABLE EmployeeType (
    EmployeeID INT,
    Type VARCHAR(50),
    PRIMARY KEY (EmployeeID),
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
);

INSERT INTO Department (DepartmentName) VALUES
('Human Resources'),
('IT'),
('Finance'),
('Marketing'),
('Sales'),
('Operations'),
('Customer Service'),
('Logistics'),
('Quality Assurance'),
('Research and Development');

INSERT INTO Employee (FirstName, LastName, Email, PhoneNumber, HireDate, DepartmentID, IsTechnical) VALUES
('John', 'Doe', 'john.doe@example.com', '123-456-7890', '2023-01-01', 1, TRUE),
('Jane', 'Smith', 'jane.smith@example.com', '234-567-8901', '2023-02-01', 2, FALSE),
('Alice', 'Johnson', 'alice.johnson@example.com', '345-678-9012', '2023-03-01', 3, TRUE),
('Bob', 'Brown', 'bob.brown@example.com', '456-789-0123', '2023-04-01', 4, FALSE),
('Charlie', 'Davis', 'charlie.davis@example.com', '567-890-1234', '2023-05-01', 5, TRUE),
('Diana', 'Miller', 'diana.miller@example.com', '678-901-2345', '2023-06-01', 6, FALSE),
('Eva', 'Wilson', 'eva.wilson@example.com', '789-012-3456', '2023-07-01', 7, TRUE),
('Frank', 'Moore', 'frank.moore@example.com', '890-123-4567', '2023-08-01', 8, FALSE),
('Grace', 'Taylor', 'grace.taylor@example.com', '901-234-5678', '2023-09-01', 9, TRUE),
('Henry', 'Anderson', 'henry.anderson@example.com', '012-345-6789', '2023-10-01', 10, FALSE);

INSERT INTO Employee (FirstName, LastName, Email, PhoneNumber, HireDate, DepartmentID, IsTechnical) VALUES
('Emma', 'Johnson', 'emma.johnson@example.com', '123-456-7890', '2023-01-01', 1, TRUE),
('Oliver', 'Williams', 'oliver.williams@example.com', '234-567-8901', '2023-02-01', 2, FALSE),
('Sophia', 'Brown', 'sophia.brown@example.com', '345-678-9012', '2023-03-01', 3, TRUE),
('Liam', 'Jones', 'liam.jones@example.com', '456-789-0123', '2023-04-01', 4, FALSE),
('Ava', 'Garcia', 'ava.garcia@example.com', '567-890-1234', '2023-05-01', 5, TRUE),
('Mason', 'Miller', 'mason.miller@example.com', '678-901-2345', '2023-06-01', 6, FALSE),
('Isabella', 'Davis', 'isabella.davis@example.com', '789-012-3456', '2023-07-01', 7, TRUE),
('Ethan', 'Rodriguez', 'ethan.rodriguez@example.com', '890-123-4567', '2023-08-01', 8, FALSE),
('Mia', 'Wilson', 'mia.wilson@example.com', '901-234-5678', '2023-09-01', 9, TRUE),
('Jacob', 'Martinez', 'jacob.martinez@example.com', '012-345-6789', '2023-10-01', 10, FALSE),
('Lucas', 'Anderson', 'lucas.anderson@example.com', '123-456-7890', '2023-11-01', 1, TRUE),
('Abigail', 'Thomas', 'abigail.thomas@example.com', '234-567-8901', '2023-12-01', 2, FALSE),
('Michael', 'Taylor', 'michael.taylor@example.com', '345-678-9012', '2023-01-01', 3, TRUE),
('Emily', 'Moore', 'emily.moore@example.com', '456-789-0123', '2023-02-01', 4, FALSE),
('William', 'Jackson', 'william.jackson@example.com', '567-890-1234', '2023-03-01', 5, TRUE),
('Elizabeth', 'White', 'elizabeth.white@example.com', '678-901-2345', '2023-04-01', 6, FALSE),
('James', 'Harris', 'james.harris@example.com', '789-012-3456', '2023-05-01', 7, TRUE),
('Olivia', 'Martin', 'olivia.martin@example.com', '890-123-4567', '2023-06-01', 8, FALSE),
('Benjamin', 'Thompson', 'benjamin.thompson@example.com', '901-234-5678', '2023-07-01', 9, TRUE),
('Sophie', 'Garcia', 'sophie.garcia@example.com', '012-345-6789', '2023-08-01', 10, FALSE);

INSERT INTO DepartmentManagementHistory (DepartmentID, ManagerID, StartDate, EndDate) VALUES
(1, 1, '2023-01-01', '2023-06-01'),
(2, 2, '2023-02-01', '2023-07-01'),
(3, 3, '2023-03-01', '2023-08-01'),
(4, 4, '2023-04-01', '2023-09-01'),
(5, 5, '2023-05-01', '2023-10-01'),
(6, 6, '2023-06-01', '2023-11-01'),
(7, 7, '2023-07-01', '2023-12-01'),
(8, 8, '2023-08-01', '2023-01-01'),
(9, 9, '2023-09-01', '2023-02-01'),
(10, 10, '2023-10-01', '2023-03-01');

INSERT INTO EmployeeType (EmployeeID, Type) VALUES
(1, 'Technical'),
(2, 'Non-Technical'),
(3, 'Technical'),
(4, 'Non-Technical'),
(5, 'Technical'),
(6, 'Non-Technical'),
(7, 'Technical'),
(8, 'Non-Technical'),
(9, 'Technical'),
(10, 'Non-Technical');

INSERT INTO EmployeeType (EmployeeID, Type) VALUES
(11, 'Technical'),
(12, 'Non-Technical'),
(13, 'Technical'),
(14, 'Non-Technical'),
(15, 'Technical'),
(16, 'Non-Technical'),
(17, 'Technical'),
(18, 'Non-Technical'),
(19, 'Technical'),
(20, 'Non-Technical'),
(21, 'Non-Technical'),
(22, 'Technical'),
(23, 'Non-Technical'),
(24, 'Technical'),
(25, 'Non-Technical'),
(26, 'Technical'),
(27, 'Non-Technical'),
(28, 'Technical'),
(29, 'Non-Technical'),
(30, 'Technical');

#1. List all employees and their department names.
SELECT Employee.FirstName, Employee.LastName, Department.DepartmentName
FROM Employee
JOIN Department ON Employee.DepartmentID = Department.DepartmentID;

#2. Find all employees who are technical and list their department names.
SELECT Employee.FirstName, Employee.LastName, Department.DepartmentName
FROM Employee
JOIN Department ON Employee.DepartmentID = Department.DepartmentID
WHERE Employee.IsTechnical = TRUE;

#3. Count the number of employees in each department.
SELECT Department.DepartmentName, COUNT(Employee.EmployeeID) AS EmployeeCount
FROM Department
JOIN Employee ON Department.DepartmentID = Employee.DepartmentID
GROUP BY Department.DepartmentName;

#4. List all employees who have been hired in the last 6 months.
SELECT Employee.FirstName, Employee.LastName, Employee.HireDate
FROM Employee
WHERE Employee.HireDate >= DATE_SUB(CURDATE(), INTERVAL 6 MONTH);

#5. Delete all employees in the 'IT' department.
DELETE FROM Employee
WHERE DepartmentID IN (SELECT DepartmentID FROM Department WHERE DepartmentName = 'IT');

#6. Update the hire date of all employees in the 'IT' department to '2023-01-01'.
UPDATE Employee
SET HireDate = '2023-01-01'
WHERE DepartmentID IN (SELECT DepartmentID FROM Department WHERE DepartmentName = 'IT');

#7. Modify the 'Employee' table to add a 'JobTitle' column.
ALTER TABLE Employee
ADD JobTitle VARCHAR(50);

#8. List all employees whose first name starts with 'J'.
SELECT * FROM Employee
WHERE FirstName LIKE 'J%';

#9. Find departments with more than 2 employees.
SELECT Department.DepartmentName, COUNT(Employee.EmployeeID) AS EmployeeCount
FROM Department
JOIN Employee ON Department.DepartmentID = Employee.DepartmentID
GROUP BY Department.DepartmentName
HAVING COUNT(Employee.EmployeeID) > 2;

#10. Create a view that lists all employees and their department names.
CREATE VIEW EmployeeDepartmentView AS
SELECT Employee.FirstName, Employee.LastName, Department.DepartmentName
FROM Employee
JOIN Department ON Employee.DepartmentID = Department.DepartmentID;
select * from EmployeeDepartmentView;

#11 Create a view that lists employees who started on the first day of any month.
CREATE VIEW FirstDayStarters AS
SELECT *
FROM Employee
WHERE DAY(HireDate) = 1;
select * from FirstDayStarters;

#12 List all employees who have been hired on a weekend.
SELECT Employee.FirstName, Employee.LastName, Employee.HireDate
FROM Employee
WHERE DAYOFWEEK(Employee.HireDate) IN (1, 7);

#13 Find the total number of technical and non-technical employees.
SELECT IsTechnical, COUNT(*) AS TotalCount
FROM Employee
GROUP BY IsTechnical;

#14 List all departments that have a manager who is also an employee in the 'IT' department.
SELECT DISTINCT d.DepartmentName
FROM Department d
JOIN DepartmentManagementHistory dmh ON d.DepartmentID = dmh.DepartmentID
WHERE dmh.ManagerID IN (
    SELECT e.EmployeeID
    FROM Employee e
    WHERE e.DepartmentID = (
        SELECT DepartmentID
        FROM Department
        WHERE DepartmentName = 'IT'
    )
);

#15 Select the department with the longest-serving manager.
SELECT d.DepartmentName
FROM Department d
JOIN DepartmentManagementHistory dmh ON d.DepartmentID = dmh.DepartmentID
ORDER BY DATEDIFF(dmh.EndDate, dmh.StartDate) DESC
LIMIT 1;

#16 Create a view that lists the total number of technical and non-technical employees in each department.
CREATE VIEW DepartmentEmployeeTypeCount AS
SELECT Department.DepartmentName,
       SUM(CASE WHEN EmployeeType.Type = 'Technical' THEN 1 ELSE 0 END) AS TechnicalCount,
       SUM(CASE WHEN EmployeeType.Type = 'Non-Technical' THEN 1 ELSE 0 END) AS NonTechnicalCount
FROM Department
JOIN Employee ON Department.DepartmentID = Employee.DepartmentID
JOIN EmployeeType ON Employee.EmployeeID = EmployeeType.EmployeeID
GROUP BY Department.DepartmentName;
SELECT * FROM DepartmentEmployeeTypeCount;

#17 Create a view that shows the department names and the number of managers they've had.
CREATE VIEW DepartmentManagerCount AS
SELECT d.DepartmentName, COUNT(DISTINCT dmh.ManagerID) AS ManagerCount
FROM Department d
LEFT JOIN DepartmentManagementHistory dmh ON d.DepartmentID = dmh.DepartmentID
GROUP BY d.DepartmentName;
select * from DepartmentManagerCount;

#18 List all departments that have a manager who is also an employee in the 'IT' department.
SELECT Department.DepartmentName
FROM Department
WHERE DepartmentID IN (
    SELECT DepartmentID FROM DepartmentManagementHistory
    WHERE ManagerID IN (
        SELECT EmployeeID FROM Employee
        WHERE DepartmentID IN (
            SELECT DepartmentID FROM Department WHERE DepartmentName = 'IT'
        )
    )
);
#19 Find the department with the most technical employees.
SELECT d.DepartmentName
FROM Department d
JOIN Employee e ON d.DepartmentID = e.DepartmentID
WHERE e.IsTechnical = TRUE
GROUP BY d.DepartmentName
ORDER BY COUNT(e.EmployeeID) DESC
LIMIT 1;

#20 Find the department with the highest average hire date of its employees.
SELECT Department.DepartmentName, AVG(Employee.HireDate) AS AverageHireDate
FROM Department
JOIN Employee ON Department.DepartmentID = Employee.DepartmentID
GROUP BY Department.DepartmentName
ORDER BY AverageHireDate DESC
LIMIT 1;

