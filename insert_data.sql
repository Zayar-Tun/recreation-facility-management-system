-- Insert Buildings
INSERT INTO Building (Name, Address, NumberOfFloors) VALUES
('Sunset Tower', '123 Sunset Blvd, Cityville', 15),
('Ocean View', '456 Ocean Dr, Beachside', 12),
('Maple Heights', '789 Maple St, Townsville', 10);

-- Insert Facilities (some inside buildings, some outside)
INSERT INTO Facility (Name, Building_Name, Address, Type, Description) VALUES
('Gym', 'Sunset Tower', '123 Sunset Blvd, Cityville', 'Fitness', 'Fully equipped gym with trainers'),
('Swimming Pool', NULL, 'Common Area - 123 Sunset Blvd, Cityville', 'Pool', 'Outdoor heated swimming pool'),
('Tennis Court', NULL, 'Common Area - 456 Ocean Dr, Beachside', 'Tennis', 'Professional grade tennis court'),
('Sauna', 'Ocean View', '456 Ocean Dr, Beachside', 'Wellness', 'Relaxing sauna room'),
('Basketball Court', NULL, 'Common Area - 789 Maple St, Townsville', 'Sports', 'Outdoor basketball court');

-- Insert Person
INSERT INTO Person (Name, DOB, Type) VALUES
('Jonathan Doe', '1990-05-15', 'Resident'),
('Sarah Doe', '1992-07-21', 'Resident'),
('Janet Smith', '1985-08-22', 'Resident'),
('Michael Smith', '1987-10-10', 'Resident'),
('Emilia Davis', '1998-11-30', 'Non-Resident'),
('Mike Brown', '1975-02-14', 'Resident'),
('Alice Johnson', '1985-07-12', 'Resident'),
('Bob Smith', '1990-09-23', 'Resident'),
('Charlie Brown', '1995-05-17', 'Resident'),
('David Lee', '1988-03-22', 'Non-Resident'),
('Emma Wilson', '1993-11-29', 'Non-Resident'),
('Frank Thomas', '1980-06-10', 'Resident'),
('George Miller', '1982-04-18', 'Employee'),
('Helen Carter', '1991-12-05', 'Employee');

-- Insert Person Contacts
INSERT INTO Person_Contact (Name, DOB, Email, PhoneNumber) VALUES
('Jonathan Doe', '1990-05-15', 'johndoe@email.com', '123-456-7890'),
('Sarah Doe', '1992-07-21', 'sarahd@email.com', '234-567-8901'),
('Janet Smith', '1985-08-22', 'janesmith@email.com', '987-654-3210'),
('Michael Smith', '1987-10-10', 'michaels@email.com', '876-543-2109'),
('Emilia Davis', '1998-11-30', 'emilyd@email.com', '555-123-4567'),
('Mike Brown', '1975-02-14', 'michaelb@email.com', '111-222-3333'),
('Alice Johnson', '1985-07-12', 'alice@email.com', '1234567890'),
('Bob Smith', '1990-09-23', 'bob@email.com', '0987654321'),
('Charlie Brown', '1995-05-17', 'charlie@email.com', '1122334455'),
('David Lee', '1988-03-22', 'david@email.com', '5566778899'),
('Emma Wilson', '1993-11-29', 'emma@email.com', '6677889900'),
('Frank Thomas', '1980-06-10', 'frank@email.com', '9998887776'),
('George Miller', '1982-04-18', 'george@email.com', '4445556666'),
('Helen Carter', '1991-12-05', 'helen@email.com', '7778889999');

-- Insert Apartments in Buildings
INSERT INTO Building_Has_Apartment (Building_Name, ApartmentNumber, OccupancyStatus, FloorNumber) VALUES
('Sunset Tower', 101, 'Occupied', 1),
('Sunset Tower', 202, 'Vacant', 2),
('Sunset Tower', 205, 'Occupied', 2),
('Ocean View', 305, 'Occupied', 3),
('Maple Heights', 410, 'Occupied', 4),
('Maple Heights', 502, 'Vacant', 5),
('Maple Heights', 503, 'Occupied', 5);

-- Insert People Living in Apartments (Multiple residents per apartment)
INSERT INTO Person_LivesIn_Apartment (Person_Name, DOB, Building_Name, ApartmentNumber, StartDate, EndDate) VALUES
('Jonathan Doe', '1990-05-15', 'Sunset Tower', 101, '2024-01-01', NULL),
('Sarah Doe', '1992-07-21', 'Sunset Tower', 101, '2024-01-01', NULL),
('Janet Smith', '1985-08-22', 'Ocean View', 305, '2023-06-15', NULL),
('Michael Smith', '1987-10-10', 'Ocean View', 305, '2023-06-15', NULL),
('Mike Brown', '1975-02-14', 'Maple Heights', 410, '2022-12-01', NULL),
('Alice Johnson', '1985-07-12', 'Sunset Tower', 205, '2024-01-01', NULL),
('Bob Smith', '1990-09-23', 'Sunset Tower', 205, '2024-01-01', NULL),
('Charlie Brown', '1995-05-17', 'Maple Heights', 503, '2023-06-15', NULL),
('Frank Thomas', '1980-06-10', 'Maple Heights', 410, '2022-12-01', NULL);

