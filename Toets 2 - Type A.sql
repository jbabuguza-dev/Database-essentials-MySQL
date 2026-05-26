-- Test A2
USE employeesdb;
-- Wie is de hoogst betaalde werknemer die werkt voor manager ‘Mourgos’? Opgelet: ik wil 'Mourgos' zien staan in je query!
-- Toon de naam, voornaam, salaris, de departementsnaam, alsook het maximumsalaris dat de werknemer in deze functie (job) kan verdienen.

-- #STAP 1 toon alle salarys en de werkenemers betaalde werknemer.
SELECT LAST_NAME,FIRST_NAME , JOB_ID, SALARY, max(SALARY) 
FROM employees
GROUP BY FIRST_NAME, LAST_NAME, JOB_ID, SALARY;
-- ik heb geprobeert

SELECT * 
FROM employees JOIN departments;


-- DB Employees

-- In Canada is er maar 1 departement met een manager, in de US zijn er 5.

-- Wat is het gemiddelde aantal departementsmanagers per land? De uitkomst is dus 1 getal. Landen zonder departementsmanager tellen we niet mee.

-- ik denk je zal een JOIN en een Having gebrueken maar ik ben niet zeker 
-- #Stap 1. Wat is het AVG departements managers per land
SELECT MANAGER_ID, LOCATION_ID, count(MANAGER_ID)
FROM locations JOIN departments
GROUP BY MANAGER_ID, locations.LOCATION_ID, departments.LOCATION_ID;