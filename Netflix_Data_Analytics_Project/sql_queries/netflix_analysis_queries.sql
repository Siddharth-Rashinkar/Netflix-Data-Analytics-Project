CREATE DATABASE netflix_project
USE netflix_project;
CREATE TABLE netflix (
    show_id VARCHAR(10),
    type VARCHAR(20),
    title VARCHAR(255),
    director TEXT,
    cast TEXT,
    country TEXT,
    date_added DATE,
    release_year INT,
    rating VARCHAR(20),
    duration VARCHAR(20),
    listed_in TEXT,
    description TEXT,
    year_added INT,
    month_added INT,
    day_added INT
);

SELECT * FROM netflix;
SELECT * FROM netflix
LIMIT 10;

SELECT COUNT(*) FROM netflix;


SELECT type, COUNT(*) AS total_content
FROM netflix
GROUP BY type;

SELECT country, COUNT(*) AS total_content
FROM netflix
GROUP BY country
ORDER BY total_content DESC
LIMIT 10;

SELECT rating, COUNT(*) AS total
FROM netflix
GROUP BY rating
ORDER BY total DESC;


SELECT year_added, COUNT(*) AS total_content
FROM netflix
GROUP BY year_added
ORDER BY year_added;

SELECT director, COUNT(*) AS total_content
FROM netflix
GROUP BY director
ORDER BY total_content DESC
LIMIT 10;



SELECT title, release_year
FROM netflix
WHERE release_year > 2020;


SELECT title, country
FROM netflix
WHERE country LIKE '%India%';


SELECT *
FROM netflix
WHERE type = 'Movie';


SELECT *
FROM netflix
WHERE type = 'TV Show';


SELECT title, release_year
FROM netflix
ORDER BY release_year DESC
LIMIT 10;

SELECT release_year, COUNT(*) AS total_content
FROM netflix
GROUP BY release_year
ORDER BY release_year;

SELECT release_year, COUNT(*) AS total_content
FROM netflix
GROUP BY release_year
ORDER BY total_content DESC
LIMIT 5;


SELECT type, COUNT(*) AS total
FROM netflix
GROUP BY type;