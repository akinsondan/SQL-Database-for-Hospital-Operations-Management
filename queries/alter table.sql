-- Modify phone number attribute number of characters to 55 from 255.

ALTER TABLE patient
MODIFY phone_number VARCHAR(55);