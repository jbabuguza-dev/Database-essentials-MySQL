-- De volgende query berekent de bevolkingsdichtheid voor ieder land
USE Worlddb;
SELECT population/SurfaceArea as dichtheid,country.*
FROM country;

-- In welke regions is de gemiddelde bevolkingsdichtheid groter dan de gemiddelde bevolkingsdichtheid van de region ‘Middle East’?

SELECT Region, AVG(Population / SurfaceArea) AS gemiddelde_bevolkingsdichtheid
FROM country
GROUP BY region
HAVING AVG(Population / SurfaceArea);

