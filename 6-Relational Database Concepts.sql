/* A relation (or a table) is made up of two parts: a relational schema and a relational instance.
A relational schema specifies the name of a relation and the attributes (name and type of each column) */

AUTHOR (Author_ID: char, lastname: varchar, fistname: varchar, email: varchar, city: varchar, country: char);

/* Create schema: a SQl schema is identified by a chema name and includes an authorisation identifier to indicate the uder or account who owns the schema.
Schema elements include tables, constraints, views, domains and other constraints that describe the schema. */

CREATE SCHEMA LIBRARY AUTHORISATION 'Robert';

/* Data types used can be: numeric, character-string, bit-string, boolean, DATE, timestamp etc.

CREATE TABLE Statement:
Inlcudes the clauses: DEFAULT and CHECK.
DEFAULT is used to specify the default value for the database server to insert into a column when no explicit value for the column is specified.

CHECK is used to designate conditions that must be met before data can be assigned to a columns during an INSERT or UPDATE statement.
If, during an INSERT or UPDATE, the CHECK constraint of a row evaluates to false, the database returns an error.
  The database does not return an error if a row evaluates to NULL for a CHECK constraint.
In some cases, you might want to use both a CHECK and a NOT NULL constraint*/


/* SELECT Statement:
3 clauses - SELECT, FROM and WHERE. */

SELECT[test expression]
WHEN[expression1]
...
(action)
...
WHEN[expression2]
WHEN[expression3]
...
[OTHERWISE]
...
(action)
...
END
