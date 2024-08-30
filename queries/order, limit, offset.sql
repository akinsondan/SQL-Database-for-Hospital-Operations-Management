/*  Get names and phone number of patients, 
sort by their first names, in a descending order 
starting after the 10th positio,
and limiting result to 5 rows.*/

SELECT first_name, last_name, phone_number
FROM patient
ORDER BY first_name DESC
LIMIT 5
OFFSET 10;
