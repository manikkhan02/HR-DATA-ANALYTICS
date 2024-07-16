INSERT INTO Departments (DepartmentID, DepartmentName)
VALUES 
(1, 'Human Resources'),
(2, 'Engineering'),
(3, 'Marketing'),
(4, 'Finance'),
(5, 'Sales');


INSERT INTO Salaries (SalaryID, SalaryAmount, EffectiveDate)
VALUES 
(1, 60000, '2020-01-01'),
(2, 75000, '2020-01-01'),
(3, 65000, '2020-01-01'),
(4, 70000, '2020-01-01'),
(5, 72000, '2020-01-01'),
(6, 68000, '2020-01-01');


INSERT INTO Performance (PerformanceID, ReviewDate, Score, Comments)
VALUES 
(1, '2023-06-30', 85, 'Good performance'),
(2, '2023-06-30', 90, 'Excellent performance'),
(3, '2023-06-30', 80, 'Satisfactory performance'),
(4, '2023-06-30', 88, 'Very good performance'),
(5, '2023-06-30', 92, 'Outstanding performance'),
(6, '2023-06-30', 78, 'Average performance');


INSERT INTO Training (TrainingID, CourseName, CompletionDate, Result)
VALUES 
(1, 'Leadership Training', '2023-05-15', 'Passed'),
(2, 'Project Management', '2023-05-15', 'Passed'),
(3, 'Technical Training', '2023-05-15', 'Passed'),
(4, 'Marketing Strategies', '2023-05-15', 'Passed'),
(5, 'Finance Fundamentals', '2023-05-15', 'Passed'),
(6, 'Sales Techniques', '2023-05-15', 'Passed');



INSERT INTO Employees (EmployeeID, FirstName, LastName, Gender, DOB, HireDate, DepartmentID, SalaryID, PerformanceID, TrainingID)
VALUES 
(1, 'John', 'Doe', 'M', '1985-06-15', '2010-03-01', 1, 1, 1, 1),
(2, 'Jane', 'Smith', 'F', '1990-08-25', '2015-07-01', 2, 2, 2, 2),
(3, 'Mike', 'Johnson', 'M', '1988-11-10', '2012-05-12', 1, 3, 3, 3),
(4, 'Emily', 'Davis', 'F', '1992-02-20', '2018-09-17', 3, 4, 4, 4),
(5, 'David', 'Brown', 'M', '1987-04-05', '2013-11-20', 4, 5, 5, 5),
(6, 'Sarah', 'Wilson', 'F', '1995-01-12', '2020-02-10', 5, 6, 6, 6);



INSERT INTO Attendance (AttendanceID, EmployeeID, Date, Status)
VALUES 
(1, 1, '2023-01-01', 'Present'),
(2, 2, '2023-01-01', 'Absent'),
(3, 3, '2023-01-01', 'Present'),
(4, 4, '2023-01-01', 'Present'),
(5, 5, '2023-01-01', 'Present'),
(6, 6, '2023-01-01', 'Absent');



INSERT INTO ProjectAssignments (AssignmentID, EmployeeID, ProjectID, AssignmentDate)
VALUES 
(1, 1, 1, '2023-01-15'),
(2, 2, 2, '2023-02-15'),
(3, 3, 3, '2023-03-15'),
(4, 4, 1, '2023-04-15'),
(5, 5, 2, '2023-05-15'),
(6, 6, 3, '2023-06-15');



INSERT INTO Benefits (BenefitID, EmployeeID, BenefitType, StartDate, EndDate, Details)
VALUES 
(1, 1, 'Health Insurance', '2023-01-01', '2023-12-31', 'Covers health expenses'),
(2, 2, 'Retirement Plan', '2023-01-01', '2023-12-31', 'Company matched 401k plan'),
(3, 3, 'Education Assistance', '2023-01-01', '2023-12-31', 'Tuition reimbursement'),
(4, 4, 'Gym Membership', '2023-01-01', '2023-12-31', 'Access to gym facilities'),
(5, 5, 'Transport Allowance', '2023-01-01', '2023-12-31', 'Monthly travel reimbursement'),
(6, 6, 'Meal Allowance', '2023-01-01', '2023-12-31', 'Daily meal allowance');
