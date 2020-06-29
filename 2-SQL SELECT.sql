/* Comparison operators:
Equal to: =
Greater than: >
Lesser than: <
Greater than or equal to: >=
Less than or equal to: <=
Not equal to : <>

General syntax of SELECT statement: */

select COLUMN1, COULMN2...from TABLE1;

/* TO retrieve a list of all country names and their IDs from the COUNTRY table, we would issue: */

select ID, NAME from COUNTRY;

/* TO retrieve all columns from the COUNTRY table, we would use '*' instead of specifying individual column names: */

select * from COUNTRY;

/* The WHERE clause can be added to your query to filter results or get specific rows of data. To retrieve data for all rows in the COUNTRY table where the ID is less than 5: */

select * from COUNTRY where ID <5;

/* In case of character based columns the values of the predicated in the WHERE clause need to be enclosed in single quotes.
TO retrieve the data for the country with the country code 'CA' we would issue: */

select * from COUNTRY where CCODE = 'CA';
