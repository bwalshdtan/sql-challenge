CREATE TABLE departments (
	dept_no VARCHAR PRIMARY KEY,
	dept_name VARCHAR(40) NOT NULL
);

SELECT * FROM departments;

CREATE TABLE employees (
	emp_no VARCHAR PRIMARY KEY,
	birth_date DATE,
	first_name VARCHAR(40) NOT NULL,
	last_name VARCHAR(40) NOT NULL,
	gender VARCHAR(40) NOT NULL,
	hire_date DATE
);

SELECT * FROM employees;

CREATE TABLE salaries (
	emp_no VARCHAR PRIMARY KEY,
	salary VARCHAR(40) NOT NULL,
	from_date DATE,
	to_date DATE
);

SELECT * FROM salaries;

CREATE TABLE titles (
	emp_no VARCHAR(40) NOT NULL,
	title VARCHAR(40) NOT NULL,
	from_date DATE,
	to_date VARCHAR(40) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM titles;

CREATE TABLE dept_emp (
	emp_no VARCHAR(40) NOT NULL,
	dept_no VARCHAR(40) NOT NULL,
	from_date DATE(40) NOT NULL,
	to_date DATE,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

SELECT * FROM dept_emp;

CREATE TABLE dept_manager (
	dept_no VARCHAR(40) NOT NULL,
	emp_no VARCHAR PRIMARY KEY,
	from_date DATE,
	to_date DATE,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

SELECT * FROM dept_manager;