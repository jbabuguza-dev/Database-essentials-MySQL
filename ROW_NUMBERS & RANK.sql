-- Geef de 3 medewerkers die het eerste zijn aangenomen. Hint: opsplitsen in 2 stappen.
SELECT *
FROM employees
ORDER BY hire_date ASC
LIMIT 3;