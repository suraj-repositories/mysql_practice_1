CREATE DATABASE myDB;

USE myDB;		

ALTER DATABASE myDB READ ONLY = 1;		/* to set the database in read only mode*/

ALTER DATABASE myDB READ ONLY = 0;		/* To remove read only mode */

FLUSH TABLES WITH READ LOCK;	/* use this to conflicting read only mode*/
SET global read_only  = 1;

SET GLOBAL read_only = 0;		/* use this to remove read only mode */
UNLOCK TABLES;

DROP DATABASE mydb;
