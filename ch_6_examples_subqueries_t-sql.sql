--example 6.22 self-contained subquery with = operator
USE sample;
SELECT emp_fname, emp_lname
FROM employee
WHERE dept_no = 
(SELECT dept_no
 FROM department
 WHERE dept_name = 'Research');

--example 6.23
USE sample;
SELECT emp_no, emp_fname, emp_lname, dept_no
FROM employee
WHERE dept_no IN
(SELECT dept_no
 FROM department
 WHERE location = 'Dallas');

--example 6.24: nest subqueries
USE sample;
SELECT emp_lname
FROM employee
WHERE emp_no IN
	(SELECT emp_no
	 FROM works_on
	 WHERE project_no IN
		(SELECT project_no
		 FROM project
		 WHERE project_name = 'Apollo'));

--example 6.25: ANY operator
USE sample;
SELECT DISTINCT emp_no, project_no, job
FROM works_on
WHERE enter_date > ANY 
	(SELECT enter_date
	 FROM works_on);