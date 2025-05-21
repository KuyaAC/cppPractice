-- LETSS GOOO!!
SELECT COUNT (birthdate) AS count_birthdates
FROM people;
-- OUTPUT: Total count of birthdates from people table

SELECT COUNT (*) AS total_records 
FROM people;
-- OUTPUT: Total count total records

SELECT COUNT(birthdate) AS count_birthdate -- Count the number of birthdates in the people table
FROM people;

SELECT COUNT(language) AS count_language, COUNT(country) AS count_countries
-- Count the records for languages and countries represented in the films table
FROM films;

-- DISTINT (Remove duplicates to return only unique value)
SELECT DISTINCT language
FROM films;

-- COUNT DISTINCT
SELECT COUNT(DISTINCT country) AS count_distinct_countries
FROM films;

-- BASIC COMMON ERROR
Spelling ERROR
Syntax ERROR
Keyword ERROR

-- Best practice: Capetalize the KEYWORDS, Use newline for better readability, and use semi-colon to end the query.
SELECT person_id, role 
FROM roles 
LIMIT 10;






