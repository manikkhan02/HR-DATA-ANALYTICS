CREATE DATABASE HR_DATA_ANALYTICS;
USE HR_DATA_ANALYTICS;

DROP TABLE IF EXISTS Departments;
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100)
);


DROP TABLE IF EXISTS Salaries;
CREATE TABLE Salaries (
    SalaryID INT PRIMARY KEY,
    SalaryAmount DECIMAL(10, 2),
    EffectiveDate DATE
);


DROP TABLE IF EXISTS Performance;
CREATE TABLE Performance (
    PerformanceID INT PRIMARY KEY,
    ReviewDate DATE,
    Score INT,
    Comments TEXT
);


DROP TABLE IF EXISTS Training;
CREATE TABLE Training (
    TrainingID INT PRIMARY KEY,
    CourseName VARCHAR(100),
    CompletionDate DATE,
    Result VARCHAR(50)
);


DROP TABLE IF EXISTS Employees;
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Gender CHAR(1),
    DOB DATE,
    HireDate DATE,
    DepartmentID INT,
    SalaryID INT,
    PerformanceID INT,
    TrainingID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID),
    FOREIGN KEY (SalaryID) REFERENCES Salaries(SalaryID),
    FOREIGN KEY (PerformanceID) REFERENCES Performance(PerformanceID),
    FOREIGN KEY (TrainingID) REFERENCES Training(TrainingID)
);


DROP TABLE IF EXISTS Attendance;
CREATE TABLE Attendance (
    AttendanceID INT PRIMARY KEY,
    EmployeeID INT,
    Date DATE,
    Status VARCHAR(10),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);

DROP TABLE IF EXISTS Projects;
CREATE TABLE Projects (
    ProjectID INT PRIMARY KEY,
    ProjectName VARCHAR(100),
    StartDate DATE,
    EndDate DATE
);


DROP TABLE IF EXISTS ProjectAssignments;
CREATE TABLE ProjectAssignments (
    AssignmentID INT PRIMARY KEY,
    EmployeeID INT,
    ProjectID INT,
    AssignmentDate DATE,
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID),
    FOREIGN KEY (ProjectID) REFERENCES Projects(ProjectID)
);


DROP TABLE IF EXISTS Leaves;
CREATE TABLE Leaves (
    LeaveID INT PRIMARY KEY,
    EmployeeID INT,
    LeaveType VARCHAR(50),
    StartDate DATE,
    EndDate DATE,
    Reason TEXT,
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);


DROP TABLE IF EXISTS Benefits;
CREATE TABLE Benefits (
    BenefitID INT PRIMARY KEY,
    EmployeeID INT,
    BenefitType VARCHAR(100),
    StartDate DATE,
    EndDate DATE,
    Details TEXT,
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);
