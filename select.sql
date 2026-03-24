USE worlddb;

-- nummer 1 Geef de volledige lijst met alle kolommen van de city tabel.
SELECT *
FROM city;

-- nummmer 2 Geef de volledige tabel country terug.
SELECT *
FROM country;

-- nummer 3 Geef de volledige tabel countryLanguage terug.
SELECT *
FROM countryLanguage;

-- nummer 4 Geef een lijst van alle steden.
SELECT *
FROM city;

-- nummer 5 Geef een lijst van alle landen met hun bijhorende oppervlakte
SELECT SurfaceArea
FROM country;

-- nummer 6 Geef een lijst van alle namen van de landen met hun hoofdstad en continent (er is geen hoofdstad file)
SELECT Name, Continent
FROM country;

-- nummer 7  Geef een lijst van alle talen en door hoeveel percent een taal gesproken wordt binnen een land.
SELECT Language, Percentage
FROM countrylanguage;

-- nummer 8 Geef de namen van alle steden met hun populatie.
SELECT Name, Population
FROM city;

-- nummer 9 Geef de namen van alle steden en hun landcode.
SELECT 
    Name, CountryCode
FROM
    city;

-- nummer 10 Geef alle landcodes.
SELECT 
    Code, Code2
FROM
    country;


-- ORDER BY

-- nummer 1 Geef alle steden data alfabetisch gesorteerd op naam.
SELECT *
FROM country
ORDER BY Name ASC;

-- nummer 2 Geef alle landen data omgekeerd alfabetisch gesorteerd op naam.
SELECT *
FROM country
ORDER BY Name DESC;

-- nummer 3 Geef alle talen gesorteerd op alfabet.
SELECT *
FROM countrylanguage
ORDER BY Language ASC;

-- nummer 4 Geef een lijst van de namen van alle landen met hun populatie die gesorteerd is van klein naar groot.
SELECT *
FROM country
ORDER BY Population ASC;

-- nummer 5 Geef een lijst van alle landen met hun oppervlakte gesorteerd van groot naar klein.
SELECT *
FROM country
ORDER BY SurfaceArea DESC;

-- nummer 6 Geef een lijst van alle talen me hun bijhorende percentages, alfabetisch gesorteerd. Wanneer 1 taal meerdere keren voorkomt sorteer dan op percentage aflopend.
SELECT *
FROM countrylanguage
ORDER BY Language ASC, Percentage DESC;

-- nummer 7. Geef een lijst van de namen alle steden met bijhorende districten en populatie, gesorteerd per district en op populatie aflopend.
SELECT Name, District, Population
FROM city
ORDER BY District ASC, Population DESC;

-- nummer 8. Geef een lijst van alle landen gesorteerd op populatie.
SELECT Name, Population 
FROM country 
ORDER BY Population;

-- nummer 9. Geef een lijst van alle landen gesorteerd volgens continent.
SELECT Name, Continent
FROM country
ORDER BY Continent ASC, Name ASC; 

-- nummer 10. Geef een lijst van alle steden gesorteerd per district en oplopende populatie.
SELECT District, Population
FROM city
ORDER BY District ASC, Population ASC;