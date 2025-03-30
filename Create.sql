Create 
-- Table creation for 'Breed'
CREATE TABLE Breed (
    BreedID INT PRIMARY KEY,
    BreedName VARCHAR(255)
);

-- Table creation for 'Type'
CREATE TABLE Type (
    TypeID INT PRIMARY KEY,
    Name VARCHAR(255)
);

-- Table creation for 'Animal'
CREATE TABLE Animal (
    AnimalID INT PRIMARY KEY,
    BreedID INT,
    TypeID INT,
    ShelterID INT,
    age INT,
    rate DECIMAL(10, 2),
    gender VARCHAR(10),
    color VARCHAR(20),
    cage_size VARCHAR(20),
    height DECIMAL(10, 2),
    weight DECIMAL(10, 2),
    FOREIGN KEY (BreedID) REFERENCES Breed(BreedID),
    FOREIGN KEY (TypeID) REFERENCES Type(TypeID),
    FOREIGN KEY (ShelterID) REFERENCES Shelter(ShelterID)
);

-- Table creation for 'Shelter'
CREATE TABLE Shelter (
    ShelterID INT PRIMARY KEY,
    Name VARCHAR(255),
    Address VARCHAR(255),
    Email VARCHAR(255),
    VolunteerID INT,
    Pet_AccessoriesID INT,
    StaffID INT,
    FOREIGN KEY (VolunteerID) REFERENCES Volunteer(VolunteerID),
    FOREIGN KEY (Pet_AccessoriesID) REFERENCES Pet_Accessories(Pet_AccessoriesID),
    FOREIGN KEY (StaffID) REFERENCES Staff(StaffID)
);

-- Table creation for 'Staff'
CREATE TABLE Staff (
    StaffID INT PRIMARY KEY,
    Name VARCHAR(255),
    Position VARCHAR(255),
    Password VARCHAR(255),
    Email VARCHAR(255),
    Contact_Number VARCHAR(255),
    ShelterID INT,
    FOREIGN KEY (ShelterID) REFERENCES Shelter(ShelterID)
);

-- Table creation for 'Volunteer'
CREATE TABLE Volunteer (
    VolunteerID INT PRIMARY KEY,
    Name VARCHAR(255),
    ShelterID INT,
    FOREIGN KEY (ShelterID) REFERENCES Shelter(ShelterID)
);

-- Table creation for 'Pet_Accessories'
CREATE TABLE Pet_Accessories (
    Pet_AccessoriesID INT PRIMARY KEY,
    Item VARCHAR(255),
    Quantity INT,
    Price DECIMAL(10, 2),
    ShelterID INT,
    FOREIGN KEY (ShelterID) REFERENCES Shelter(ShelterID)
);

-- Table creation for 'Customer'
CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email VARCHAR(255),
    address VARCHAR(255),
    contact_number VARCHAR(255)
);

-- Table creation for 'Adoption'
CREATE TABLE Adoption (
    AdoptionID INT PRIMARY KEY,
    AnimalID INT,
    ShelterID INT,
    CustomerID INT,
    date DATE,
    paymenttype VARCHAR(255),
    adoption_info TEXT,
    FOREIGN KEY (AnimalID) REFERENCES Animal(AnimalID)
    FOREIGN KEY (ShelterID) REFERENCES Shelter(ShelterID),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

-- Table creation for 'Donation'
CREATE TABLE Donation (
    DonationID INT PRIMARY KEY,
    CustomerID INT,
    donation_info TEXT,
    date DATE,
    ShelterID INT,
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    FOREIGN KEY (ShelterID) REFERENCES Shelter(ShelterID)
);

-- Table creation for 'Medication'
CREATE TABLE Medication (
    MedicationID INT PRIMARY KEY,
    AnimalID INT,
    allergies TEXT,
    Veterinarian VARCHAR(255),
    vaccination_date DATE,
    FOREIGN KEY (AnimalID) REFERENCES Animal(AnimalID)
);

-- Table creation for 'Description'
CREATE TABLE Description (
    DescriptionID INT PRIMARY KEY,
    AnimalID INT,
    food_preferences TEXT,
    special_day TEXT,
    FOREIGN KEY (AnimalID) REFERENCES Animal(AnimalID)
);
