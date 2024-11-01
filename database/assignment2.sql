-- Insert the following new record to the account table
INSERT INTO account (account_firstname, account_lastname, account_email, account_password)
VALUES ('Tony', 'Stark', 'tony@starkent.com', 'Iam1ronM@n');

-- Modify the Tony Stark record to change the account_type to "Admin".

UPDATE account
SET account_type = 'Admin'
WHERE account_email = 'tony@starkent.com';

-- Delete the Tony Stark record from the database.
DELETE FROM account WHERE account_id = 1;

-- Modify the "GM Hummer" record to read "a huge interior" rather than "the small interiors"
UPDATE inventory
SET inv_description = REPLACE (inv_description, 'small interiors', 'a huge interior')
WHERE inv_id = 10;

-- Use an inner join to select the make and model fields 
SELECT inv_make, inv_model 
FROM inventory
INNER JOIN classification
ON inventory.classification_id = classification.classification_id
WHERE classification.classification_name = 'Sport';

-- Update all records in the inventory table to add "/vehicles" to the middle of the file path
UPDATE inventory
SET inv_image = REPLACE(inv_image, '/images','/images/vehicles'),
	inv_thumbnail = REPLACE(inv_thumbnail, '/images','/images/vehicles');
