USE employeesdb;
-- Geef alle data van jobs waarbij het minimum salaris meer dan 5000 euro is.
SELECT * 
FROM jobs
WHERE MIN_SALARY > 5000;

-- Geef de First en de Lastname van de employees met een Salaris kleiner dan 10000.
SELECT FIRST_NAME, LAST_NAME
FROM employees
WHERE SALARY < 10000;

-- Geef de departement die 'Accouonting' als baam hebben.
SELECT * 
FROM departments
WHERE DEPARTMENT_NAME = 'Accounting';

-- Oefeningen Where
-- #1. Schrijf een query die alle landen data terug geeft voor de landen gelegen in Oceanië
SELECT *
FROM country
WHERE Continent = 'oceania';

-- #2. Geef alle data terug van de steden gelegen in België. (CountryCode is 'bel').
USE worlddb;
SELECT Name 
FROM country
WHERE Code = 'bel';

-- #3. Geef alle landcodes en talen weer waarvoor de taal een officiële taal is binnen het land.
SELECT Language, CountryCode, IsOfficial
FROM countrylanguage
WHERE IsOfficial = 'T' ;

-- #4 Geef alle talen terug die in België gesproken worden geordend van meest gesproken naar minst gesproken.
SELECT Language
FROM countrylanguage
WHERE CountryCode = 'bel'
ORDER BY Percentage DESC;

-- #5 Geef alle noord Amerikaanse landen terug gesorteerd volgens landoppervlakte (klein naar groot)
SELECT Name
FROM country
WHERE Continent = 'North America'
ORDER BY SurfaceArea ASC;

-- #6 Geef alle steden terug die een populatie kleiner dan 1000 hebben
SELECT * 
FROM city
WHERE Population < 1000;

-- #7 Geef alle landen terug met een levensverwachting groter dan 1000 hebben
SELECT * 
FROM country
WHERE LifeExpectancy > 80;

-- #8 Geef alle landdata terug voor landen die niet in Noord Amerika liggen gesorteerd
-- volgens continent
SELECT * 
FROM country 
WHERE Continent != 'North America' ORDER BY Continent;

-- #9 Geef alle landen en hun onafhankelijkheidsjaar terug voor de landen die voor of in 1900 onafhankelijk zijn geworden. Gesorteerd op onafhankelijkheidsjaar
SELECT Name, IndepYear 
FROM country 
WHERE IndepYear <= 1900 ORDER BY IndepYear;

-- #10 Geef alle landen van Asia gesorteerd van groot naar klein.
SELECT Name, SurfaceArea
FROM country
WHERE Continent = 'Asia'
ORDER BY SurfaceArea DESC;

-- WHERE-Logical

-- # Geef alle data van jobs waarbij het MIN_SALARY groter of gelijk is aan 8000 en een JOB_TITLE heeft dat het woord manager bevat.
USE employeesdb;
SELECT * 
FROM jobs
WHERE MIN_SALARY >= 8000 AND JOB_TITLE LIKE '%Manager%';

-- #11 Geef alle data van employees die een SALARY hebben dat meer dan 10000 is of een COMMISION_PCT hebben dat niet NULL is
SELECT * 
FROM employees 
WHERE SALARY > 10000 OR COMMISSION_PCT IS NOT NULL;

-- Geef alle employeedata waarbij de hiredate niet in 2000 ligt.
SELECT *
FROM employees
WHERE NOT( Hire_date between'2000-01-01' AND '2000-12-30');

-- Geef de Firstname, Lastname van de employees die een JOB_ID van IT_PROG hebben met een loon hoger dan 5000 OF employees met een JOB_ID ST_CLERK en een loon lager dan 3000
SELECT FIRST_NAME, LAST_NAME 
FROM employees
WHERE (JOB_ID = 'IT_PROG' AND SALARY > 5000) OR (JOB_ID = 'ST_CLERK' AND SALARY);

-- #13 Geef alle landen terug waarbij de levensverwachting tussen 30 en 50 jaar valt.
SELECT LifeExpectancy
FROM country
WHERE LifeExpectancy BETWEEN 30 AND 50;

-- #14 Geef alle stadsnamen terug die starten met een “A”.
SELECT Name
FROM city
WHERE Name LIKE 'A%';

-- #15 Geef alle (Noord en Zuid) amerikaanse landen terug.
SELECT Continent, Name
FROM country
WHERE Continent IN ('North America', 'South America');

-- #16 Geef alle data voor coutrylanguages terug waarbij een soort engels als taal van toepassing is. vb Creole English moet ook in het resultaat staan.
SELECT *
FROM countrylanguage
WHERE Language LIKE '%English%';

-- #17. Geef een alfabetische gesorteerde lijst van alle Afrikaanse landen die onafhankelijk zijn en waarbij de landsoppervlakte kleiner is dan 5000.
SELECT Name
FROM country 
WHERE Continent = 'Africa' AND IndepYear IS NOT NULL AND SurfaceArea < 5000;

-- #18. Geef een lijst van alle landen die bestuurd worden door beatrix of Elisabeth II.
-- STAP1 ZOEK ALLE LANDEN 
SELECT *
FROM country;

-- STAP 2
SELECT Name, HeadOfState
FROM country
WHERE HeadOfState IN ('Beatrix', 'Elisabeth II');




