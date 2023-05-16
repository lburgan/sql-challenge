--Drop tables if they exist 

DROP TABLE departments;
DROP TABLE titles;
DROP TABLE employees;
DROP TABLE dept_manager;
DROP TABLE dept_emp;
DROP TABLE salaries;



--Create a Departments table
CREATE TABLE departments(
dept_no VARCHAR,
dept_name VARCHAR (30),
PRIMARY KEY(dept_no)
);

--Create a Titles table
CREATE TABLE titles(
title_id VARCHAR,
title VARCHAR,
PRIMARY KEY (title_id)
);

--Create an Employees table
CREATE TABLE employees(
emp_no VARCHAR,
title_id VARCHAR,
birth_date VARCHAR,
first_name VARCHAR,
last_name VARCHAR,
sex VARCHAR,
hire_date VARCHAR,
PRIMARY KEY (emp_no),
FOREIGN KEY (title_id) REFERENCES titles(title_id)
);

--Create a Dept. Manager table
CREATE TABLE dept_manager(
dept_no VARCHAR,
emp_no VARCHAR,
PRIMARY KEY (emp_no),
FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
--Create a Dept. Employees table
CREATE TABLE dept_emp(
emp_no VARCHAR,
dept_no VARCHAR,
FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
--Create a Salary table
CREATE TABLE salaries(
emp_no VARCHAR,
salary INT,
PRIMARY KEY (emp_no),
FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);


--Check to see data loaded in correctly 
SELECT * 
FROM departments;

SELECT * 
FROM employees;

SELECT * 
FROM titles;

SELECT * 
FROM dept_manager;

SELECT * 
FROM dept_emp;

SELECT * 
FROM salaries;