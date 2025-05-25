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

-- Find the title and year of films from the 1990 or 1999
SELECT title, release_year
FROM films 
WHERE release_year = 1990 
    OR release_year = 1999;

-- Add a filter to see only English or Spanish-language films
SELECT title, release_year
FROM films
WHERE (release_year = 1990 OR release_year = 1999) 
AND (language = 'English' OR language = 'Spanish');

-- Filter films with more than $2,000,000 gross
SELECT title, release_year
FROM films
WHERE (release_year = 1990 OR release_year = 1999)
AND (language = 'English' OR language = 'Spanish')
AND (gross > 2000000);

-- ACT USING BETWEEN:

-- Select the title and release_year for films released between 1990 and 2000
SELECT title, release_year
FROM films
WHERE release_year
    BETWEEN 1990 AND 2000;

-- Narrow down your query to films with budgets > $100 million
SELECT title, release_year
FROM films
WHERE (release_year BETWEEN 1990 AND 2000)
    AND (budget > 100000000);

-- Restrict the query to only Spanish-language films
SELECT title, release_year
FROM films
WHERE release_year BETWEEN 1990 AND 2000
	AND budget > 100000000
	AND language = 'Spanish';

-- Amend the query to include Spanish or French-language films
SELECT title, release_year
FROM films
WHERE release_year BETWEEN 1990 AND 2000
	AND budget > 100000000
	AND (language = 'Spanish' OR language = 'French');

-- LIKE OPERATOR
SELECT name 
FROM people
WHERE name LIKE 'Ade%';
-- Matches the name that start with 'Ade'
-- '%' match 0-Many characters
-- '_' match a single chatacter

-- NOT LIKE OPERATOR:
SELECT name
FROM people 
WHERE name NOT LIKE 'A.%';
-- find record for people who are not have 'A.' in the first name (CASE SENSITIVE)

-- WILD CARD CAN POSITION EVERYWHERE
SELECT name 
FROM people
WHERE name LIKE '%r';
-- Find records where name ends with 'r'

SELECT name 
FROM people
WHERE name LIKE '__t%';
-- Finds record where third character is 't'

-- IN operator:
SELECT title 
FROM films
WHERE release_year IN (1920, 1930, 1940);
-- make it easier to set numerous OR conditions

SELECT title
FROM films
WHERE country IN ('Germany', 'France');
-- Output title where country is associated either Germany or France

-- ACT (LIKE and NOT lIKE):

-- Select the names that start with B
SELECT name
FROM people
WHERE name LIKE 'B%';

-- Select the names that have r as the second letter
SELECT name
FROM people
WHERE name LIKE '_r%';

-- Select names that don't start with A
SELECT name
FROM people
WHERE name NOT LIKE 'A%';

-- ACT (WHERE IN):
-- Find the title and release_year for all films over two hours in length released in 1990 and 2000
SELECT title, release_year
FROM films
WHERE duration > 120 
    AND release_year IN (1990, 2000);

-- Find the title and language of all films in English, Spanish, and French
SELECT title, language
FROM films
WHERE language IN ('English', 'Spanish', 'French');

-- Find the title, certification, and language all films certified NC-17 or R that are in English, Italian, or Greek
SELECT title, certification, language
FROM films
WHERE certification IN ('NC-17', 'R')
    AND language IN ('English', 'Greek', 'Italian');

-- Count the unique titles
SELECT COUNT(DISTINCT title) AS nineties_english_films_for_teens
FROM films
-- Filter to release_years to between 1990 and 1999
WHERE (release_year
	BETWEEN 1990 AND 1999)
-- Filter to English-language films
	AND (language = 'English')
-- Narrow it down to G, PG, and PG-13 certifications
	AND certification IN ('G', 'PG', 'PG-13');

-- ACT: (NULL)

-- List all film titles with missing budgets
SELECT title AS no_budget_info
FROM films
WHERE budget IS NULL;

-- Count the number of films we have language data for
SELECT COUNT(language) AS count_language_known
FROM films
WHERE language IS NOT NULL;

-- AGGREGATE FUNCTIONS: AVG, SUM, MIN, MAX, COUNT

-- MIN <-> MAX (Non-numerical Data)
-- Lowest <-> Highest
-- A <-> Z
-- 1600 <-> 2025 (DATE)
-- 0 <-> 100

-- ACT: (AGGREGATE FUNCTION)
-- Query the sum of film durations
SELECT SUM(duration) AS total_duration
FROM films;

-- Query the sum of film durations
SELECT SUM(duration) AS total_duration
FROM films;

-- Find the latest release_year
SELECT MAX(release_year) AS latest_year
FROM films;

-- Find the duration of the shortest film
SELECT MIN(duration) AS shortest_film
FROm films;















