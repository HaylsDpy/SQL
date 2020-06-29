/* UPDATE general syntax: */

UPDATE[TABLEName]
SET[[ColumnName] = [Value]]
<WHERE[Condition]>

/* Replacing a name in a table: */

UPDATE AUTHOR
SET LASTNAME = KATTA
   FIRSTNAME = LAKSHMI
WHERE AUTHOR_ID = A2

/* To see the result of the update, select all rows again from the author table.
NOTE that if you do not specify the WHERE clause, all the rows in the table will be updated */


/* DELETE general syntax (deleting rows from a table) */

DELETE FROM[TABLEName]
<WHERE[Condition]>

/* Based on the author entity example, we want to delete the rows for AUTHOR_ID A2 and A3 */

DELETE FROM AUTHOR
WHERE AUTHOR_ID IN ('A2', 'A3')

/* NOTE that is no WHERE condition is specified, it will delete all of the rows in the table */
