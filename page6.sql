USE world;

-- Find country name with most population from table country
SELECT name, Population FROM country
ORDER BY Population DESC
LIMIT 1;

-- Find the second one country with most population from table country
SELECT name, Population FROM country
ORDER BY Population DESC
LIMIT 1 OFFSET 1;

-- atau

SELECT name, Population FROM country
ORDER BY Population DESC
LIMIT 1,1; -- equal to limit 1 offset 1

-- Find country name with lowest population from table country
SELECT name, Population FROM country
ORDER BY Population ASC
LIMIT 1;

-- Find the third one country with lowest population from table country
SELECT name, Population FROM country
ORDER BY Population ASC
LIMIT 1 OFFSET 2;

-- atau

SELECT name, Population FROM country
ORDER BY Population ASC
LIMIT 2,1; -- equal to LIMIT 1 OFFSET 2

-- Find the largest continent by sum surface area with life expectancy more than 75
SELECT Continent, SUM(SurfaceArea) FROM country
WHERE LifeExpectancy > 75
GROUP BY Continent;
