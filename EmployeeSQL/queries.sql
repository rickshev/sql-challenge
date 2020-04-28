-- 1.
-- employee number, last name, gender, and salary
SELECT employees.emp_no, employees.last_name, employees.gender, salaries.salary
FROM employees
JOIN salaries
ON employees.emp_no = salaries.emp_no;

-- 2.
-- first names, last names, and hire dates employees hired in 1986
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

-- 3.
-- dept. managers' employee numbers, dept. numbers, department names, and first and last names
SELECT departments.dept_no,departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
FROM departments
JOIN dept_manager 
ON dept_manager.dept_no = departments.dept_no
JOIN employees
ON employees.emp_no = dept_manager.emp_no;

-- 4.
-- all employees' employee number, last and first names, and department name
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no
JOIN departments
ON dept_emp.dept_no = departments.dept_no;

-- 5.
-- first / names and sex of employees named 'Hercules' with last name beginning with 'B'
SELECT first_name, last_name, gender
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

-- 6.
-- all employees' emp_no, first / last names, and dept_name in 'Sales' department
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no
JOIN departments
ON dept_emp.dept_no = departments.dept_no
WHERE dept_name = 'Sales'

-- 7.
-- all employees' emp_no, first / last names, and dept_name in 'Sales' or 'Development' departments
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no
JOIN departments
ON dept_emp.dept_no = departments.dept_no
WHERE dept_name = 'Sales'
OR dept_name = 'Development'

-- 8.
-- list most frequently shared last names
SELECT last_name, COUNT(last_name) AS name_count
FROM employees
GROUP BY last_name
ORDER BY name_count DESC;