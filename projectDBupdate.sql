-- ===================================================================
-- Database Update Script for International Flight Management System
-- Spring25_S003_T11_projectDBupdate.sql
-- ===================================================================

-- ===================================================================
-- SECTION 1: INSERT SAMPLE DATA
-- ===================================================================

-- Insert Airlines
INSERT INTO Spring25_S003_T11_Airlines VALUES ('AC', 'Air Canada', 'Canada', 'Star Alliance');
INSERT INTO Spring25_S003_T11_Airlines VALUES ('AY', 'Finnair', 'Finland', 'OneWorld');
INSERT INTO Spring25_S003_T11_Airlines VALUES ('IG', 'Air Italy', 'Italy', NULL);
INSERT INTO Spring25_S003_T11_Airlines VALUES ('AM', 'Aeromexico', 'Mexico', 'SkyTeam');
INSERT INTO Spring25_S003_T11_Airlines VALUES ('KE', 'korean Air', 'South Korea', 'SkyTeam');

-- Insert Aircraft Seat Classes
INSERT INTO Spring25_S003_T11_Aircraft_Seat_Class VALUES ('First', 'A001');
INSERT INTO Spring25_S003_T11_Aircraft_Seat_Class VALUES ('Premium Economy', 'A002');
INSERT INTO Spring25_S003_T11_Aircraft_Seat_Class VALUES ('First', 'A003');
INSERT INTO Spring25_S003_T11_Aircraft_Seat_Class VALUES ('First', 'A004');
INSERT INTO Spring25_S003_T11_Aircraft_Seat_Class VALUES ('Business', 'A004');
INSERT INTO Spring25_S003_T11_Aircraft_Seat_Class VALUES ('Business', 'A005');



-- Update Passengers with Tickets_ID
UPDATE Spring25_S003_T11_Passengers SET Tickets_ID = 'T013' WHERE Passengers_ID = 'P013';
UPDATE Spring25_S003_T11_Passengers SET Tickets_ID = 'T014' WHERE Passengers_ID = 'P014';
UPDATE Spring25_S003_T11_Passengers SET Tickets_ID = 'T015' WHERE Passengers_ID = 'P015';
UPDATE Spring25_S003_T11_Passengers SET Tickets_ID = 'T016' WHERE Passengers_ID = 'P016';
UPDATE Spring25_S003_T11_Passengers SET Tickets_ID = 'T018' WHERE Passengers_ID = 'P018';


-- ===================================================================
-- SECTION 2: DATABASE UPDATES
-- ===================================================================

-- Add new passengers
INSERT INTO Spring25_S003_T11_Passengers (Passengers_ID, Lname, Fname, Mname, Gender, Nationality, DOB) 
VALUES ('P016', 'Anderson', 'Sarah', 'Jane', 'Female', 'Australia', DATE '1992-03-18');
INSERT INTO Spring25_S003_T11_Passengers (Passengers_ID, Lname, Fname, Mname, Gender, Nationality, DOB) 
VALUES ('P015', 'Patel', 'Raj', 'Kumar', 'Male', 'India', DATE '1982-12-05');
INSERT INTO Spring25_S003_T11_Passengers (Passengers_ID, Lname, Fname, Mname, Gender, Nationality, DOB) 
VALUES ('P014', 'Kim', 'Min', 'Soo', 'Female', 'South Korea', DATE '1995-06-25');
INSERT INTO Spring25_S003_T11_Passengers (Passengers_ID, Lname, Fname, Mname, Gender, Nationality, DOB) 
VALUES ('P017', 'Petrova', 'Elara', NULL, 'Female', 'Bulgaria', DATE '1988-03-15');
INSERT INTO Spring25_S003_T11_Passengers (Passengers_ID, Lname, Fname, Mname, Gender, Nationality, DOB) 
VALUES ('P018', 'Mendoza', 'Enrique', 'Javier', 'Female', 'Spain', DATE '1995-11-02');

-- Add contact information for new passengers
INSERT INTO Spring25_S003_T11_Passengers_Phone_Number VALUES ('678-901-2345', 'P016');
INSERT INTO Spring25_S003_T11_Passengers_Phone_Number VALUES ('789-012-3456', 'P015');
INSERT INTO Spring25_S003_T11_Passengers_Phone_Number VALUES ('890-123-4567', 'P014');

INSERT INTO Spring25_S003_T11_Passengers_Email VALUES ('sarah.anderson@email.com', 'P016');
INSERT INTO Spring25_S003_T11_Passengers_Email VALUES ('raj.patel@email.com', 'P015');
INSERT INTO Spring25_S003_T11_Passengers_Email VALUES ('min.kim@email.com', 'P014');

