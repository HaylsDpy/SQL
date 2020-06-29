/* Based on the author entity example, we created the table using the entity name 'author' and the entity attributes as the columns of the table.
Now we will add the data to the table by adding rows: */

INSERT INTO AUTHOR
   (AUTHOR_ID, LASTNAME, FIRSTNAME, EMAIL, CITY, COUNTRY
   )
VALUES
   ('A1', 'CHONG', 'RAUL', 'RFC@IBM.COM', 'TORONTO', 'CA')

/* Inserting multiple rows:
Tables do not need to be populated row by row: mutliple rows can be inserted by specifying each row in the 'values' clause: */

INSERT INTO AUTHOR
   (AUTHOR_ID, LASTNAME, FIRSTNAME, EMAIL, CITY, COUNTRY)
VALUES
   ('A1', 'CHONG', 'RAUL', 'RFC@IBM.COM', 'TORONTO', 'CA')
   ('A2', 'AHUJA', 'RAV', 'RA@IBM.COM', 'TORONTO', 'CA')
