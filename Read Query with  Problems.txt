1. List all staff members who have not been assigned any animals.----
SELECT s.Name AS StaffName
FROM Staff s
LEFT JOIN Animal a ON s.ShelterID = a.ShelterID
WHERE a.AnimalID IS NULL;



2. Find the total number of animals adopted each year, along with the year.
We'll need to use the Adoption table, extract the year from the date column, and count the number of adoptions.
SELECT EXTRACT(YEAR FROM date) AS Year, COUNT(*) AS TotalAdoptions
FROM Adoption
GROUP BY EXTRACT(YEAR FROM date);



3. List the average age of animals at the time of adoption by Type name.

SELECT t.Name AS TypeName, Round(AVG(a.age)) AS AverageAge
FROM Adoption ad
JOIN Animal a ON ad.AnimalID = a.AnimalID
JOIN Type t ON a.TypeID = t.TypeID
GROUP BY t.Name;



4.SELECT m.allergies, COUNT(*) AS FrequencyInAdopted
FROM Medication m
JOIN Adoption ad ON m.AnimalID = ad.AnimalID
GROUP BY m.allergies
HAVING COUNT(*) > (
    SELECT COUNT(*)
    FROM Medication m2
    WHERE m2.allergies = m.allergies AND NOT EXISTS (
        SELECT * FROM Adoption ad2 WHERE ad2.AnimalID = m2.AnimalID
    )
);



5. Show the average weight of animals by type, ranking the types by average weight within each shelter.
SELECT t.Name AS TypeName, s.ShelterID, round(AVG(a.weight)) AS AverageWeight
FROM Animal a
JOIN Type t ON a.TypeID = t.TypeID
JOIN Shelter s ON a.ShelterID = s.ShelterID
GROUP BY t.Name, s.ShelterID
ORDER BY s.ShelterID, AverageWeight DESC;
