CREATE TABLE Building (
    Name VARCHAR(255) PRIMARY KEY,
    Address TEXT NOT NULL,
    NumberOfFloors INT NOT NULL
);

CREATE TABLE Facility (
    Name VARCHAR(255) PRIMARY KEY,
    Building_Name VARCHAR(255) NULL,
    Address TEXT NOT NULL,
    Type VARCHAR(255) NOT NULL,
    Description TEXT
    FOREIGN KEY (Building_Name) REFERENCES Building(Name) ON DELETE CASCADE
);

CREATE TABLE Person (
    Name VARCHAR(255),
    DOB DATE,
    Type VARCHAR(255) NOT NULL,
    PRIMARY KEY (Name, DOB)
);

CREATE TABLE Person_Contact (
    Name VARCHAR(255),
    DOB DATE,
    Email VARCHAR(255),
    PhoneNumber VARCHAR(20),
    PRIMARY KEY (Name, DOB),
    FOREIGN KEY (Name, DOB) REFERENCES Person(Name, DOB) ON DELETE CASCADE
);

CREATE TABLE Reservation (
    RID INT PRIMARY KEY,
    ReservedFacility VARCHAR(255),
    Date DATE NOT NULL,
    TimeInterval VARCHAR(50) NOT NULL,
    NumberOfGuests INT NOT NULL,
    ReservedPerson_Name VARCHAR(255),
    ReservedPerson_DOB DATE,
    FOREIGN KEY (ReservedFacility) REFERENCES Facility(Name) ON DELETE CASCADE,
    FOREIGN KEY (ReservedPerson_Name, ReservedPerson_DOB) REFERENCES Person(Name, DOB) ON DELETE CASCADE
);

CREATE TABLE Building_Has_Apartment (
    Building_Name VARCHAR(255),
    ApartmentNumber INT,
    OccupancyStatus VARCHAR(50) NOT NULL,
    FloorNumber INT NOT NULL,
    PRIMARY KEY (Building_Name, ApartmentNumber),
    FOREIGN KEY (Building_Name) REFERENCES Building(Name) ON DELETE CASCADE
);

CREATE TABLE Person_LivesIn_Apartment (
    Person_Name VARCHAR(255),
    DOB DATE,
    Building_Name VARCHAR(255),
    ApartmentNumber INT,
    StartDate DATE NOT NULL,
    EndDate DATE,
    PRIMARY KEY (Person_Name, DOB, Building_Name, ApartmentNumber),
    FOREIGN KEY (Person_Name, DOB) REFERENCES Person(Name, DOB) ON DELETE CASCADE,
    FOREIGN KEY (Building_Name, ApartmentNumber) REFERENCES Building_Has_Apartment(Building_Name, ApartmentNumber) ON DELETE CASCADE
);

CREATE TABLE Apartment_Resident_Names (
    Person_Name VARCHAR(255),
    DOB DATE,
    Building_Name VARCHAR(255),
    ApartmentNumber INT,
    ResidentNames VARCHAR(255),
    PRIMARY KEY (Person_Name, DOB, Building_Name, ApartmentNumber, ResidentNames),
    FOREIGN KEY (Person_Name, DOB, Building_Name, ApartmentNumber) REFERENCES Person_LivesIn_Apartment(Person_Name, DOB, Building_Name, ApartmentNumber) ON DELETE CASCADE
);

CREATE TABLE Facility_Reservation (
    Facility_Name VARCHAR(255),
    RID INT,
    PRIMARY KEY (Facility_Name, RID),
    FOREIGN KEY (Facility_Name) REFERENCES Facility(Name) ON DELETE CASCADE,
    FOREIGN KEY (RID) REFERENCES Reservation(RID)
);

CREATE TABLE Person_Handle_Reservation (
    Person_Name VARCHAR(255),
    DOB DATE,
    RID INT,
    PRIMARY KEY (Person_Name, DOB, RID),
    FOREIGN KEY (Person_Name, DOB) REFERENCES Person(Name, DOB) ON DELETE CASCADE,
    FOREIGN KEY (RID) REFERENCES Reservation(RID)
);

CREATE TABLE Person_ResidentStatus (
    Person_Name VARCHAR(255),
    DOB DATE,
    ResidentStatus VARCHAR(255) NOT NULL,
    PRIMARY KEY (Person_Name, DOB),
    FOREIGN KEY (Person_Name, DOB) REFERENCES Person(Name, DOB) ON DELETE CASCADE
);

CREATE TABLE Reservation_Showup (
    Person_Name VARCHAR(255),
    DOB DATE,
    RID INT,
    ShowupStatus VARCHAR(50) NOT NULL,
    PRIMARY KEY (Person_Name, DOB, RID),
    FOREIGN KEY (Person_Name, DOB) REFERENCES Person(Name, DOB) ON DELETE CASCADE,
    FOREIGN KEY (RID) REFERENCES Reservation(RID)
);

CREATE TABLE Reservation_Deposit (
    RID INT PRIMARY KEY,
    DepositAmount DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (RID) REFERENCES Reservation(RID) ON DELETE CASCADE
);
