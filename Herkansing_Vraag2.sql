-- Herkansing_Vraag2
USE employeesdb;
-- Welke persoon is het laatst aangeworven? (aangenomen)
-- Toon het id, voornaam, achternaam, de naam van de manager en het land (naam) waarin deze persoon werkt.
SELECT employees.EMPLOYEE_ID, employees.FIRST_NAME, employees.LAST_NAME, MANAGER_ID, COUNTRY_NAME, HIRE_DATE
FROM employees, countries
WHERE employees.HIRE_DATE = (SELECT MAX(HIRE_DATE) FROM employees)
ORDER BY HIRE_DATE DESC;

-- De laatse aangenomen is ik.



