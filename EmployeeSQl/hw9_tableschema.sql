-- Schema code file for homework 9!

-- First, create all tables
CREATE TABLE departments (
	dept_no VARCHAR(4) PRIMARY KEY, -- Primary key for departments table 
	dept_name VARCHAR(30) NOT NULL
);

CREATE TABLE titles (
	title_id VARCHAR(5) PRIMARY KEY, -- Primary key for titles table 
	title VARCHAR(30) NOT NULL
);

CREATE TABLE employees (
	emp_no INT PRIMARY KEY, -- Primary key for employees table
	emp_title_id VARCHAR(5) NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id), -- FK from titles table
	birth_date DATE,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	sex VARCHAR(30),
	hire_date DATE
);

CREATE TABLE dept_emp (
	emp_no INT NOT NULL, -- FK from employees table
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no), 
	dept_no VARCHAR(4) NOT NULL, -- FK from departments table
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_manager (
	dept_no VARCHAR(4) NOT NULL, -- FK from employees table
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	emp_no INT NOT NULL, -- FK from employees table
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE salaries (
	emp_no INT NOT NULL, -- FK from employees table
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	salary INT NOT NULL
);
