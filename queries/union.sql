-- Join results from two tables

SELECT full_address(house_number, street, town, county, post_code) AS full_address
FROM patient
UNION
SELECT full_address(house_number, street, town, county, post_code)
FROM staff;