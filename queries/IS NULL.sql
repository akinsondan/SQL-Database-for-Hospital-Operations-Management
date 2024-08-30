-- Get names of patients without email adresses.

SELECT first_name, last_name
FROM patient
WHERE email IS NULL;