/* Ways to access multiple tables in the same query:
1. Sub-queries
2. Implicit JOIN
3. JOIN operators (INNER JOIN, OUTER JOIN etc)

Accessing multiple tables with sub-queries:
E.g. to retrieve only the employee records that correspond to departments in the departments table */
SELECT * from employees
   WHERE dep_id IN
   (SELECT dept_id_dep from departments);

/* E.g. to retrieve only the list of employees from a specific location:
(Employees table does not contain location information - need to get location info from departments table) */
SELECT * FROM employees
   WHERE dep_id IN
   (SELECT dept_id_dep FROM departments
      WHERE loc_id = 'L0002');

/* E.g. to retrieve the department id and name for employees who earn more than $70,000 */
SELECT dept_id_dep, dep_name FROM departments
   WHERE dept_id_dep IN
      (SELECT dep_id FROM employees
         WHERE salary > 70000);


/* Accessing multiple tables with implicit join:
E.g. Specify 2 tables in the FROM clause */
SELECT * FROM employees, departments;
/* The result is full implicit join (or Cartesian Join). Every row in the first table is joined with every row in the second table.

E.g. use additional opperands to limit the result set (limit the result set to only rows with matching department ids) */
SELECT * FROM employees, departments
   WHERE employees.dept_id =
     departments.dept_id_dep;

/* You can also use shorter aliases for table names */
SELECT * FROM employees E.departments D
   WHERE E.dep_id = D.dept_id_dep;

/* To see the department name for each employee */
SELECT employees.emp_id, departments.dept_name
   FROM employees E, departments D
   WHERE E.dep_id = D.dept_id_dep;

/* Column names in the SELECT clause can be pre-fixed by aliases */
SELECT E.emp_id, D.dept_id_dep FROM employees E, departments D
   WHERE E.dep_id = D.dept_id_dep; 
