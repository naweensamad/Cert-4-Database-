-- Task 1: Display all cabins
SELECT cabinType, cabinDescription, pricePerNight, pricePerWeek, photo
FROM Cabin;

-- Task 2: Show the cabin type and price per night of the cabin with the price per week = $1000
SELECT cabinType, pricePerNight
FROM Cabin
WHERE pricePerWeek = 1000;

-- Task 3: Show the cabin type and photo of the cabin with the price per night = $40
SELECT cabinType, photo
FROM Cabin
WHERE pricePerNight = 40;

-- Task 4: Display the number of cabins with a hairdryer
SELECT COUNT(*)
FROM Cabin
WHERE cabinDescription LIKE '%hairdryer%';

-- Task 5: Show the cabin type and photo name of all the cabins with a bunk bed
SELECT cabinType, photo
FROM Cabin
WHERE cabinDescription LIKE '%bunk bed%';

-- Task 6: Display the cabin type, price per night, and all inclusion names for the Spa Villa
SELECT c.cabinType, c.pricePerNight, i.incName
FROM Cabin c
JOIN cabinInclusion ci ON c.cabinID = ci.cabinID
JOIN Inclusion i ON ci.incID = i.incID
WHERE c.cabinType = 'Spa Villa';

-- Task 7: Add new cabin type to the cabin table
INSERT INTO Cabin (cabinType, cabinDescription, pricePerNight, pricePerWeek, photo)
VALUES ('sample', 'details of sample cabin', 50, 500, 'cabAdded.jpg');

-- Task 8: Update new cabin details
UPDATE Cabin
SET cabinType = 'sample_updated',
    cabinDescription = 'updated details of sample cabin',
    pricePerNight = 60,
    pricePerWeek = 300,
    photo = 'cabUpdated.jpg'
WHERE cabinType = 'sample';

-- Task 9: Delete the added cabin
DELETE FROM Cabin
WHERE cabinType = 'sample';
