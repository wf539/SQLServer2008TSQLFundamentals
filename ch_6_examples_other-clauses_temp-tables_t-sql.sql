--example 6.26 GROUP BY clause
USE sample;
SELECT job
FROM works_on
GROUP BY job;

--example 6.27
USE sample;
SELECT project_no, job
FROM works_on
GROUP BY project_no, job;

--example 6.29: MIN() aggregate function
USE sample;
SELECT MIN(emp_no) AS min_employee_no
FROM employee;

--example 6.30
USE sample;
SELECT emp_no, emp_lname
FROM employee
WHERE emp_no = 
	(SELECT MIN(emp_no)
	 FROM employee);
	 
--example 6.31 MAX() aggregate function
USE sample;
SELECT emp_no
FROM works_on
WHERE enter_date = 
	(SELECT MAX(enter_date)
	 FROM works_on
	 WHERE job = 'Manager');

--example 6.32, 33 SUM function
USE sample;
SELECT SUM(budget) sum_of_budgets
FROM project
GROUP BY();

--example 6.34: AVG function
USE sample;
SELECT AVG(budget) avg_budget
FROM project
WHERE budget > 100000;

--example 6.35, 36 COUNT function
USE sample;
SELECT project_no, COUNT(DISTINCT job)job_count
FROM works_on
GROUP BY project_no;

USE sample;
SELECT job, COUNT(*)job_count
FROM works_on
GROUP BY job;

--example 6.37, 38 HAVING clause
USE sample;
SELECT project_no
FROM works_on
GROUP BY project_no
HAVING COUNT(*)<4;

USE sample;
SELECT job
FROM works_on
GROUP BY job
HAVING job LIKE 'M%';

--example 6.39: ORDER BY clause
USE sample;
SELECT emp_fname, emp_lname, dept_no
FROM employee
WHERE emp_no < 20000
ORDER BY emp_lname, emp_fname;

--SET OPERATORS
--Example 6.42: create employee_enh

USE sample;
SELECT emp_no, emp_fname, emp_lname, dept_no
INTO employee_enh
FROM employee;
ALTER TABLE employee_enh
ADD domicile CHAR(25)NULL;

--Example 6.43, 44: UNION operator
USE sample;
SELECT domicile
FROM employee_enh
UNION
SELECT location
FROM department;

USE sample;
SELECT emp_no
FROM employee
WHERE dept_no = 'd1'
UNION
SELECT emp_no
FROM works_on
WHERE enter_date < '01.01.2007'
ORDER BY 1;

--example 6.45: INTERSECT operator
USE sample;
SELECT emp_no
FROM employee
WHERE dept_no = 'd1'
INTERSECT
SELECT emp_no
FROM works_on
WHERE enter_date < '01.01.2008';

--example 6.46: EXCEPT operator
USE sample;
SELECT emp_no
FROM employee
WHERE dept_no = 'd3'
EXCEPT
SELECT emp_no
FROM works_on
WHERE enter_date > '01.01.2008';

--example 6.47: searched CASE statement
USE sample;
SELECT project_name,
	CASE
		WHEN budget > 0 AND budget < 100000 THEN 1
		WHEN budget >= 100000 AND budget < 200000 THEN 2
		WHEN budget >= 200000 AND budget < 300000 THEN 3
	ELSE 4
	END budget_weight
FROM project;

--example 6.48: searched CASE statement with inner queries [this one errors]
USE sample;
SELECT project_name,
	CASE
		WHEN p1.budget < (SELECT AVG(p2.budget)FROM project p2) THEN 'below average'
		WHEN p1.budget = (SELECT AVG(p2.budget)FROM project p2) THEN 'on average'
		WHEN p1.budget > (SELECT AVG(p2.budget)FROM project p2) THEN 'above average'
	ELSE 4
	END budget_category
FROM project;	 