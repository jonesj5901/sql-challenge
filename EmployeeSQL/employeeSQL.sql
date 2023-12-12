DROP TABLE IF EXISTS Departments;
DROP TABLE IF EXISTS Employees;
DROP TABLE IF EXISTS Salary;
DROP TABLE IF EXISTS EmployeeDept;
DROP TABLE IF EXISTS DeptManager;
DROP TABLE IF EXISTS Title;

-- CREATE TABLES
CREATE TABLE Departments (
		dept_no VARCHAR(200)PRIMARY KEY,
		dept_name VARCHAR(200)
);

SELECT * FROM Departments; 

CREATE TABLE Employees (
		emp_no INT PRIMARY KEY,
		emp_title_id VARCHAR(200),
		birth_date DATE,
		first_name VARCHAR(200),
		last_name VARCHAR(200),
		sex VARCHAR(10),
		hire_date DATE
);

SELECT * FROM Employees; 

CREATE TABLE Salary (
		emp_no INT PRIMARY KEY,
		salary INT
);

SELECT * FROM Salary; 

CREATE TABLE DeptManager (
		dept_no VARCHAR(200),
		emp_no INT PRIMARY KEY
);

SELECT * FROM DeptManager; 

CREATE TABLE Title (
		title_id VARCHAR(200) PRIMARY KEY,
		title VARCHAR(200)
);

SELECT * FROM Title; 

CREATE TABLE EmployeeDept (
		emp_no INT PRIMARY KEY,
		dept_no VARCHAR(200)
		FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
		
);

SELECT * FROM EmployeeDept; 