/* Data set = simplified library database model: check the names of people whoe have borrowed a book.

JOIN: combines thw rows from two or more tables.

INNER JOIN: most popular JOIN method, displays matches only; only data that matches the inner join criteria*/
SELECT B.BORROWER_ID, B.LASTNAME, B.COUNTRY, L.BORROWER_ID, L.LOAN_DATE
FROM BORROWER B INNER JOIN LOAN L ON B.BORROWER_ID = L.BORROWER_ID;

/* Joining 3 tables: */
SELECT B.LASTNAME, L.COPY_ID, C.STATUS FROM BORROWER B
INNER JOIN LOAN L ON B BORROWER_ID = L.BORROWER_ID
INNER JOIN COPY C ON L COPY_ID = C COPY;

/* LEFT OUTER JOIN: all rows from the left table and any matching rows from the right table */
SELECT B.BORROWER_ID, B.LASTNAME, B.COUNTRY, L.BORROWER_ID, L.LOAN_DATE
FROM BORROWER B LEFT JOIN LOAN L ON B.BORROWER_ID = L.BORROWER_ID;

/* RIGHT OUTER JOIN: all rows from the right table and any matching rows from the left table */
SELECT B.BORROWER_ID, B.LASTNAME, B.COUNTRY, L.BORROWER_ID, L.LOAN_DATE
FROM BORROWER B RIGHT JOIN LOAN L ON B.BORROWER_ID = L.BORROWER_ID;

/* FULL OUTER JOIN: all rows from both tables are combined */
SELECT B.BORROWER_ID, B.LASTNAME, B.COUNTRY, L.BORROWER_ID, L.LOAN_DATE
FROM BORROWER B FULL JOIN LOAN L ON B.BORROWER_ID = L.BORROWER_ID;
