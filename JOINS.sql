SELECT *
FROM regions JOIN countries ON regions.region_id= countries.region_id 
 JOIN locations  ON countries.country_id = locations.country_id 
 JOIN departments ON locations.LOCATION_ID = departments.LOCATION_ID;

-- Geef alle landsnamen gecombineerd met de gesproken talen in deze landen.
SELECT name, language
FROM countryLanguage JOIN country ON coutry.Code = countrylanguage.CountryCode;

-- 8. Geef alle landen met hun hoofdstad waarvoor er een hoofdstad in de database zit.
SELECT hoofdstad.Name AS Hoofdstadnaam, country.*
FROM country JOIN city AS hoofdstad ON country.Capital = hoofdstad.id;

-- 12. Geef de 48 landen welke een stad hebben die meer inwoners bevat dan hun hoofdstad.
SELECT DISTINCT country.code, country.name
FROM country JOIN city ON  city.CountryCode= country.Code JOIN city AS hoofdstad ON hoofdstad.id= country.Capital
WHERE hoofdstad.population < city.population;

-- 3. Schrijf een query die per stad weergeeft hoeveel percent van de bevolking van het land er woont.
SELECT *	
FROM country;
-- 4. Schrijf een query die per land het aantal districten weergeeft. Geef ook de naam van het land.

-- 44. Geef een lijst van afdelingen en het hoogste salaris in die afdeling.