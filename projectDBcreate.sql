-- ===================================================================
-- Database Creation Script for International Flight Management System
-- Spring25_S003_T11_projectDBcreate.sql (Improved Version)
-- ===================================================================

-- Create Passengers table without Tickets_ID foreign key initially
CREATE TABLE Spring25_S003_T11_Passengers (
    Passengers_ID VARCHAR2(10) PRIMARY KEY,
    Lname VARCHAR2(50) NOT NULL,
    Fname VARCHAR2(50) NOT NULL,
    Mname VARCHAR2(50),
    Gender VARCHAR2(10) CHECK (Gender IN ('Male', 'Female', 'Prefer not to say')),
    Nationality VARCHAR2(50),
    DOB DATE
);

-- Create Airlines table
CREATE TABLE Spring25_S003_T11_Airlines (
    IATA_code VARCHAR2(3) PRIMARY KEY,
    Name VARCHAR2(100) NOT NULL,
    Nationality VARCHAR2(50),
    Alliances VARCHAR2(50)
);

-- Create Flight Schedule table
CREATE TABLE Spring25_S003_T11_Flight_Schedule (
    Flight_schedule_ID VARCHAR2(10) PRIMARY KEY,
    Flight_time TIMESTAMP,
    Date_of_travel DATE,
    Departure_time TIMESTAMP,
    Arrival_time TIMESTAMP,
    Terminal VARCHAR2(10),
    Boarding_gate VARCHAR2(10),
    Boarding_time TIMESTAMP,
    CHECK (Boarding_time < Departure_time),
    CHECK (Departure_time < Arrival_time)
);

-- Create Aircraft table
CREATE TABLE Spring25_S003_T11_Aircraft (
    Aircraft_ID VARCHAR2(10) PRIMARY KEY,
    Number_of_seats NUMBER NOT NULL,
    Model VARCHAR2(50) NOT NULL,
    Year_of_manufacture NUMBER,
    Manufacture_company VARCHAR2(100),
    IATA_code VARCHAR2(3),
    FOREIGN KEY (IATA_code) REFERENCES Spring25_S003_T11_Airlines(IATA_code)
);

-- Create Aircraft_seat_class table
CREATE TABLE Spring25_S003_T11_Aircraft_Seat_Class (
    Seat_class VARCHAR2(20),
    Aircraft_ID VARCHAR2(10),
    PRIMARY KEY (Seat_class, Aircraft_ID),
    FOREIGN KEY (Aircraft_ID) REFERENCES Spring25_S003_T11_Aircraft(Aircraft_ID)
);

-- Create Flight Tickets table
CREATE TABLE Spring25_S003_T11_Flight_Tickets (
    Tickets_ID VARCHAR2(10) PRIMARY KEY,
    IATA_code VARCHAR2(3) NOT NULL,
    Passenger_ID VARCHAR2(10) NOT NULL,
    Flight_schedule_ID VARCHAR2(10) NOT NULL,
    FOREIGN KEY (IATA_code) REFERENCES Spring25_S003_T11_Airlines(IATA_code),
    FOREIGN KEY (Passenger_ID) REFERENCES Spring25_S003_T11_Passengers(Passengers_ID),
    FOREIGN KEY (Flight_schedule_ID) REFERENCES Spring25_S003_T11_Flight_Schedule(Flight_schedule_ID)
);

-- Now add Tickets_ID foreign key to Passengers table
ALTER TABLE Spring25_S003_T11_Passengers 
ADD (
    Tickets_ID VARCHAR2(10),
    FOREIGN KEY (Tickets_ID) REFERENCES Spring25_S003_T11_Flight_Tickets(Tickets_ID)
);

-- Create Passengers_phone_number table
CREATE TABLE Spring25_S003_T11_Passengers_Phone_Number (
    Phone_number VARCHAR2(20),
    Passengers_ID VARCHAR2(10),
    PRIMARY KEY (Phone_number, Passengers_ID),
    FOREIGN KEY (Passengers_ID) REFERENCES Spring25_S003_T11_Passengers(Passengers_ID)
);

