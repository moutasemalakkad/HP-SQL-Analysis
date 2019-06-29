CREATE TABLE departments (
id VARCHAR PRIMARY KEY,
name VARCHAR(40)
);


CREATE TABLE employees (
id  VARCHAR PRIMARY KEY,
birthdate DATE,
firstname VARCHAR(40),
lastname  VARCHAR(40),
gender VARCHAR(1),
startdate date
);


CREATE TABLE departments_employees (
employee_id VARCHAR(20),
department_id VARCHAR(20),
FOREIGN KEY (employee_id) REFERENCES employees (id),
FOREIGN KEY (department_id) REFERENCES departments(id),
startdate DATE,
enddate DATE
);




CREATE TABLE departments_managers (
id VARCHAR(20) PRIMARY KEY,
department_id VARCHAR(20),
FOREIGN KEY (department_id) REFERENCES departments(id),
startdate DATE,
enddate VARCHAR
);





CREATE TABLE salaries (
employee_id VARCHAR(20),
FOREIGN KEY (employee_id) REFERENCES employees(id),
salary INT,
startdate DATE,
enddate DATE
);


CREATE TABLE titles (
employee_id VARCHAR(20),
FOREIGN KEY (employee_id) REFERENCES employees(id),
title VARCHAR(30),
startdate DATE,
enddate DATE
);