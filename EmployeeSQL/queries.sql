-- 1. List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT e.emp_no, e.last_name, e.first_name, e.gender, s.salary
	FROM salaries AS s
	INNER JOIN employees AS e ON
	e.emp_no=s.emp_no;

-- 2. List employees who were hired in 1986.
SELECT * FROM employees
	WHERE hire_date LIKE '1986%';

-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
SELECT d.dept_no, d.dept_name, m.emp_no, e.last_name, e.first_name, m.from_date, m.to_date
	FROM departments AS d
	INNER JOIN dept_manager AS m ON
	d.dept_no=m.dept_no
	JOIN employees AS e ON
	e.emp_no=m.emp_no;

-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, n.dept_name
	FROM employees AS e
	INNER JOIN dept_emp AS d ON
	e.emp_no=d.dept_no
	INNER JOIN departments as n ON
	n.dept_no=d.dept_no;