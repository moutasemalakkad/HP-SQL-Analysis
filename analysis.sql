SELECT id, lastname, firstname, gender, s.salary
FROM employees AS e
JOIN salaries AS s
	ON e.id = s.employee_id;

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SELECT *
FROM employees
WHERE DATE_PART('year', startdate) IN (SELECT *
									   FROM(
											SELECT DATE_PART('year',startdate)
											FROM employees
											)  AS s
										WHERE date_part = 1986)
				
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

			


SELECT department_id AS "Department ID", 
	   d.name AS "Department Name", 
	   m.id AS "Manager ID", 
	   lastname AS "Manager Last-Name", 
	   firstname AS "Manager First-Name", 
	   m.startdate AS "Manager Start Date"
FROM departments_managers AS m
JOIN departments d
	ON m.department_id = d.id
JOIN employees e
	ON m.id = e.id;



------------------------------------------------------------------------------------------------------------------------------------------------------------------------------



SELECT d."name", e."id", e.lastname, e.firstname
FROM employees e
JOIN departments_employees de
	ON e.id = de.employee_id
JOIN departments d
	ON de.department_id = d.id



------------------------------------------------------------------------------------------------------------------------------------------------------------------------------



SELECT *
FROM employees
WHERE firstname = 'Hercules' AND lastname LIKE 'B%'



------------------------------------------------------------------------------------------------------------------------------------------------------------------------------



SELECT d."name", e."id", e.lastname, e.firstname
FROM employees e
JOIN departments_employees de
	ON e.id = de.employee_id
JOIN departments d
	ON de.department_id = d.id
WHERE  d.name = 'Sales'


------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


SELECT d."name", e."id", e.lastname, e.firstname
FROM employees e
JOIN departments_employees de
	ON e.id = de.employee_id
JOIN departments d
	ON de.department_id = d.id
WHERE  d.name = 'Sales' OR d.name = 'Development'

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SELECT lastname, COUNT(*)
FROM employees
GROUP BY lastname
ORDER BY count DESC





