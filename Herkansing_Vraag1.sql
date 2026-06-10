USE employeesdb;
-- Toon per stad het aantal (verschillende) departementen en het aantal werknemers.

-- behale ik heb geprobeert om bij de FROM location, departments, employees gedaan maar ik weet niet waarom het werk niet maar als ik ze we haal werk het wel.
-- nu weet ik het is dankzij de left join want hij is overeen gekomen met de de tabbel want ze allebij de 1 relatie en dat is de Depatment dankzij dat kan de query van relatie tot relatie gaan en daar informatie gaan halen.
-- dat is zo dat ik heb dat kunne uitleggen.
SELECT locations.LOCATION_ID, locations.CITY AS city, COUNT(DISTINCT d.DEPARTMENT_ID) AS aantaldepartementen, COUNT(e.EMPLOYEE_ID) AS aantalwerknemers
FROM locations
LEFT JOIN departments AS d ON locations.LOCATION_ID = d.LOCATION_ID
LEFT JOIN employees AS e ON d.DEPARTMENT_ID = e.DEPARTMENT_ID
GROUP BY locations.LOCATION_ID, locations.CITY
ORDER BY aantalwerknemers DESC;
