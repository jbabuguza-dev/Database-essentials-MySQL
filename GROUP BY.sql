-- OEFENINFEN VAN DE PPT HIER ONDER

-- GEEF voor elk lande het aantal steden terug. Ook landen die geen steden hebben.
SELECT Country.Code, count(city.id)
FROM city RIGHT JOIN country ON country.code = CountryCode
GROUP BY country.code;

-- Geef voor elk continent (we willen alle continent zien) het aantal talen dat er gesproken worden. 
SELECT continent, count(DISTINCT Language)
FROM country LEFT JOIN countrylanguage ON countrycode = country.code
GROUP BY country.Continent;

-- OEFENINGEN JOIN

-- 2. Geef alle landsnamen gecombineerd met de gesproken talen in deze landen. Wanneer er geen taal in een land gesproken wordt toon dan null.
SELECT country.name, Language
FROM country LEFT JOIN countrylanguage ON country.code = countrycode;

-- 4. Schrijf een query die per land het aantal districten weergeeft. Geef ook de naam van het land
SELECT country.Name, COUNT(DISTINCT District) AS aantal_districten
FROM country LEFT JOIN city ON country.Code = city.CountryCode
GROUP BY country.code, country.Name;

-- 7. Geef alle landen met hun hoofdstad terug. Landen zonder hoofdstad krijgen een null waarde als hoofdstad.
SELECT country.Name AS Land, city.Name AS Hoofdstad
FROM country LEFT JOIN city ON country.Capital = city.ID;

-- 33. Geef per hoofdstad het aantal talen dat er gesproken wordt. Ook wanneer een land geen hoofdstad heeft, willen we wel dat het aantal talen vermeld wordt, zelfs als is de hoofdstuk NULL. Sorteer aflopend op het aantal talen.
SELECT country.Name AS Land, city.Name AS Hoofdstad, count(countrylanguage.Language) AS AantalTalen
FROM country
LEFT JOIN city ON country.Capital = city.ID LEFT JOIN countrylanguage ON country.Code = countrylanguage.CountryCode
GROUP BY country.Code,country.Name, city.Name
ORDER BY AantalTalen DESC;
