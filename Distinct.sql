-- DISTINCT

-- #1 Geef een lijst van alle verschillende talen die over de landen heen gesproken worden.
SELECT DISTINCT Language
FROM countrylanguage;

-- #2 Geef een lijst van alle verschillende continenten.
SELECT DISTINCT Continent
FROM country;

-- #3 Geef een lijst van alle verschillende leiders.
SELECT DISTINCT HeadOfState
FROM country; 
