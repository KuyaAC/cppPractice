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

-- NOTE: If the column name is with space like (facebook like) you can call the column using "facebook like"(quotation)


-- Filtering queries: (using WHERE and comparison oeprators) '<>' is not equal to operator
SELECT title
FROM films
WHERE release_year < 1960;

SELECT film_id, imdb_score
FROM reviews 
WHERE imdb_score > 7.0;

SELECT film_id, facebook_likes
FROM reviews
WHERE facebook_likes < 1000
LIMIT 10;

-- Count the records with at least 100,000 votes
SELECT COUNT(num_votes) AS films_over_100K_votes
FROM reviews
WHERE num_votes >= 100000;

-- Count the Spanish-language films
SELECT COUNT(language) AS count_spanish
FROM films
WHERE language = 'Spanish';

-- MULTIPLE CRITERIA (OR, AND, BETWEEN)
-- OR operator need to satisfy either of the criteria
SELECT title 
FROM films
WHERE release_year = 1994
    OR release_year = 2000;
-- The output is films release

-- AND operator need to satisfy all the criteria
SELECT title 
FROM films
WHERE release_year >= 1994
    AND release_year <= 2000;
-- Can also be using BETWEEN, AND
SELECT title
FROM films
WHERE release_year
    BETWEEN 1994 AND 2000;
-- The ouput is film releas between 1994 and 2000

-- AND and OR combination
SELECT title
FROM films
WHERE (release_year = 1994 OR release_year = 1995)
    AND (certification = 'PG' OR certification = 'R');
-- Filter films released in 1994 or 1995, and certified PG or R

-- ACT:
-- Select the title and release_year for all German-language films released before 2000
SELECT title, release_year
FROM films
WHERE language = 'German'
    AND release_year <= 2000;

-- Select all records for German-language films released after 2000 and before 2010
SELECT * 
FROM films
WHERE (language = 'German')
    AND (release_year > 2000 AND release_year < 2010);











