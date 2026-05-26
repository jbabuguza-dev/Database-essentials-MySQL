-- Geef de 3 medewerkers die het eerste zijn aangenomen. Hint: opsplitsen in 2 stappen.

-- zoek eerst de 3 oudste medewerkers dat werd aangonomen
SELECT *, ROW_NUMBER() OVER (ORDER BY HIRE_DATE ASC)
FROM employees ;

-- Nu toon gewoon de 3!! oudste en niet alle werknemers.
WITH gesorted_emp AS (
	SELECT *, ROW_NUMBER() OVER (ORDER BY HIRE_DATE ASC) AS Soorteering
	FROM employees )
SELECT * 
FROM gesorted_emp
WHERE soorteering <= 3;

-- Gemakkelijk. Duid voor iedere medewerker aan op de hoeveelste plaats zijn/haar loon staat (hoogste loon = 1, tweede hoogste loon = 2, ...)
-- Geef alle Salaty van groot naar klein 
SELECT *
FROM employees
ORDER BY SALARY DESC

-- #Stap 2: Probeert het nu met een RANK functie



-- Geef de employees met de 2 hoogste lonen.