INSERT INTO Spring25_S003_T11_Flight_Schedule VALUES ('FS014', TO_TIMESTAMP('2025-05-09 13:50:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2025-05-30', 'YYYY-MM-DD'), TO_TIMESTAMP('2025-05-09 14:20:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-05-09 18:05:00', 'YYYY-MM-DD HH24:MI:SS'), 'T4', 'G20', TO_TIMESTAMP('2025-05-09 13:20:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Spring25_S003_T11_Flight_Schedule VALUES ('FS016', TO_TIMESTAMP('2025-05-09 13:50:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2025-10-10', 'YYYY-MM-DD'), TO_TIMESTAMP('2025-05-09 14:20:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-05-09 18:05:00', 'YYYY-MM-DD HH24:MI:SS'), 'T4', 'G23', TO_TIMESTAMP('2025-05-09 13:20:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Spring25_S003_T11_Flight_Schedule VALUES ('FS017', TO_TIMESTAMP('2025-05-09 13:50:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2025-08-21', 'YYYY-MM-DD'), TO_TIMESTAMP('2025-05-09 14:20:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-05-09 18:05:00', 'YYYY-MM-DD HH24:MI:SS'), 'T3', 'G25', TO_TIMESTAMP('2025-05-09 13:20:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Spring25_S003_T11_Flight_Schedule VALUES ('FS018', TO_TIMESTAMP('2025-05-09 13:50:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2025-02-09', 'YYYY-MM-DD'), TO_TIMESTAMP('2025-05-09 14:20:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-05-09 18:05:00', 'YYYY-MM-DD HH24:MI:SS'), 'T3', 'G21', TO_TIMESTAMP('2025-05-09 13:20:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Spring25_S003_T11_Flight_Tickets VALUES ('TK014', 'TK', 'P014', 'FS014');
INSERT INTO Spring25_S003_T11_Flight_Tickets VALUES ('TK016', 'JL', 'P016', 'FS016');
INSERT INTO Spring25_S003_T11_Flight_Tickets VALUES ('TK017', 'NH', 'P017', 'FS017');
INSERT INTO Spring25_S003_T11_Flight_Tickets VALUES ('TK018', 'AA', 'P018', 'FS018');


INSERT INTO Spring25_S003_T11_Airfare VALUES ('AF205', 'Business', 'DFW to NRT', 3, 'P014');
INSERT INTO Spring25_S003_T11_Airfare VALUES ('AF206', 'Business', 'DFW to IST', 4, 'P008');
INSERT INTO Spring25_S003_T11_Airfare VALUES ('AF207', 'Business', 'DFW to FRA', 2, 'P016');
INSERT INTO Spring25_S003_T11_Airfare VALUES ('AF208', 'Business', 'DFW to CDG', 3, 'P017');
INSERT INTO Spring25_S003_T11_Airfare VALUES ('AF209', 'Business', 'DFW to DXB', 3, 'P018');



-- ===================================================================
-- SECTION 3: MODIFY EXISTING DATA
-- ===================================================================

-- Update passenger nationality
UPDATE Spring25_S003_T11_Passengers SET Nationality = 'United States' WHERE Nationality = 'USA';
UPDATE Spring25_S003_T11_Passengers SET Nationality = 'United Kingdom' WHERE Nationality = 'UK';

-- Update flight times
UPDATE Spring25_S003_T11_Flight_Schedule 
SET Departure_time = TIMESTAMP '2025-06-01 09:00:00', 
    Arrival_time = TIMESTAMP '2025-06-01 15:00:00' 
WHERE Flight_schedule_ID = 'FS001';

-- Update aircraft seat counts
UPDATE Spring25_S003_T11_Aircraft SET Number_of_seats = 200 WHERE Aircraft_ID = 'AC001';

-- Update airfare class
UPDATE Spring25_S003_T11_Airfare SET Class = 'Premium Economy' WHERE Airfare_ID = 'AF001';

-- Update payment amounts
UPDATE Spring25_S003_T11_Pay SET Amount = 950.00 WHERE payment_ID = 'PAY001';
UPDATE Spring25_S003_T11_Pay SET Amount = 3800.00 WHERE payment_ID = 'PAY002';

-- Update phone numbers
UPDATE Spring25_S003_T11_Passengers_Phone_Number SET Phone_number = '123-456-9999' WHERE Phone_number = '123-456-7890';

-- Update email addresses
UPDATE Spring25_S003_T11_Passengers_Email SET Email = 'john.smith.updated@email.com' WHERE Email = 'john.smith@email.com';

-- ===================================================================
-- SECTION 4: DELETE DATA
-- ===================================================================

-- Delete a passenger's secondary email
DELETE FROM Spring25_S003_T11_Passengers_Email WHERE Email = 'jsmith.work@email.com';

-- Delete a passenger's secondary phone number
DELETE FROM Spring25_S003_T11_Passengers_Phone_Number WHERE Phone_number = '123-555-7777';

-- Delete an aircraft seat class
DELETE FROM Spring25_S003_T11_Aircraft_Seat_Class WHERE Seat_class = 'First' AND Aircraft_ID = 'A003';

-- Let's add a new passenger to delete completely
INSERT INTO Spring25_S003_T11_Passengers (Passengers_ID, Lname, Fname, Mname, Gender, Nationality, DOB) 
VALUES ('P020', 'Wilson', 'James', 'Robert', 'Male', 'Canada', DATE '1978-08-20');

INSERT INTO Spring25_S003_T11_Passengers_Phone_Number VALUES ('999-888-7777', 'P020');
INSERT INTO Spring25_S003_T11_Passengers_Email VALUES ('james.wilson@email.com', 'P020');

-- And now delete the passenger (cascading will take care of dependent records)
DELETE FROM Spring25_S003_T11_Passengers_Phone_Number WHERE Passengers_ID = 'P020';
DELETE FROM Spring25_S003_T11_Passengers_Email WHERE Passengers_ID = 'P020';
DELETE FROM Spring25_S003_T11_Passengers WHERE Passengers_ID = 'P020';

-- ===================================================================
-- SECTION 5: COMMIT CHANGES
-- ===================================================================

COMMIT;
