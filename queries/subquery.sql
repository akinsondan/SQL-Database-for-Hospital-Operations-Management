-- Using subquery to filter.

SELECT first_name, last_name
FROM patient
WHERE patient_id IN (SELECT patient_id FROM outpatient);