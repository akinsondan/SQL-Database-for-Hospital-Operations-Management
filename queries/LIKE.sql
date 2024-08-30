-- Get names of staffs that start with letter A.

SELECT first_name, last_name
FROM staff
WHERE first_name LIKE "A%";
