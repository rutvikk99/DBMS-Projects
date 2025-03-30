



-- Insert data into 'Type'
INSERT INTO Type (TypeID, Name) VALUES
(1, 'Dog'),
(2, 'Cat'),
(3, 'Bird'),
(4, 'Reptile'),
(5, 'Fish'),
(6, 'Rodent'),
(7, 'Amphibian'),
(8, 'Ferret'),
(9, 'Horse'),
(10, 'Cow');



-- Insert data into 'Breed'
INSERT INTO Breed (BreedID, BreedName) VALUES
(1, 'Labrador'),
(2, 'Beagle'),
(3, 'Bulldog'),
(4, 'German Shepherd'),
(5, 'Golden Retriever'),
(6, 'Sphynx'),
(7, 'Persian'),
(8, 'Maine Coon'),
(9, 'Siamese'),
(10, 'Russian Blue');


INSERT INTO Volunteer (VolunteerID, Name, ShelterID) VALUES
(1, 'John Doe', NULL),
(2, 'Jane Smith', NULL),
(3, 'Emily Johnson', NULL),
(4, 'Mike Brown', NULL),
(5, 'Sarah Davis', NULL);
	

-- Insert data into 'Pet_Accessories' -- Now we can properly assign ShelterID
INSERT INTO Pet_Accessories (Pet_AccessoriesID, Item, Quantity, Price, ShelterID) VALUES
(1, 'Leash', 10, 9.99, 1),
(2, 'Cat Bed', 5, 19.99, 2),
(3, 'Bird Cage', 3, 29.99, 3),
(4, 'Terrarium', 2, 49.99, 4), 	
(5, 'Aquarium', 4, 39.99, 5);
(6, 'Catnip Toys', 20, 4.99, 2),
(7, 'Dog Beds', 15, 49.99, 1),
(8, 'Bird Feeders', 10, 19.99, 3),
(9, 'Aquarium Filters', 5, 29.99, 5),
(10, 'Reptile Heating Lamps', 8, 24.99, 4);





INSERT INTO Shelter (ShelterID, Name, Address, Email, VolunteerID, Pet_AccessoriesID, StaffID) VALUES
(1, 'Happy Tails', '123 Bark Street', 'info@happytails.com', 1, NULL, 1),
(2, 'Feline Good', '456 Meow Lane', 'contact@felinegood.com', 2, NULL, 2),
(3, 'Beak Buddies', '789 Tweet Road', 'hello@beakbuddies.com', 3, NULL, 3),
(4, 'Scales & Tails', '321 Hiss Alley', 'support@scalesandtails.com', 4, NULL, 4),
(5, 'Gill Friends', '654 Fin Avenue', 'service@gillfriends.com', 5, NULL, 5),
(6, 'Happy Tails', '123 Bark Street', 'info@happytails.com', 1, NULL, 1),
(7, 'Feline Good', '456 Meow Lane', 'contact@felinegood.com', 2, NULL, 2),
(8, 'Beak Buddies', '789 Tweet Road', 'hello@beakbuddies.com', 3, NULL, 3),
(9, 'Scales & Tails', '321 Hiss Alley', 'support@scalesandtails.com', 4, NULL, 4),
(10, 'Gill Friends', '654 Fin Avenue', 'service@gillfriends.com', 5, NULL, 5);


INSERT INTO Staff (StaffID, Name, Position, Password, Email, Contact_Number, ShelterID) VALUES
(1, 'Adam West', 'Manager', 'pass123', 'adam@shelter.com', '123-456-7890', NULL),
(2, 'Betty White', 'Veterinarian', 'vetpass', 'betty@shelter.com', '123-456-7891', NULL),
(3, 'Charlie Chaplin', 'Trainer', 'train123', 'charlie@shelter.com', '123-456-7892', NULL),
(4, 'Diane Keaton', 'Receptionist', 'receppass', 'diane@shelter.com', '123-456-7893', NULL),
(5, 'Evan Peters', 'Caregiver', 'care123', 'evan@shelter.com', '123-456-7894', NULL);




-- Insert data into 'Customer'
INSERT INTO Customer (CustomerID, first_name, last_name, email, address, contact_number) VALUES
(1, 'Alice', 'Johnson', 'alice.johnson@example.com', '123 Cherry Lane', '555-1234'),
(2, 'Bob', 'Smith', 'bob.smith@example.com', '456 Oak Street', '555-5678'),
(3, 'Carol', 'Williams', 'carol.williams@example.com', '789 Pine Avenue', '555-9012'),
(4, 'David', 'Jones', 'david.jones@example.com', '321 Maple Place', '555-3456'),
(5, 'Eve', 'Brown', 'eve.brown@example.com', '654 Elm Road', '555-7890'),
(6, 'Frank', 'Wright', 'frank.wright@example.com', '201 Cobblestone Road', '555-2234'),
(7, 'Grace', 'Hall', 'grace.hall@example.com', '402 Vista Avenue', '555-3345'),
(8, 'Harry', 'King', 'harry.king@example.com', '603 River Street', '555-4456'),
(9, 'Ivy', 'Lee', 'ivy.lee@example.com', '804 Garden Path', '555-5567'),
(10, 'Jack', 'Moore', 'jack.moore@example.com', '1005 Sunset Blvd', '555-6678'),
(11, 'Kara', 'Smith', 'kara.smith@example.com', '1206 Sand Hill', '555-7789'),
(12, 'Leo', 'Taylor', 'leo.taylor@example.com', '1307 Pinecrest Drive', '555-8890'),
(13, 'Mia', 'Brown', 'mia.brown@example.com', '1408 Maplewood Ln', '555-9901'),
(14, 'Nolan', 'Davis', 'nolan.davis@example.com', '1509 Willow Way', '555-1012'),
(15, 'Olivia', 'Miller', 'olivia.miller@example.com', '1610 Oakdale Street', '555-1123');



