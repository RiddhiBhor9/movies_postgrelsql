-- 1. Create table
CREATE TABLE movies (
    id SERIAL PRIMARY KEY,
    title VARCHAR(100),
    year INT,
    rating DECIMAL(3,1)

	
);
select * from movies

-- 2. Insert records
INSERT INTO movies (title, year, rating) VALUES
('Inception', 2010, 8.8),
('Avengers Endgame', 2019, 8.4),
('Joker', 2019, 8.5),
('Dune', 2021, 8.0),
('Interstellar', 2014, 8.6);

-- 3. Display all
SELECT * FROM movies;

-- 4. Select specific columns
SELECT title, rating FROM movies;

-- 5. Movies after 2015
SELECT * FROM movies WHERE year > 2015;

-- 6. Average rating
SELECT AVG(rating) FROM movies;

-- 7. Count movies
SELECT COUNT(*) FROM movies;

-- 8. Sort by rating
SELECT * FROM movies ORDER BY rating DESC;

-- 9. Top 3 movies
SELECT * FROM movies ORDER BY rating DESC LIMIT 3;

-- 10. Rating between 7 and 9
SELECT * FROM movies WHERE rating BETWEEN 7 AND 9;

-- 11. Max rating movie
SELECT * FROM movies 
WHERE rating = (SELECT MAX(rating) FROM movies);

-- 12. Movies per year
SELECT year, COUNT(*) 
FROM movies 
GROUP BY year;

-- 13. Years with >2 movies
SELECT year, COUNT(*) 
FROM movies 
GROUP BY year 
HAVING COUNT(*) > 2;

-- 14. Update rating
UPDATE movies 
SET rating = 9.0 
WHERE id = 1;

-- 15. Delete low rating
DELETE FROM movies 
WHERE rating < 5;

-- 16. Import CSV
COPY movies(title, year, rating)
FROM '/path/movies.csv'
DELIMITER ','
CSV HEADER;

-- 17. Find duplicates
SELECT title, COUNT(*)
FROM movies
GROUP BY title
HAVING COUNT(*) > 1;

-- 18. Replace NULL with average
UPDATE movies
SET rating = (SELECT AVG(rating) FROM movies)
WHERE rating IS NULL;

-- 19. Top 5 frequent titles
SELECT title, COUNT(*) 
FROM movies
GROUP BY title
ORDER BY COUNT(*) DESC
LIMIT 5;

-- 20. Create index
CREATE INDEX idx_title ON movies(title);