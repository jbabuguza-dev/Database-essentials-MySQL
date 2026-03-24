USE world;
-- Geef de code, de naam, de region (region) en staatshoofd (headofstate) van alle landen in de Caribbean en Western Europe regios, waarvoor het staatshoofd een II heeft op het einde van haar/zijn naam. Vb Albert II maar niet Albert III.
SELECT Code, Name, Region, HeadOfState
FROM country
WHERE Region IN ('Caribbean', 'Western Europe') AND HeadOfState LIKE '% II' AND HeadOfState NOT LIKE '% III';

-- Wat is de populatie van de kleinste Belgische stad (countrycode is BEL) die geen ‘o’ in de naam heeft?
SELECT min(Population)
FROM city
WHERE CountryCode IN ('BEL') AND Name Like '%o%'
GROUP BY CountryCode;

-- de laatse vraag ik was kwijt bij de like commando hier is de conclutie dat ik heb gevraagd aan Claude.AI:
SELECT Name, Population, CountryCode
FROM city
WHERE CountryCode = 'BEL'
  AND Name NOT LIKE '%o%'
  AND Name NOT LIKE '%O%'
ORDER BY Population ASC
LIMIT 1;