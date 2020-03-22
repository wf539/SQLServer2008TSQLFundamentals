--JOIN Operator
-- example 6.52: explicit JOIN syntax
USE sample;
SELECT employee.*, department.*
	FROM employee INNER JOIN department
	ON employee.dept_no = department.dept_no;