-- Insert data into 'Animal' 
INSERT INTO Animal (AnimalID, BreedID, TypeID, ShelterID, age, rate, gender, color, cage_size, height, weight) VALUES
(1, 1, 1, 1, 2, 100.00, 'Male', 'Black', 'Large', 24, 65),
(2, 2, 1, 2, 4, 200.00, 'Female', 'Brown', 'Medium', 15, 30),
(3, 3, 1, 3, 3, 150.00, 'Male', 'White', 'Small', 14, 50),
(4, 4, 1, 4, 5, 120.00, 'Female', 'Grey', 'Large', 22, 70),
(5, 5, 1, 5, 1, 80.00, 'Male', 'Golden', 'Medium', 21, 60),
(6, 3, 2, 1, 2, 90.00, 'Female', 'Tortoiseshell', 'Medium', 9, 10),
(7, 1, 2, 2, 3, 85.00, 'Male', 'Orange Tabby', 'Medium', 10, 12),
(8, 5, 3, 3, 1, 70.00, 'Female', 'Green', 'Small', 5, 0.5),
(9, 4, 4, 4, 4, 130.00, 'Male', 'Brown', 'Large', 12, 25),
(10, 2, 5, 5, 3, 60.00, 'Female', 'Multicolor', 'X-Small', 1, 0.1),
(11, 2, 1, 1, 7, 75.00, 'Female', 'White', 'Medium', 16, 25),
(12, 1, 1, 2, 1, 65.00, 'Male', 'Black and White', 'Small', 12, 18),
(13, 4, 1, 3, 5, 50.00, 'Male', 'Grey', 'Medium', 17, 40),
(14, 5, 1, 4, 6, 55.00, 'Female', 'Golden', 'Large', 20, 60),
(15, 3, 1, 5, 8, 45.00, 'Male', 'Brindle', 'Small', 14, 22);


-- Insert data into 'Adoption' (assuming that CustomerID and AnimalID already exist)
INSERT INTO Adoption (AdoptionID, AnimalID, ShelterID, CustomerID, date, paymenttype, adoption_info) VALUES
(1, 1, 1, 1, '2024-04-01', 'Credit Card', 'Adopted with all necessary accessories'),
(2, 2, 2, 2, '2024-04-02', 'Cash', 'Opted for a puppy training class'),
(3, 3, 3, 3, '2024-04-03', 'Debit Card', 'Requested home delivery'),
(4, 4, 4, 4, '2024-04-04', 'Credit Card', 'Included a donation'),
(5, 5, 5, 5, '2024-04-05', 'Cash', 'Adopted two pets');





-- Insert data into 'Donation' (assuming that CustomerID already exists)
INSERT INTO Donation (DonationID, CustomerID, donation_info, date, ShelterID) VALUES
(1, 1, 'Donation for animal food', '2024-04-10', 1),
(2, 2, 'Donation for veterinary care', '2024-04-11', 2),
(3, 3, 'Donation for shelter maintenance', '2024-04-12', 3),
(4, 4, 'General donation', '2024-04-13', 4),
(5, 5, 'Donation for new cages', '2024-04-14', 5),
(6, 11, 'For new puppy playpen', '2024-05-01', 2),
(7, 12, 'Fund for animal surgeries', '2024-05-02', 3),
(8, 13, 'To support adoption events', '2024-05-03', 4),
(9, 14, 'For shelter repair and maintenance', '2024-05-04', 5),
(10, 15, 'For educational programs', '2024-05-05', 1);


-- Insert data into 'Medication' (assuming that AnimalID already exists)
INSERT INTO Medication (MedicationID, AnimalID, allergies, Veterinarian, vaccination_date) VALUES
(1, 1, 'No known allergies', 'Dr. Lewis', '2024-03-15'),
(2, 2, 'Allergic to beef', 'Dr. Clark', '2024-03-16'),
(3, 3, 'Requires special medication for liver', 'Dr. Adams', '2024-03-17'),
(4, 4, 'Allergic to chicken', 'Dr. Baker', '2024-03-18'),
(5, 5, 'No known allergies', 'Dr. Davis', '2024-03-19'),
(6, 11, 'Diabetic medication required', 'Dr. Murphy', '2024-03-20'),
(7, 12, 'No allergies, vaccinations up to date', 'Dr. Nguyen', '2024-03-21'),
(8, 13, 'Requires anti-anxiety medication', 'Dr. Ortiz', '2024-03-22'),
(9, 14, 'Allergy to flea medication', 'Dr. Patel', '2024-03-23'),
(10, 15, 'Heartworm preventative needed', 'Dr. Quinn', '2024-03-24');



-- Insert data into 'Description'
INSERT INTO Description (DescriptionID, AnimalID, food_preferences, special_day) VALUES
(1, 1, 'Chicken-based kibble', '2024-05-05'),
(2, 2, 'Grain-free diet', '2024-06-02'),
(3, 3, 'Wet food twice daily', '2024-07-09'),
(4, 4, 'Sensitive stomach formula', '2024-08-16'),
(5, 5, 'Loves treats and chew toys', '2024-09-01'),
(6, 6, 'Prefers fish-flavored food', '2024-10-12'),
(7, 7, 'Allergic to corn, grain-free food only', '2024-11-15'),
(8, 8, 'Loves rawhide bones', '2024-12-20'),
(9, 9, 'Should avoid dairy products', '2025-01-22'),
(10, 10, 'Needs high fiber diet', '2025-02-28');