-- Create Passengers_email table
CREATE TABLE Spring25_S003_T11_Passengers_Email (
    Email VARCHAR2(100),
    Passengers_ID VARCHAR2(10),
    PRIMARY KEY (Email, Passengers_ID),
    FOREIGN KEY (Passengers_ID) REFERENCES Spring25_S003_T11_Passengers(Passengers_ID)
);

-- Create Airfare table
CREATE TABLE Spring25_S003_T11_Airfare (
    Airfare_ID VARCHAR2(10) PRIMARY KEY,
    Class VARCHAR2(20) CHECK (Class IN ('Economy', 'Premium Economy', 'Business', 'First')),
    Flight_route VARCHAR2(100),
    Number_of_baggage NUMBER DEFAULT 0,
    Passenger_ID VARCHAR2(10),
    FOREIGN KEY (Passenger_ID) REFERENCES Spring25_S003_T11_Passengers(Passengers_ID)
);

-- Create Pay table
CREATE TABLE Spring25_S003_T11_Pay (
    payment_ID VARCHAR2(10) PRIMARY KEY,
    Passenger_ID VARCHAR2(10) NOT NULL,
    Airfare_ID VARCHAR2(10) NOT NULL,
    Payment_date DATE DEFAULT SYSDATE,
    Amount NUMBER(10,2) NOT NULL,
    Currency VARCHAR2(3) DEFAULT 'USD',
    FOREIGN KEY (Passenger_ID) REFERENCES Spring25_S003_T11_Passengers(Passengers_ID),
    FOREIGN KEY (Airfare_ID) REFERENCES Spring25_S003_T11_Airfare(Airfare_ID)
);

-- Create Provide table
CREATE TABLE Spring25_S003_T11_Provide (
    IATA_code VARCHAR2(3),
    Tickets_ID VARCHAR2(10),
    PRIMARY KEY (IATA_code, Tickets_ID),
    FOREIGN KEY (IATA_code) REFERENCES Spring25_S003_T11_Airlines(IATA_code),
    FOREIGN KEY (Tickets_ID) REFERENCES Spring25_S003_T11_Flight_Tickets(Tickets_ID)
);

-- Create Purchase table
CREATE TABLE Spring25_S003_T11_Purchase (
    Passenger_ID VARCHAR2(10),
    Tickets_ID VARCHAR2(10),
    Purchase_date DATE DEFAULT SYSDATE,
    PRIMARY KEY (Passenger_ID, Tickets_ID),
    FOREIGN KEY (Passenger_ID) REFERENCES Spring25_S003_T11_Passengers(Passengers_ID),
    FOREIGN KEY (Tickets_ID) REFERENCES Spring25_S003_T11_Flight_Tickets(Tickets_ID)
);

-- Create Destinations table
CREATE TABLE Spring25_S003_T11_Destinations (
    Destination_ID VARCHAR2(10) PRIMARY KEY,
    Airport_name VARCHAR2(100) NOT NULL,
    Country VARCHAR2(50) NOT NULL,
    City VARCHAR2(50) NOT NULL,
    Passengers_ID VARCHAR2(10),
    FOREIGN KEY (Passengers_ID) REFERENCES Spring25_S003_T11_Passengers(Passengers_ID)
);

-- Create Operate table
CREATE TABLE Spring25_S003_T11_Operate (
    IATA_code VARCHAR2(3),
    Aircraft_ID VARCHAR2(10),
    PRIMARY KEY (IATA_code, Aircraft_ID),
    FOREIGN KEY (IATA_code) REFERENCES Spring25_S003_T11_Airlines(IATA_code),
    FOREIGN KEY (Aircraft_ID) REFERENCES Spring25_S003_T11_Aircraft(Aircraft_ID)
);
