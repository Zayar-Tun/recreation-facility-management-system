USE Project;
DROP TABLE Building;
DROP TABLE Facility;
DROP TABLE Person;
DROP TABLE Person_Contact;
DROP TABLE Reservation;
DROP TABLE Building_Has_Apartment;
DROP TABLE Person_LivesIn_Apartment;
DROP TABLE Apartment_Resident_Names;
DROP TABLE Facility_Reservation;
DROP TABLE Person_Handle_Reservation;
DROP TABLE Person_ResidentStatus;
DROP TABLE Reservation_Showup;
DROP TABLE Reservation_Deposit;

DELETE FROM Person_ResidentStatus
WHERE ResidentStatus = 'Inactive Resident'
AND NOT EXISTS (
    SELECT *
    FROM Reservation R
    WHERE R.ReservedPerson_Name = Person_ResidentStatus.Person_Name
    AND R.ReservedPerson_DOB = Person_ResidentStatus.DOB
    AND R.Date >= CAST(GETDATE() AS DATE)
);

SELECT *
FROM Person_ResidentStatus;

SELECT P.Name
FROM Person P
WHERE P.Type = 'Resident'
AND NOT EXISTS (
    SELECT 1
    FROM Reservation R
    WHERE R.ReservedPerson_Name = P.Name
    AND R.ReservedPerson_DOB = P.DOB
);



CREATE VIEW ResidentApartments AS
SELECT PLA.Person_Name, PLA.DOB, BHA.Building_Name, BHA.ApartmentNumber, BHA.FloorNumber, BHA.OccupancyStatus
FROM Person_LivesIn_Apartment PLA
JOIN Building_Has_Apartment BHA
ON PLA.Building_Name = BHA.Building_Name AND PLA.ApartmentNumber = BHA.ApartmentNumber
WHERE PLA.EndDate IS NULL;

SELECT TOP 1 MONTH(Date) AS ReservationMonth, COUNT(*) AS TotalReservations
FROM Reservation
GROUP BY MONTH(Date)
ORDER BY TotalReservations DESC;


SELECT PH.Person_Name, COUNT(DISTINCT R.ReservedFacility) AS UniqueFacilitiesHandled
FROM Person_Handle_Reservation PH
JOIN Reservation R ON PH.RID = R.RID
GROUP BY PH.Person_Name
HAVING COUNT(DISTINCT R.ReservedFacility) >= 3;



