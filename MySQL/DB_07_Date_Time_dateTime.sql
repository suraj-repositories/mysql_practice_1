CREATE TABLE Test(
	my_date DATE, 
    my_time TIME, 
    my_datetime DATETIME
);

SELECT * FROM Test;

INSERT INTO Test 					/* there are some build in functions in sql for current date and time*/
VALUES (CURRENT_DATE() , CURRENT_TIME(), NOW());

INSERT INTO Test 					/* YOU can add and decrease the days form current date */
VALUES (CURRENT_DATE() - 1  , NULL, NULL);			-- YESTERDAY

INSERT INTO Test 					/* YOU can add and decrease the days form current date */
VALUES (CURRENT_DATE() - 1  , NULL, NULL);			-- TOMMORROW

DROP TABLE Test;
