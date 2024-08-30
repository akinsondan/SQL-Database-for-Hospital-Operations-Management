-- Select name of patient that stay in Ipswich

SELECT first_name, last_name
FROM patient
WHERE town = 'Ipswich';