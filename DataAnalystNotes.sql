-- LETSS GOOO!!
SELECT COUNT (birthdate) AS count_birthdates
FROM people;
-- OUTPUT: Total count of birthdates from people table

SELECT COUNT (*) AS total_records 
FROM people;
-- OUTPUT: Total count total records

-- DISTINT (Remove duplicates to return only unique value)
SELECT DISTINCT language
FROM films;
