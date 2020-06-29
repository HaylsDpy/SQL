/* COUNT is a built in function that retrieves the number of rows matching the query criteria.
Number of rows in a table: */

select COUNT(*) from tablename

/* Rows in the MEDALS table where COUNTRY is Canada: */

select COUNT(COUNTRY) from MEDALS
   where COUNTRY = 'CANADA'


/* DISTINCT is used to remove dupilacte values from a results set.
Retrieve unique values in a column: */

select DISTINCT columnname from tablename

/* List of unique countries that received GOLD medals: */

select DISTINCT COUNTRY from MEDALS
   where MEDALTYPE = 'GOLD'


/* LIMIT is used for restricting the number of rows retrieved from the database.
Retrieve just the first 10 rows in a table: */

select * from tablename LIMIT 10

/* Retrieve 5 rows in the MEDALS table for a particular year: */

select * from MEDALS
   where YEAR = 2018 LIMIT 5
