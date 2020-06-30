/* Sub-queries allow you to perform more powerful queries than would have been possible otherwise.
E.g. */
SELECT column1 FROM table
   WHERE column2 - (SELECT MAX(column2)
   FROM table);

/* To retrieve the list of employees who earn more than the average salary: */
SELECT * FROM employees
   WHERE salary > AVG(salary);
/* this query will result in an ERROR indicating 'invalid use of an aggregate function' */


/* Sub-queries to evaluate aggregate functions:
Cannot evaluate aggregate functions like AVG in WHERE clause, therefore use a sub-SELECT expression */
SELECT emp_id, f_name, l_name, salary FROM employees
   WHERE salary <
   (SELECT AVG(salary) FROM employees);
/* Note that the AVG() function is evaluated in the first part of the sub-query: allowing us to circumvent the limitation of evaluating it directly in the WHERE clause */


/* Sub-queries in list of columns:
Called 'column expressions', the sub-select doesn't just have to go in the WHERE clause, it can also go in other parts of the query such as teh list of columns to be selected.
E.g. say we want to compare the salary of each employee with the average salary */
SELECT emp_id, salary, AVG(salary) AS AVG(salary)
   FROM employees;
/* This will result in an ERROR indicating that no group by clause is specified.
Instead: */
SELECT emp_id, salary
   (SELECT AVG(salary) FROM employees)
      AS avg_salary
   FROM employees;


/* Sub-queries in FROM clause:
Substitute the table name with a sub-query - calles 'Derived Tables' or 'Table Expressions'
E.g. create a table expression that contains nonsensititve employee information */
SELECT * FROM
   (SELECT emp_id, f_name, l_name, dep_id FROM employees) AS emp4all;
