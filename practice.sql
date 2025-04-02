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



