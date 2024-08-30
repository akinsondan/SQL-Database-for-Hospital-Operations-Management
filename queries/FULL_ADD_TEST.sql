-- Get full address of a staff

SELECT full_address(house_number, street, town, county, post_code) AS staff_address
FROM staff
WHERE town = 'Ipswich';