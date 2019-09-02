# HP-SQL-Analysis

# Employee Database: A Mystery in Two Parts

![sql.png](sql.png)

## Background

My first major task is a research project on employees of the corporation from the 1980s and 1990s. All that remain of the database of employees from that period are six CSV files.

In this project, i will design the tables to hold data in the CSVs, import the CSVs into a SQL database, and answer questions about the data. In other words, i will perform:

1. Data Modeling

2. Data Engineering

3. Data Analysis



#### Data Modeling

I'll nspect the CSVs and sketch out an ERD of the tables. I'll be using a usefull website: [http://www.quickdatabasediagrams.com](http://www.quickdatabasediagrams.com).
Find below my ERD:

![QuickDBD-export.png](QuickDBD-export.png)

#### Data Engineering

* I'll use the information i have to create a table schema for each of the six CSV files. I'll specify data types, primary keys, foreign keys, and other constraints.

* Import each CSV file into the corresponding SQL table.

#### Data Analysis

Once i have a complete database, i will do the following:

1. List the following details of each employee: employee number, last name, first name, gender, and salary.

2. List employees who were hired in 1986.

3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.

4. List the department of each employee with the following information: employee number, last name, first name, and department name.

5. List all employees whose first name is "Hercules" and last names begin with "B."

6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.


