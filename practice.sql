-- Show all the DB from shows
SELECT * FROM shows; 

-- For specific Columns
SELECT id, name, genre
FROM shows;

-- DISTINCT for uniqueness (walang paulit ulit)
SELECT DISTINCT genre
FROM shows;

-- WHERE is like a condition where if met it shows the output.
SELECT * FROM shows
WHERE tomatometer < 60;

-- LIKE is like a search on SQL
-- A% matches values that begin with letter 'A'.
-- %z matches values that end with 'z
-- or can also use the %the% that searches all the words with the like "THEir"
SELECT * 
FROM shows 
WHERE genre LIKE '%com%';

-- Between is like a range
SELECT * FROM shows
WHERE year 
BETWEEN 1999 AND 2024;

-- ORDER by ASCENDING OR DESCENDING ORDER
SELECT name, genre, stream, tomatometer
FROM shows
ORDER BY tomatometer DESC;

-- RECAP:
-- SELECT selects data FROM a database.
-- SELECT * selects all the columns.
-- DISTINCT returns unique values in a column.
-- WHERE filters results based on a condition.
-- Comparison operators: =, !=, >, <, >=, <=.
-- LIKE operator searches for a specific pattern.
-- BETWEEN operator matches values in a range.
-- ORDER BY sorts data (ascending/descending).

-- Aggregate Function:
-- COUNT(): returns the number of rows.
-- MAX(): returns the largest value in a column.
-- MIN(): returns the smallest value in a column.
-- SUM(): returns the total sum in a column.
-- AVG(): returns the average value in a column.

-- SAMPLE:
SELECT COUNT(*) FROM playlist; 
-- It output number of rows in the table

SELECT title, artist, MAX(year) FROM playlist;
-- output upmost number of year (MAX)

SELECT SUM(duration)
FROM playlist;
-- sum the total duration in the playlist

SELECT AVG(duration) FROM playlist;
-- Using the average function


-- AGGREGATION + GROUP BY:
SELECT artist, AVG(plays) 
-- Make a 2 column ouput
FROM playlist
GROUP BY artist;

-- Putting it together samples:
SELECT title, year, MAX(players)
FROM games;

SELECT language, COUNT(*)
FROM games
GROUP BY language;

SELECT genre, AVG(metascore)
FROM games
GROUP BY genre;

-- Create a Table
CREATE TABLE companies (
  id INTEGER,
  name TEXT,
  headquarters TEXT,
  year INTEGER
);

-- Insert Into ➕
INSERT INTO companies (id, name, headquarters, year)
VALUES (1, 'Twitter', 'San Francisco 🌁', 2006);

INSERT INTO companies (id, name, headquarters, year)
VALUES (2, 'Duolingo', 'Pittsburgh 🐝', 2011);

INSERT INTO companies (id, name, headquarters, year)
VALUES (3, 'BeReal', 'Paris 🇫🇷', 2020);

INSERT INTO companies (id, name, headquarters, year)
VALUES (4, 'Codedex', 'New York 🗽', 2022);


