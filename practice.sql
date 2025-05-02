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

-- Alter Table Command (edit the table)🕸️
ALTER TABLE companies
ADD COLUMN website TEXT;

-- Update Set (update specific part in the tables) 🔄
UPDATE companies
SET website = 'x.com'
WHERE id = 1;

UPDATE companies
SET website = 'duolingo.com'
WHERE id = 2;

UPDATE companies
SET website = 'bereal.com'
WHERE id = 3;

UPDATE companies
SET website = 'codedex.io'
WHERE id = 4;

SELECT *
FROM companies;

-- Delete From ➖
DELETE FROM companies
WHERE name = 'BeReal';

-- SAMPLE creation of tables and adding some values:
CREATE TABLE bffs (
  name TEXT,
  birthday TEXT,
  location TEXT,
  note TEXT
);

INSERT INTO bffs (name, birthday, location, note)
VALUES ('Ilana', '1987-04-12', 'Gowanus', 'free-spirited NYU grad, owes me $20');

INSERT INTO bffs (name, birthday, location, note)
VALUES ('Abbi', '1984-02-01', 'Astoria', 'aspiring illustrator, custodian at Solustice');

INSERT INTO bffs (name, birthday, location, note)
VALUES ('Trey', '1982-11-21', 'East Village', 'Soulstice trainer');

INSERT INTO bffs (name, birthday, location, note)
VALUES ('Jaimé', '1985-11-26', 'Gowanus', 'Ilana roommate');

INSERT INTO bffs (name, birthday, location, note)
VALUES ('Lincoln', '1983-02-04', 'Williamsburg', 'Dentist, easygoing');

SELECT * 
FROM bffs;


-- Table creation:
CREATE TABLE celebs (
   id INTEGER, 
   name TEXT, 
   age INTEGER
);

-- Adding rows:
INSERT INTO celebs (id, name, age) 
VALUES (1, 'Justin Bieber', 29); 

INSERT INTO celebs (id, name, age) 
VALUES (2, 'Beyonce Knowles', 42); 

INSERT INTO celebs (id, name, age) 
VALUES (3, 'Jeremy Lin', 35); 

INSERT INTO celebs (id, name, age) 
VALUES (4, 'Taylor Swift', 33); 

-- The ALTER TABLE statement adds a new column to a table:
ALTER TABLE celebs
ADD COLUMN twitter_handle TEXT;


-- UPDATE:
UPDATE celebs 
SET twitter_handle = '@taylorswift13' 
WHERE id = 4; 

SELECT * FROM celebs;

-- DELETE:
DELETE FROM celebs 
WHERE twitter_handle IS NULL;


-- with CONSTRAINTS:
CREATE TABLE awards (
   id INTEGER PRIMARY KEY,
   recipient TEXT NOT NULL,
   award_name TEXT DEFAULT 'Grammy'
);

-- NOTES:
Preview: Docs Loading link description CREATE TABLE creates a new table.
Preview: Docs Loading link description INSERT INTO adds a new row to a table.
Preview: Docs Every SQL query will begin with the SELECT command to fetch data from one or more tables. SELECT queries data from a table.
Preview: Docs Adds, deletes, modifies or changes the data type of a column in a table. ALTER TABLE changes an existing table.
Preview: Docs Loading link description UPDATE
 edits a row in a table.
Preview: Docs Loading link description DELETE FROM deletes rows from a table.