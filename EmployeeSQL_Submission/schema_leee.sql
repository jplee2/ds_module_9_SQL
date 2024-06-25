--Departments Table:
CREATE TABLE departments (
    dept_no CHAR(4) PRIMARY KEY,
    dept_name VARCHAR(50)
);

--Titles Table:
CREATE TABLE titles (
    title_id CHAR(5) PRIMARY KEY,
    title VARCHAR(50)
);

--Employees Table:
CREATE TABLE employees (
    emp_no INTEGER PRIMARY KEY,
    emp_title CHAR(5),
    birth_date DATE,
    first_name VARCHAR(15),
    last_name VARCHAR(20),
    sex CHAR(1),
    hire_date DATE,
    FOREIGN KEY (emp_title) REFERENCES titles(title_id)
);

--Salaries Table:
CREATE TABLE salaries (
    emp_no INTEGER PRIMARY KEY,
    salary FLOAT,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

--Dept_Manager Table:
CREATE TABLE dept_manager (
    dept_no CHAR(4),
    emp_no INTEGER PRIMARY KEY,
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

--Dept_Emp Table:
CREATE TABLE dept_emp (
    emp_no INTEGER,
    dept_no CHAR(4),
    PRIMARY KEY (emp_no, dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);