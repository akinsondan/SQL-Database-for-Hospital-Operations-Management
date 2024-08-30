-- Get patient names with birth date between 1960-01-01 and 2015-01-01. 

SELECT first_name, last_name, birth_date
FROM patient
WHERE birth_date BETWEEN "1960-01-01" AND "2015-01-01";