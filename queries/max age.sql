-- Get the name of the oldest patient

SELECT MAX(TIMESTAMPDIFF(YEAR, birth_date, CURDATE())) AS age
FROM patient;