-- Insert Apartment Resident Names
INSERT INTO Apartment_Resident_Names (Person_Name, DOB, Building_Name, ApartmentNumber, ResidentNames) VALUES
('Jonathan Doe', '1990-05-15', 'Sunset Tower', 101, 'Jonathan D., Sarah D.'),
('Sarah Doe', '1992-07-21', 'Sunset Tower', 101, 'Jonathan D., Sarah D.'),
('Janet Smith', '1985-08-22', 'Ocean View', 305, 'Janet S., Michael S.'),
('Michael Smith', '1987-10-10', 'Ocean View', 305, 'Janet S., Michael S.'),
('Mike Brown', '1975-02-14', 'Maple Heights', 410, 'Mike B., Frank T.'),
('Alice Johnson', '1985-07-12', 'Sunset Tower', 205, 'Alice J., Bob S.'),
('Bob Smith', '1990-09-23', 'Sunset Tower', 205, 'Alice J., Bob S.'),
('Charlie Brown', '1995-05-17', 'Maple Heights', 503, 'Charlie B.'),
('Frank Thomas', '1980-06-10', 'Maple Heights', 410, 'Mike B., Frank T.');

-- Insert Reservations
INSERT INTO Reservation (RID, ReservedFacility, Date, TimeInterval, NumberOfGuests, ReservedPerson_Name, ReservedPerson_DOB) VALUES
(1, 'Gym', '2025-03-05', '10:00-11:00', 2, 'Alice Johnson', '1985-07-12'),
(2, 'Swimming Pool', '2025-03-06', '14:00-16:00', 4, 'Bob Smith', '1990-09-23'),
(3, 'Tennis Court', '2025-03-07', '16:00-18:00', 2, 'David Lee', '1988-03-22'),
(4, 'Sauna', '2025-03-08', '12:00-13:00', 1, 'Emma Wilson', '1993-11-29'),
(5, 'Basketball Court', '2025-03-09', '17:00-18:00', 6, 'Charlie Brown', '1995-05-17'),
(6, 'Gym', '2025-03-10', '08:00-09:00', 3, 'Michael Smith', '1987-10-10');

-- Insert Facility Reservations
INSERT INTO Facility_Reservation (Facility_Name, RID) VALUES
('Gym', 1),
('Swimming Pool', 2),
('Tennis Court', 3),
('Sauna', 4),
('Basketball Court', 5),
('Gym', 6);

-- Insert Reservation Handlers (Employees handling reservations)
INSERT INTO Person_Handle_Reservation (Person_Name, DOB, RID) VALUES
('George Miller', '1982-04-18', 1),
('Helen Carter', '1991-12-05', 2),
('George Miller', '1982-04-18', 3),
('Helen Carter', '1991-12-05', 4),
('George Miller', '1982-04-18', 5);

-- Insert Resident Status
INSERT INTO Person_ResidentStatus (Person_Name, DOB, ResidentStatus) VALUES
('Jonathan Doe', '1990-05-15', 'Active Resident'),
('Sarah Doe', '1992-07-21', 'Active Resident'),
('Janet Smith', '1985-08-22', 'Active Resident'),
('Michael Smith', '1987-10-10', 'Active Resident'),
('Emilia Davis', '1998-11-30', 'Non-Resident'),
('Mike Brown', '1975-02-14', 'Active Resident'),
('Alice Johnson', '1985-07-12', 'Active Resident'),
('Bob Smith', '1990-09-23', 'Active Resident'),
('Charlie Brown', '1995-05-17', 'Active Resident'),
('David Lee', '1988-03-22', 'Non-Resident'),
('Emma Wilson', '1993-11-29', 'Non-Resident'),
('Frank Thomas', '1980-06-10', 'Active Resident');

-- Insert Showup Status
INSERT INTO Reservation_Showup (Person_Name, DOB, RID, ShowupStatus) VALUES
('Jonathan Doe', '1990-05-15', 1, 'Showed Up'),
('Janet Smith', '1985-08-22', 2, 'No Show'),
('Emilia Davis', '1998-11-30', 3, 'Showed Up'),
('Alice Johnson', '1985-07-12', 1, 'Showed Up'),
('Bob Smith', '1990-09-23', 2, 'No Show'),
('David Lee', '1988-03-22', 3, 'Showed Up'),
('Emma Wilson', '1993-11-29', 4, 'Showed Up'),
('Charlie Brown', '1995-05-17', 5, 'No Show');

-- Insert Reservation Deposits (Only for non-residents)
INSERT INTO Reservation_Deposit (RID, DepositAmount) VALUES
(3, 50.00),
(4, 40.00);