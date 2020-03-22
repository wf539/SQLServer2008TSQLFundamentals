--example 6.7a
USE sample;
SELECT emp_no, emp_fname, emp_lname
FROM employee
WHERE emp_no = 25348 AND emp_lname = 'Smith'
OR emp_fname = 'Matthew' AND dept_no = 'd1';

--example 6.7c: using parentheses
USE sample;
SELECT emp_no, emp_fname, emp_lname
FROM employee
WHERE (emp_no = 25348 AND emp_lname = 'Smith')
OR (emp_fname = 'Matthew' AND dept_no = 'd1');

--example 6.8: NOT operator
USE sample;
SELECT emp_no, emp_lname
FROM employee
WHERE NOT dept_no ='d2';

--example 6.9: IN operator
USE sample;
SELECT emp_no, emp_fname, emp_lname
FROM employee
WHERE emp_no IN (29346,28559,25348);

--example 6.10: IN operator with NOT
USE sample;
SELECT emp_no, emp_fname, emp_lname, dept_no
FROM employee
WHERE emp_no NOT IN (10102, 9031);

--example 6.11,12: BETWEEN operator
USE sample;
SELECT project_name, budget
FROM project
WHERE budget BETWEEN 95000 AND 120000;
SELECT project_name, budget
FROM project
WHERE budget >= 95000 AND budget <= 120000;

--example 6.13a, b: BETWEEN operator with NOT
USE sample;
SELECT project_name
FROM project
WHERE budget NOT BETWEEN 100000 AND 150000;
SELECT project_name
FROM project
WHERE budget < 100000 OR budget > 150000;

--example 6.14: using NULL
USE sample;
SELECT emp_no, project_no
FROM works_on
WHERE project_no = 'p2'
AND job IS NULL;

--example 6.15: using NULL
USE sample;
SELECT project_no, job
FROM works_on
WHERE job <> NULL;

--example 6.16: ISNULL function
USE sample;
SELECT emp_no, ISNULL(job,'Job unknown') AS task
FROM works_on
WHERE project_no = 'p1';

--example 6.17: LIKE operator
USE sample;
SELECT emp_fname, emp_lname, emp_no
FROM employee
WHERE emp_fname LIKE '_a%';

--example 6.18: LIKE operator [ranges]
USE sample;
SELECT dept_no, dept_name, location
FROM department
WHERE location LIKE '[C-F]%';

--example 6.19: LIKE operator [ranges, negation]
USE sample;
SELECT emp_no, emp_fname, emp_lname
FROM employee
WHERE emp_lname LIKE '[^J-O]%'
AND emp_fname LIKE '[^EZ]%';

--example 6.20: LIKE operator with NOT
USE sample;
SELECT emp_no, emp_fname, emp_lname
FROM employee
WHERE emp_fname NOT LIKE '%n';

--example 6.21: escaping characters
USE sample;
SELECT project_no, project_name
FROM project
WHERE project_name LIKE '%[_]%';
SELECT project_no, project_name
FROM project
WHERE project_name LIKE '%!_%' ESCAPE '!';