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

-- USING WHERE WITH AGGREGATE FUNCTIONS:

-- ROUND(number_to_round, decimal_places)
SELECT ROUND(AVG(budget), 2) AS avg_budget
FROM films
WHERE release_year = 2010;

-- Calculate the sum of gross from the year 2000 or later
SELECT SUM(gross) AS total_gross
FROM films
WHERE release_year >= 2000;

-- Calculate the average gross of films that start with A
SELECT AVG(gross) AS avg_gross_A
FROM films
WHERE title LIKE 'A%';

-- Calculate the lowest gross film in 1994
SELECT MIN(gross) AS lowest_gross
FROM films
WHERE release_year = 1994;

-- Calculate the highest gross film released between 2000-2012
SELECT MAX(gross) AS highest_gross
FROM films
WHERE release_year BETWEEN 2000 AND 2012;

-- Round the average number of facebook_likes to one decimal place
SELECT ROUND(AVG(facebook_likes), 1) AS avg_facebook_likes
FROM reviews;

-- Calculate the average budget rounded to the thousands
SELECT ROUND(AVG(budget), -3) AS avg_budget_thousands
FROM films;

-- ARITHMETIC ALIASING
-- PERFORM ARITHMETIC IN A HORIZONTAL WAY
SELECT (gross - budget) AS profit
FROM films;

-- ORDER OF EXECUTION: FROM > WHERE > SELECT > ORDER BY > LIMIT

-- Calculate the title and duration_hours from films
SELECT title, (duration/60.0) AS duration_hours
FROM films;

-- Calculate the percentage of people who are no longer alive
SELECT COUNT(deathdate) * 100.0 / COUNT(*) AS percentage_dead
FROM people;

-- Find the number of decades in the films table
SELECT (MAX(release_year) - MIN(release_year)) / 10.0 AS number_of_decades
FROM films;

-- Round duration_hours to two decimal places
SELECT title, ROUND((duration / 60.0), 2) AS duration_hours
FROM films;

-- ORDER BY
SELECT title, budget
FROM films
ORDER BY budget ASC; 
-- ASC = ascending order
-- DESC = descending order


-- SAMPLE:
SELECT title, budget
FROM films
WHERE budget IS NOT NULL
ORDER BY budget DESC;

SELECT title, wins, imdb_score
FROM best_movies
ORDER BY wins DESC, imdb_score DESC;

-- Select name from people and sort alphabetically
SELECT name 
FROM people
ORDER BY name ASC;

-- Select the title and duration from longest to shortest film
SELECT title, duration
FROM films
ORDER BY duration DESC;

-- GROUP BY:
SELECT certification, COUNT(title) AS title_count
FROM films
GROUP BY certification;

SELECT certification, COUNT(title) AS title_count
FROM films
GROUP BY certification
ORDER BY title_count DESC;

-- ACT:
-- Find the release_year and film_count of each year
SELECT release_year, COUNT(title) AS film_count
FROM films
GROUP BY release_year;

-- Find the release_year and average duration of films for each year
SELECT release_year, AVG(duration) AS avg_duration
FROM films
GROUP BY release_year;

-- Find the release_year, country, and max_budget, then group and order by release_year and country
SELECT release_year, country, MAX(budget) AS max_budget
FROM films
GROUP BY release_year, country;

-- Find release year most unique language films
SELECT release_year, COUNT(DISTINCT(language)) AS unique_lang_no
FROM films
GROUP BY release_year;

-- HAVING: This query shows only yeas in which more than ten films were released.
-- WHERE filters individual records while HAVING filters grouped records.
SELECT 
    release_year,
    COUNT(title) AS title_count
FROM films
GROUP BY release_year
HAVING COUNT(title) > 10;

-- In what years was the average film furation over two hours?
SELECT release_year
FROM films
GROUP BY release_year
HAVING AVG(duration) > 120;

-- Select the country and distinct count of certification as certification_count
SELECT country, COUNT(DISTINCT(certification)) AS certification_count
FROM films
-- Group by country
GROUP BY country
-- Filter results to countries with more than 10 different certifications
HAVING COUNT(DISTINCT(certification)) > 10;

-- Select the country and average_budget from films
SELECT country, AVG(budget) AS average_budget
FROM films
-- Group by country
GROUP BY country
-- Filter to countries with an average_budget of more than one billion
HAVING AVG(budget) > 1000000000
-- Order by descending order of the aggregated budget
ORDER BY average_budget DESC;

-- Select the release_year for films released after 1990 grouped by year
SELECT release_year 
FROM films
GROUP BY release_year
HAVING release_year > 1990;

-- Modify the query to also list the average budget and average gross
SELECT release_year, AVG(budget) AS avg_budget, AVG(gross) AS avg_gross
FROM films
WHERE release_year > 1990
GROUP BY release_year;

SELECT release_year, AVG(budget) AS avg_budget, AVG(gross) AS avg_gross
FROM films
WHERE release_year > 1990
GROUP BY release_year
-- Modify the query to see only years with an avg_budget of more than 60 million
HAVING AVG(budget) > 60000000;

SELECT release_year, AVG(budget) AS avg_budget, AVG(gross) AS avg_gross
FROM films
WHERE release_year > 1990
GROUP BY release_year
HAVING AVG(budget) > 60000000
-- Order the results from highest to lowest average gross and limit to one
ORDER BY avg_gross DESC
LIMIT 1;

-- INNER JOINS:
SELECT column_names
FROM table1
INNER JOIN table2
ON table1.common_field = table2.common_field;

-- Select fields with aliases
SELECT c.code AS country_code, name, year, inflation_rate
FROM countries AS c
-- Join to economies (alias e)
INNER JOIN economies AS e
-- Match on code field using table aliases
ON c.code = e.code;

SELECT c.name AS country, l.name AS language, official
FROM countries AS c
INNER JOIN languages AS l
-- Match using the code column
USING(code);

-- ACT:
-- Select country and language names (aliased)
SELECT c.name AS country, l.name AS language
-- From countries (aliased)
FROM countries AS c
-- Join to languages (aliased)
INNER JOIN languages AS l
-- Use code as the joining field with the USING keyword
USING(code);


-- Select country and language name (aliased)
SELECT c.name AS country, l.name AS language
-- From countries (aliased)
FROM countries AS c
-- Join to languages (aliased)
INNER JOIN languages AS l
-- Use code as the joining field with the USING keyword
USING(code)
-- Filter for the Bhojpuri language
WHERE l.name = 'Bhojpuri';

-- CHAINING JOINS
SELECT 
    p1.country,
    p1.continent,
    president,
    prime_minister,
    pm_start
FROM prime_minister as p1
INNER JOIN presidents as p2
USING(country)
INNER JOIN prime_minister_terms as p3
USING(prime_minister);


-- Select relevant fields
SELECT c.name, p.fertility_rate
-- Inner join countries and populations, aliased, on code
FROM countries AS c
INNER JOIN populations AS p
ON c.code = p.country_code;

-- Select fields
SELECT name, e.year, fertility_rate, e.unemployment_rate
FROM countries AS c
INNER JOIN populations AS p
ON c.code = p.country_code
-- Join to economies (as e)
INNER JOIN economies AS e
-- Match on country code
USING(code);
























