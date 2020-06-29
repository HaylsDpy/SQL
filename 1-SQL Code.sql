/* Example table creation */

CREATE TABLE author
   (author_id CHAR(2) CONSTRAINT AUTHOR_PK PRIMARY KEY (author_id) NOT NULL,
   lastname VARCHAR(15) NOT NULL,
   firstname VARCHAR(15) NOT NULL,
   email VARCHAR(40),
   city VARCHAR(15),
   country CHAR(2),
   )


/* Examples to CREATE and DROP tables
# General syntax to create a table: */

create table TABLENAME(
   COLUMN1 datatype,
   COLUMN2 datatype,
   COLUMN3 datatype,
   ...
   );

/* To create a table called TEST with 2 columns - ID of type integer and NAME of type varchar: */

create table TEST(
   ID integer,
   NAME varchar(30)
   );

/* Create table called COUNTRY with an ID column, a two letter country code column and a variable length country name column: */

create table COUNTRY(
   ID int,
   CCODE char(2),
   NAME varchar(60)
   );

/* Sometimes you may see additional keywords in a create table statement:
In this example, the ID column has the 'NOT NULL' constraint after the datatype - meaning that it cannot contain a NULL or an empty value.
Also note that we are using ID as a Primary KEy, and the database does not allow Primary Keys to have null values.
A Primary Key is a unique identifier in a table, and using Primary Keys can help speed up your queries significantly. */

create table COUNTRY(
   ID int NOT NULL,
   CCODE char(2),
   NAME varchar(60),
   PRIMARY KEY(ID)
   );

/* If the table you are trying to create already exists in the database, you will get an error indicating "table XXXYYY already exists"
To circumvent this error, either create a table with a different name or first DROP the existing table: */

drop table COUNTRY;
create table COUNTRY(
   ID integer PRIMARY KEY NOT NULL,
   CCODE char(2),
   NAME varchar(60)
   );

/* WARNING: before dropping a table, ensure it doesn;t contain important data that can't be recovered easily */
