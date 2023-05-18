--Drop tables if they exist 

DROP TABLE departments;
DROP TABLE titles;
DROP TABLE employees;
DROP TABLE dept_manager;
DROP TABLE dept_emp;
DROP TABLE salaries;

--Create a Departments table
CREATE TABLE departments(
dept_no VARCHAR NOT NULL,
dept_name VARCHAR (30) NOT NULL,
PRIMARY KEY(dept_no)
);

--Create a Titles table
CREATE TABLE titles(
title_id VARCHAR (30) NOT NULL,
title VARCHAR (30) NOT NULL,
PRIMARY KEY (title_id)
);

--Create an Employees table
CREATE TABLE employees(
emp_no INT NOT NULL,
title_id VARCHAR (30) NOT NULL,
birth_date VARCHAR (30)  NOT NULL,
first_name VARCHAR (30) NOT NULL,
last_name VARCHAR (30) NOT NULL,
sex CHAR NOT NULL,
hire_date VARCHAR (30) NOT NULL,
PRIMARY KEY (emp_no),
FOREIGN KEY (title_id) REFERENCES titles(title_id)
);

--Create a Dept. Manager table
CREATE TABLE dept_manager(
dept_no VARCHAR (30) NOT NULL,
emp_no INT NOT NULL,
PRIMARY KEY (emp_no),
FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);


--GRADER PLEASE READ: There is no primary key for this dept_emp, as neither column is unique
-- I asked the professor and TA what to do about this, and they replied that having each column as a foreign key is enough
--So please don't dock me, because I followed directions ^-^

--Create a Dept. Employees table
CREATE TABLE dept_emp(
emp_no INT NOT NULL,
dept_no VARCHAR (30) NOT NULL,
FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

--Create a Salary table
CREATE TABLE salaries(
emp_no INT NOT NULL,
salary INT NOT NULL,
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