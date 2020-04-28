-- create table for departments.csv
CREATE TABLE departments (
    dept_no VARCHAR PRIMARY KEY,
    dept_name VARCHAR NOT NULL
);

-- table for employees.csv
CREATE TABLE employees (
    emp_no INT PRIMARY KEY,
    birth_date VARCHAR NOT NULL,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
    gender VARCHAR NOT NULL,
    hire_date VARCHAR NOT NULL
);

-- table for dept_emp.csv
CREATE TABLE dept_emp (
    emp_no INT,
    dept_no VARCHAR,
    from_date VARCHAR,
    to_date VARCHAR,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

-- table for dept_manager.csv
CREATE TABLE dept_manager (
    dept_no VARCHAR,
    emp_no INT NOT NULL,
    from_date VARCHAR,
    to_date VARCHAR,
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

-- table for salaries.csv
CREATE TABLE salaries (
    emp_no INT,
    salary INT NOT NULL,
    from_date VARCHAR,
    to_date VARCHAR,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- table for titles.csv
CREATE TABLE titles (
    emp_no INT,
    title VARCHAR NOT NULL,
    from_date VARCHAR,
    to_date VARCHAR,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);