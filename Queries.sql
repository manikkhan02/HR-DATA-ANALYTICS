-- List of All Employees

SELECT * FROM Employees;

-- EmployeeID | FirstName | LastName | Gender | DOB        | HireDate   | DepartmentID | SalaryID | PerformanceID | TrainingID
-- --------------------------------------------------------------------------------------------------------------
-- 1          | John      | Doe      | M      | 1985-06-15 | 2010-03-01 | 1            | 1        | 1             | 1
-- 2          | Jane      | Smith    | F      | 1990-08-25 | 2015-07-01 | 2            | 2        | 2             | 2
-- 3          | Mike      | Johnson  | M      | 1988-11-10 | 2012-05-12 | 1            | 3        | 3             | 3
-- 4          | Emily     | Davis    | F      | 1992-02-20 | 2018-09-17 | 3            | 4        | 4             | 4
-- 5          | David     | Brown    | M      | 1987-04-05 | 2013-11-20 | 4            | 5        | 5             | 5
-- 6          | Sarah     | Wilson   | F      | 1995-01-12 | 2020-02-10 | 5            | 6        | 6             | 6


-- Employee Attendance in January 2023

SELECT e.FirstName, e.LastName, a.Date, a.Status
FROM Employees e
JOIN Attendance a ON e.EmployeeID = a.EmployeeID
WHERE a.Date BETWEEN '2023-01-01' AND '2023-01-31';

-- FirstName | LastName | Date       | Status
-- --------------------------------------------
-- John      | Doe      | 2023-01-01 | Present
-- Jane      | Smith    | 2023-01-01 | Absent
-- Mike      | Johnson  | 2023-01-01 | Present
-- Emily     | Davis    | 2023-01-01 | Present
-- David     | Brown    | 2023-01-01 | Present
-- Sarah     | Wilson   | 2023-01-01 | Absent


-- Average Salary by Department

SELECT d.DepartmentName, AVG(s.SalaryAmount) AS AverageSalary
FROM Departments d
JOIN Employees e ON d.DepartmentID = e.DepartmentID
JOIN Salaries s ON e.SalaryID = s.SalaryID
GROUP BY d.DepartmentName;

-- DepartmentName    | AverageSalary
-- ----------------------------------
-- Human Resources   | 62500.00
-- Engineering       | 75000.00
-- Marketing         | 70000.00
-- Finance           | 72000.00
-- Sales             | 68000.00


-- Employee Performance Scores

SELECT e.FirstName, e.LastName, p.Score, p.Comments
FROM Employees e
JOIN Performance p ON e.EmployeeID = p.EmployeeID;


-- FirstName | LastName | Score | Comments
-- --------------------------------------------
-- John      | Doe      | 85    | Good performance
-- Jane      | Smith    | 90    | Excellent performance
-- Mike      | Johnson  | 80    | Satisfactory performance
-- Emily     | Davis    | 88    | Very good performance
-- David     | Brown    | 92    | Outstanding performance
-- Sarah     | Wilson   | 78    | Average performance


-- Employees Assigned to Projects

SELECT e.FirstName, e.LastName, p.ProjectName, pa.AssignmentDate
FROM Employees e
JOIN ProjectAssignments pa ON e.EmployeeID = pa.EmployeeID
JOIN Projects p ON pa.ProjectID = p.ProjectID;

-- FirstName | LastName | ProjectName | AssignmentDate
-- ---------------------------------------------------
-- John      | Doe      | Project Alpha | 2023-01-15
-- Emily     | Davis    | Project Alpha | 2023-04-15
-- Jane      | Smith    | Project Beta  | 2023-02-15
-- David     | Brown    | Project Beta  | 2023-05-15
-- Mike      | Johnson  | Project Gamma | 2023-03-15
-- Sarah     | Wilson   | Project Gamma | 2023-06-15


-- Employee Leave Records

SELECT e.FirstName, e.LastName, l.LeaveType, l.StartDate, l.EndDate, l.Reason
FROM Employees e
JOIN Leaves l ON e.EmployeeID = l.EmployeeID;



-- | FirstName | LastName | LeaveType       | StartDate  | EndDate    | Reason            |
-- |-----------|----------|-----------------|------------|------------|-------------------|
-- | John      | Doe      | Sick Leave      | 2023-03-01 | 2023-03-05 | Flu               |
-- | Jane      | Smith    | Annual Leave    | 2023-04-10 | 2023-04-20 | Vacation          |
-- | Mike      | Johnson  | Maternity Leave | 2023-05-15 | 2023-08-15 | Maternity         |
-- | Emily     | Davis    | Paternity Leave | 2023-06-01 | 2023-06-05 | Paternity         |
-- | David     | Brown    | Study Leave     | 2023-07-10 | 2023-07-15 | Exam preparation  |
-- | Sarah     | Wilson   | Personal Leave  | 2023-08-20 | 2023-08-22 | Personal reasons  |


-- Employee Benefits Information

SELECT e.FirstName, e.LastName, b.BenefitType, b.StartDate, b.EndDate, b.Details
FROM Employees e
JOIN Benefits b ON e.EmployeeID = b.EmployeeID;


-- | FirstName | LastName | BenefitType          | StartDate  | EndDate    | Details                     |
-- |-----------|----------|----------------------|------------|------------|-----------------------------|
-- | John      | Doe      | Health Insurance     | 2023-01-01 | 2023-12-31 | Covers health expenses      |
-- | Jane      | Smith    | Retirement Plan      | 2023-01-01 | 2023-12-31 | Company matched 401k plan   |
-- | Mike      | Johnson  | Education Assistance | 2023-01-01 | 2023-12-31 | Tuition reimbursement       |
-- | Emily     | Davis    | Gym Membership       | 2023-01-01 | 2023-12-31 | Access to gym facilities    |
-- | David     | Brown    | Transport Allowance  | 2023-01-01 | 2023-12-31 | Monthly travel reimbursement|
-- | Sarah     | Wilson   | Meal Allowance       | 2023-01-01 | 2023-12-31 | Daily meal allowance        |


-- Employees with Salaries Above Average

SELECT e.FirstName, e.LastName, s.SalaryAmount
FROM Employees e
JOIN Salaries s ON e.SalaryID = s.SalaryID
WHERE s.SalaryAmount > (SELECT AVG(SalaryAmount) FROM Salaries);



-- | FirstName | LastName | SalaryAmount |
-- |-----------|----------|--------------|
-- | Jane      | Smith    | 75000.00     |
-- | Emily     | Davis    | 70000.00     |
-- | David     | Brown    | 72000.00     |







