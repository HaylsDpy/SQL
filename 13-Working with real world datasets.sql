/* Querying column names with mixed (upper and lower) case.
Retrieve Id comlumn from DOGS table.
Try: */
SELECT id FROM DOGS;
/*(Results in an error as the column is 'Id' in the table and SQL assumes uppercase)

Use double quotes to specify mixed-case column names: */
SELECT "Id" FROM DOGS;

/* Querying column names with spaces and special characters.
By default, spaces are mapped by the database to underscores - parentheses and brackets may also be mapped to underscores.

Using quotes in Jupyter Notebooks - first, assign queries to variables: */
selectQuery = 'SELECT "Id" FROM DOGS'

/* Use a backslash \ as the escape character in cases where the query contains single quotes: */
selectQuery = 'SELECT * FROM DOGS WHERE "Name_of_Dog" = \'Huggy\''

/* Splitting queries to multiple lines in Jupyter.
Use backslash \ to split the query into multiple lines (for improved readability) - Note that splitting SQL code into multiple lines in Jupyter might result in an error. */
%sql SELECT "Id", "Name_of_Dog", \ FROM DOGS\ WHERE "Name_of_Dog" = 'Huggy'

/* Or use SQL magic (%%sql) in the first row of the cell in the notebook. '%%sql' implies that the rest of the code in the cell is to be interpretted by SQL */
%%sql SELECT "Id", "Name_of_dog" FROM DOGS
WHERE "Name_of_Dog" = 'Huggy'


/* Use LIMIT to restrict the number or rows retrieved in the result set */
SELECT * FROM cencus_data LIMIT 3


/* Getting table and column details.
Database systems typically contain system or catalog tables, from where you can query the list of tables and get their properties (syscat is used in IBMs DB2) */
SELECT * FROM syscat.tables /*This returns WAY too many tables */

SELECT TABSCHEMA, TABNAME, CREATE_TIME
FROM syscat.tables
WHERE tabschema = 'ABC1234'

/* Getting table properties (say you've created several tables with similar names, but you want to check which of the tables was the last one you created): */
SELECT TABSCHEMA, TABNAME, CREATE_TIME
FROM syscat.tables
WHERE tabschema = 'YOURSCHEMANAME'

/* Getting a list of columns in the database: */
SELECT * FROM syscat.columns
WHERE tabname = 'DOGS'

/* To obtain specific column properties: */
SELECT DISTINCT(name), coltype, length
FROM sysibm.syscolumns
WHERE tbname = 'DOGS'

/* Real data example: */
%sql select distinct(name), coltype \ from sysibm.syscolumns where tabname = 'CHICAGO_CRIME_DATA'
