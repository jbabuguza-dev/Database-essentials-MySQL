-- Test A2
USE employeesdb;
-- Wie is de hoogst betaalde werknemer die werkt voor manager ‘Mourgos’? Opgelet: ik wil 'Mourgos' zien staan in je query!
-- Toon de naam, voornaam, salaris, de departementsnaam, alsook het maximumsalaris dat de werknemer in deze functie (job) kan verdienen.

-- #STAP 1 toon alle salarys en de werkenemers betaalde werknemer.
SELECT e.LAST_NAME, e.FIRST_NAME, e.SALARY, d.DEPARTMENT_NAME, j.Max_SALARY
FROM employees e 
JOIN departments d ON e.DEPARTMENT_ID = d.DEPARTMENT_ID
JOIN jobs j ON e.JOB_ID = j.JOB_ID
WHERE d.MANAGER_ID = 
(
	SELECT EMPLOYEE_ID
    FROM employees
    WHERE LAST_NAME = 'Mourgos'
)

ORDER BY e.SALARY DESC
LIMIT 1;
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