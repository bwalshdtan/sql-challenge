CREATE TABLE departments (
	dept_no VARCHAR PRIMARY KEY,
	dept_name VARCHAR
);

SELECT * FROM departments;

CREATE TABLE employees (
	emp_no VARCHAR PRIMARY KEY,
	birth_date DATE,
	first_name VARCHAR,
	last_name VARCHAR,
	gender VARCHAR,
	hire_date DATE
);

SELECT * FROM employees;

CREATE TABLE salaries (
	emp_no VARCHAR PRIMARY KEY,
	salary VARCHAR,
	from_date DATE,
	to_date DATE
);

SELECT * FROM salaries;

CREATE TABLE titles (
	emp_no VARCHAR,
	title VARCHAR,
	from_date DATE,
	to_date VARCHAR,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM titles;

CREATE TABLE dept_emp (
	emp_no VARCHAR,
	dept_no VARCHAR,
	from_date DATE,
	to_date VARCHAR,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

SELECT * FROM dept_emp;

CREATE TABLE dept_manager (
	dept_no VARCHAR,
	emp_no VARCHAR PRIMARY KEY,
	from_date DATE,
	to_date VARCHAR,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

SELECT * FROM dept_manager;