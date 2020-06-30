/* Retrieve all rows from a table: */
SELECT * from Book;

/* 2 rows: */
SELECT book_id, title from Book;

/* Restrict the result set using the WHERE clause: */
SELECT book_id, title from Book
   WHERE book_id = 'B1';

/* If you don't know the exact value to specify in the WHERE clause, you can use string patterns.
The 'like' predicate is used in a WHERE clause to search for a pattern in a column.
The '%' is used to define missing letters. This can be placed before the pattern, after the pattern or both before and after the pattern.
   The '%' is called a 'wildcard' character - used to substitute other characters. */

SELECT firstname from Author
   WHERE firstname like 'R%';


/* Retrieving rows - using a range: */
SELECT title, pages from Book
   WHERE pages >= 290 AND pages <= 300;

/* We can also, instead of using comparison operators; greater than or equal to, we can use 'between and'
'between and' compares 2 values, The values and range are inclusive: */
SELECT title, pages from Book
   WHERE pages between 290 and 300;


/* Retrieving rows - using a set of values:
In some cases, there are data values that cannot be grouped under ranges.
E.g. if we want to know which countries the authors are from.
If we wanted to retrieve authors from Australia or Brazil: */
SELECT firstname, lastname, country from Author
   WHERE country = 'AU' OR country = 'BR';

/* However, what if we want to retrieve authors from Canada, India and China? The WHERE clause would become very long.
Instead, we use the IN operator. The IN operator allows us to specify a set of values in a WHERE clause: */
SELECT firstname, lastname, country from Author
   WHERE country IN ('AU', 'BR');


/* Sorting Result Set: */
SELECT * from Book;

SELECT title from Book;

/* The 'order by' clause is used in a query to sort the result set by a specified column.
By default, the result set is sorted in ascending order: */
SELECT title from Book
   order by title;


/* Specifying Column Sequence Number:
This brings book titles whose total pages begins with '2' to the top of the results set*/
SELECT title, pages from Book
   order by 2;


/* Grouping Result Sets: */
SELECT country from Author order by 1;

/* The result set lists the countries that the authors belong to, sorted alphabetically by country.
Some authors might come from the same country, producing duplicate results.
To eliminate duplicates, use the DISTINCT keyword: */
SELECT DISTINCT(country) from Author;

/* GROUP BY clause:
To display the result set listing the country and number of authors that come from that country, we add the GROUP BY clause to the SELECT statement: */
SELECT country, COUNT(country) from Author
   GROUP BY country;

/* Alternative method:
COUNT assigns a name to the second column of the result set*/
SELECT country, COUNT(country)
   AS COUNT FROM Author GROUP BY country;


/* Restricting the result set - HAVING clause:
Now that we have the count of authors from different countries, we can further restrict the number of rows by passing some conditions
E.g. we can check if there are more than four authors from the same country: */
SELECT country, COUNT(country)
   AS COUNT FROM Author GROUP BY country
   HAVING COUNT(country) >4;

/* It is important to note that the WHERE clause is for the entire result set, but the HAVING clause works only with the GROUP BY clause */
