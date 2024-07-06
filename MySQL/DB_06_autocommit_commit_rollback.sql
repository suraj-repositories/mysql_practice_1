SELECT * FROM employees;

SET AUTOCOMMIT = OFF;		/* TO OFF the automatic connecting to the database*/

COMMIT;			/* where you add commit it works as a safe point */

DELETE FROM employees;		/* SILLY MISTEAKE */

SELECT * FROM employees;

ROLLBACK;

SELECT * FROM employees;

DELETE FROM employees;	/*IF I WANT TO DELETE MY TABLE SERIOUSLY I USE THIS */
COMMIT;				/* WITH COMMIT */

SELECT * FROM employees;

SET AUTOCOMMIT = ON;
