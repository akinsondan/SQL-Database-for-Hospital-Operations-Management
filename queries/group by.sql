-- Group patient and count patient genders

SELECT gender, COUNT(*) AS patient_count
FROM patient
GROUP BY gender;
