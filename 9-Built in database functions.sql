/* Using the PETSALE table example - the table records sale transaction details and inclides the columns:
ID, animal, quantity, sale price, sale date.

Aggregate or column functions:
SUM - add up all the values in a column: */
SUM(COLUMN_NAME);

/* E.g. add all values in the saleprice column */
SELECT SUM(saleprice) FROM PETSALE;

/* E.g. #2 explicitly name the output of column sum_of_saleprice
(When you use and aggregate function, the column in the result set, bu default, is given a number.
It is possible to explicitly name the resulting column as per the following example) */
SELECT SUM(saleprice) AS sum_of_saleprice
   FROM PETSALE;


/* MIN, MAX:
E.g. get the maximum quantity of any animal */
SELECT MAX(quantity) FROM PETSALE;

/* E.g. get the minimum value of ID column for dogs */
SELECT MIN(ID) FROM PETSALE WHERE animal = 'Dog';


/* AVG:
E.g. specify the average value of saleprice */
SELECT AVG(saleprice) FROM PETSALE;

/* Mathematical operations can be performed between columns.
E.g. calculate the aerage saleprice per 'Dog' */
SELECT AVG(saleprice/ quantity) FROM PETSALE
   WHERE animal = 'Dog';


/* SCALAR & STRING FUNCTIONS:
SCALAR: perform operations on every input value
Examples: ROUND(), LENGTH(), UCASE(), LCASE()

E.g. round up or down every value in saleprice */
SELECT ROUND(saleprice) FROM PETSALE;

/* E.g. retrieve the length of each value in animal */
SELECT LENGTH(animal) FROM PETSALE;

/* UCASE, LCASE - used to return uppercase or lowercase values of strings:
E.g. retrieve animal values in uppercase */
SELECT UCASE(animal) FROM PETSALE;

/* Scalar functions can be used in the WHERE clause.
This type of statement is useful for matching values in the WHERE clause if you're not sure whether the values are stored in upper, lower or mixed case in the table.
E.g.*/
SELECT * FROM PETSALE
   WHERE LCASE(animal) = 'Cat';

/* Use DISTINCT function to get unique values (you can also have one function operate on the output of another function) */
SELECT DISTINCT(UCASE(animal)) FROM PETSALE;


/* Date & time built-in functions:
DATE: YYYMMMDD
TIME: HHMMSS
TIMESTAMP: YYYXXDDHHMMSSZZZZZZ (XX = math, ZZZZZZ = microseconds)
YEAR(), MONTH(), DAY(), DAYOFMONTH(), DAYOFWEEK(), DAYOFYEAR(), WEEK(), HOUR(), MINUTE(), SECOND()

E.g. extract the day portion from a date */
SELECT DAY(saledate) FROM PETSALE
   WHERE animal = 'Cat';

/* E.g. get the number of sales during the month of May: */
SELECT COUNT(*) FROM PETSALE
   WHERE MONTH(saledate) = '05';


/* Date or time arithmetic:
E.g. what date is it 3 days after each sale date? */
SELECT(saledate + 3 DAYS) FROM PETSALE;

/* Special registers are also available for CURRENT_DATE & CURRENT_TIME:
E.g. find how many days have passed since each saledate until now */
SELECT(CURRENT_DATE - saledate) FROM PETSALE;
