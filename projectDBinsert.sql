--  - INSERT SCRIPT: projectDBinsert.sql


-- === Spring25_S003_T11_Passengers ===
INSERT INTO Spring25_S003_T11_Passengers VALUES ('P001', 'Smith', 'John', 'David', 'Male', 'USA', TO_DATE('1985-03-15', 'YYYY-MM-DD'),NULL);
INSERT INTO Spring25_S003_T11_Passengers VALUES ('P002', 'Johnson', 'Emily', 'Rose', 'Female', 'Canada', TO_DATE('1990-07-22', 'YYYY-MM-DD'),NULL);
INSERT INTO Spring25_S003_T11_Passengers VALUES ('P003', 'Williams', 'Michael', 'James', 'Male', 'UK', TO_DATE('1978-11-05', 'YYYY-MM-DD'),NULL);
INSERT INTO Spring25_S003_T11_Passengers VALUES ('P004', 'Brown', 'Sophia', NULL, 'Female', 'Australia', TO_DATE('1995-02-18', 'YYYY-MM-DD'),NULL);
INSERT INTO Spring25_S003_T11_Passengers VALUES ('P005', 'Jones', 'Daniel', 'Thomas', 'Male', 'Germany', TO_DATE('1982-09-30', 'YYYY-MM-DD'),NULL);
INSERT INTO Spring25_S003_T11_Passengers VALUES ('P006', 'Garcia', 'Olivia', 'Maria', 'Female', 'Spain', TO_DATE('1988-05-12', 'YYYY-MM-DD'),NULL);
INSERT INTO Spring25_S003_T11_Passengers VALUES ('P007', 'Miller', 'William', 'Robert', 'Male', 'USA', TO_DATE('1975-12-25', 'YYYY-MM-DD'),NULL);
INSERT INTO Spring25_S003_T11_Passengers VALUES ('P008', 'Davis', 'Emma', 'Jane', 'Female', 'France', TO_DATE('1992-08-09', 'YYYY-MM-DD'),NULL);
INSERT INTO Spring25_S003_T11_Passengers VALUES ('P009', 'Rodriguez', 'Alexander', NULL, 'Male', 'Mexico', TO_DATE('1980-04-17', 'YYYY-MM-DD'),NULL);
INSERT INTO Spring25_S003_T11_Passengers VALUES ('P010', 'Martinez', 'Ava', 'Isabella', 'Female', 'Italy', TO_DATE('1998-01-29', 'YYYY-MM-DD'),NULL);
INSERT INTO Spring25_S003_T11_Passengers VALUES ('P011', 'Matsumoto', 'Yumiko', NULL, 'Female', 'Japan', TO_DATE('2000-10-10', 'YYYY-MM-DD'),NULL);
INSERT INTO Spring25_S003_T11_Passengers VALUES ('P012', 'Kondo', 'Tarako', NULL, 'Male', 'Japan', TO_DATE('2001-02-14', 'YYYY-MM-DD'),NULL);

-- === Spring25_S003_T11_Airlines ===
INSERT INTO Spring25_S003_T11_Airlines VALUES ('AA', 'American Airlines', 'USA', 'Oneworld');
INSERT INTO Spring25_S003_T11_Airlines VALUES ('UA', 'United Airlines', 'USA', 'Star Alliance');
INSERT INTO Spring25_S003_T11_Airlines VALUES ('DL', 'Delta AirLines', 'USA', 'SkyTeam');
INSERT INTO Spring25_S003_T11_Airlines VALUES ('BA', 'British Airways', 'UK', 'Oneworld');
INSERT INTO Spring25_S003_T11_Airlines VALUES ('DH', 'Lufthansa', 'Germany', 'Star Alliance');
INSERT INTO Spring25_S003_T11_Airlines VALUES ('AF', 'Air France', 'France', 'SkyTeam');
INSERT INTO Spring25_S003_T11_Airlines VALUES ('EK', 'Emirates', 'UAE', NULL);
INSERT INTO Spring25_S003_T11_Airlines VALUES ('SQ', 'Singapore Airlines', 'Singapore', 'Star Alliance');
INSERT INTO Spring25_S003_T11_Airlines VALUES ('QF', 'Qantas', 'Australia', 'Oneworld');
INSERT INTO Spring25_S003_T11_Airlines VALUES ('TK', 'Turkish Airlines', 'Turkey', 'Star Alliance');
INSERT INTO Spring25_S003_T11_Airlines VALUES ('NH', 'All Nippon Airlines', 'Japan', 'Star Alliance');
INSERT INTO Spring25_S003_T11_Airlines VALUES ('JL', 'Japan Airlines', 'Japan', 'Oneworld');


-- === Flight Schedule ===
INSERT INTO Spring25_S003_T11_Flight_Schedule VALUES ('FS001', TO_TIMESTAMP('2025-05-01 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2025-05-01', 'YYYY-MM-DD'), TO_TIMESTAMP('2025-05-01 08:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-05-01 11:45:00', 'YYYY-MM-DD HH24:MI:SS'), 'T1', 'G12', TO_TIMESTAMP('2025-05-01 07:30:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Spring25_S003_T11_Flight_Schedule VALUES ('FS002', TO_TIMESTAMP('2025-05-01 10:15:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2025-05-01', 'YYYY-MM-DD'), TO_TIMESTAMP('2025-05-01 10:45:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-05-01 14:20:00', 'YYYY-MM-DD HH24:MI:SS'), 'T2', 'G05', TO_TIMESTAMP('2025-05-01 09:45:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Spring25_S003_T11_Flight_Schedule VALUES ('FS003', TO_TIMESTAMP('2025-05-02 14:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2025-05-02', 'YYYY-MM-DD'), TO_TIMESTAMP('2025-05-02 15:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-05-02 17:15:00', 'YYYY-MM-DD HH24:MI:SS'), 'T3', 'G22', TO_TIMESTAMP('2025-05-02 14:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Spring25_S003_T11_Flight_Schedule VALUES ('FS004', TO_TIMESTAMP('2025-05-03 06:45:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2025-05-03', 'YYYY-MM-DD'), TO_TIMESTAMP('2025-05-03 07:15:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-05-03 12:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'T4', 'G08', TO_TIMESTAMP('2025-05-03 06:15:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Spring25_S003_T11_Flight_Schedule VALUES ('FS005', TO_TIMESTAMP('2025-05-04 18:20:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2025-05-04', 'YYYY-MM-DD'), TO_TIMESTAMP('2025-05-04 18:50:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-05-05 01:10:00', 'YYYY-MM-DD HH24:MI:SS'), 'T2', 'G14', TO_TIMESTAMP('2025-05-04 17:50:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Spring25_S003_T11_Flight_Schedule VALUES ('FS006', TO_TIMESTAMP('2025-05-05 09:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2025-05-05', 'YYYY-MM-DD'), TO_TIMESTAMP('2025-05-05 10:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-05-05 13:45:00', 'YYYY-MM-DD HH24:MI:SS'), 'T1', 'G18', TO_TIMESTAMP('2025-05-05 09:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Spring25_S003_T11_Flight_Schedule VALUES ('FS007', TO_TIMESTAMP('2025-05-06 16:15:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2025-05-06', 'YYYY-MM-DD'), TO_TIMESTAMP('2025-05-06 16:45:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-05-06 20:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'T3', 'G02', TO_TIMESTAMP('2025-05-06 15:45:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Spring25_S003_T11_Flight_Schedule VALUES ('FS008', TO_TIMESTAMP('2025-05-07 11:40:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2025-05-07', 'YYYY-MM-DD'), TO_TIMESTAMP('2025-05-07 12:10:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-05-07 15:55:00', 'YYYY-MM-DD HH24:MI:SS'), 'T4', 'G16', TO_TIMESTAMP('2025-05-07 11:10:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Spring25_S003_T11_Flight_Schedule VALUES ('FS009', TO_TIMESTAMP('2025-05-08 05:25:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2025-05-08', 'YYYY-MM-DD'), TO_TIMESTAMP('2025-05-08 05:55:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-05-08 09:40:00', 'YYYY-MM-DD HH24:MI:SS'), 'T2', 'G09', TO_TIMESTAMP('2025-05-08 04:55:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Spring25_S003_T11_Flight_Schedule VALUES ('FS010', TO_TIMESTAMP('2025-05-09 13:50:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2025-05-09', 'YYYY-MM-DD'), TO_TIMESTAMP('2025-05-09 14:20:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-05-09 18:05:00', 'YYYY-MM-DD HH24:MI:SS'), 'T1', 'G21', TO_TIMESTAMP('2025-05-09 13:20:00', 'YYYY-MM-DD HH24:MI:SS'));


-- === Spring25_S003_T11_Aircraft Table ===
INSERT INTO Spring25_S003_T11_Aircraft VALUES ('A001', 180, 'Boeing 737-800', 2018, 'Boeing', 'AA');
INSERT INTO Spring25_S003_T11_Aircraft VALUES ('A002', 300, 'Boeing 777-300ER', 2015, 'Boeing', 'UA');
INSERT INTO Spring25_S003_T11_Aircraft VALUES ('A003', 220, 'Airbus A321neo', 2020, 'Airbus', 'DL');
INSERT INTO Spring25_S003_T11_Aircraft VALUES ('A004', 280, 'Boeing 787-9', 2019, 'Boeing', 'BA');
INSERT INTO Spring25_S003_T11_Aircraft VALUES ('A005', 250, 'Airbus A330-300', 2017, 'Airbus', 'DH');
INSERT INTO Spring25_S003_T11_Aircraft VALUES ('A006', 516, 'Airbus A380-800', 2016, 'Airbus', 'AF');
INSERT INTO Spring25_S003_T11_Aircraft VALUES ('A007', 550, 'Airbus A380-800', 2018, 'Airbus', 'EK');
INSERT INTO Spring25_S003_T11_Aircraft VALUES ('A008', 340, 'Boeing 777-300ER', 2017, 'Boeing', 'SQ');
INSERT INTO Spring25_S003_T11_Aircraft VALUES ('A009', 236, 'Boeing 787-9', 2020, 'Boeing', 'QF');
INSERT INTO Spring25_S003_T11_Aircraft VALUES ('A010', 170, 'Airbus A320neo', 2021, 'Airbus', 'TK');
INSERT INTO Spring25_S003_T11_Aircraft VALUES ('A011', 520, 'Airbus A380', 2019, 'Airbus', 'NH');
INSERT INTO Spring25_S003_T11_Aircraft VALUES ('A012', 239, 'Airbus A350-1000', 2024, 'Airbus', 'JL');

-- === Spring25_S003_T11_Aircraft Seat Class ===
INSERT INTO Spring25_S003_T11_Aircraft_Seat_Class VALUES ('Economy', 'A001');
INSERT INTO Spring25_S003_T11_Aircraft_Seat_Class VALUES ('Business', 'A001');
INSERT INTO Spring25_S003_T11_Aircraft_Seat_Class VALUES ('Economy', 'A002');
INSERT INTO Spring25_S003_T11_Aircraft_Seat_Class VALUES ('Business', 'A002');
INSERT INTO Spring25_S003_T11_Aircraft_Seat_Class VALUES ('First', 'A002');
INSERT INTO Spring25_S003_T11_Aircraft_Seat_Class VALUES ('Economy', 'A003');
INSERT INTO Spring25_S003_T11_Aircraft_Seat_Class VALUES ('Premium Economy', 'A003');
INSERT INTO Spring25_S003_T11_Aircraft_Seat_Class VALUES ('Business', 'A003');
INSERT INTO Spring25_S003_T11_Aircraft_Seat_Class VALUES ('Economy', 'A004');
INSERT INTO Spring25_S003_T11_Aircraft_Seat_Class VALUES ('Premium Economy', 'A004');

-- === Tickets ===
INSERT INTO Spring25_S003_T11_Flight_Tickets VALUES ('TK001', 'AA', 'P001', 'FS001');
INSERT INTO Spring25_S003_T11_Flight_Tickets VALUES ('TK002', 'UA', 'P002', 'FS002');
INSERT INTO Spring25_S003_T11_Flight_Tickets VALUES ('TK003', 'DL', 'P003', 'FS003');
INSERT INTO Spring25_S003_T11_Flight_Tickets VALUES ('TK004', 'BA', 'P004', 'FS004');
INSERT INTO Spring25_S003_T11_Flight_Tickets VALUES ('TK005', 'DH', 'P005', 'FS005');
INSERT INTO Spring25_S003_T11_Flight_Tickets VALUES ('TK006', 'AF', 'P006', 'FS006');
INSERT INTO Spring25_S003_T11_Flight_Tickets VALUES ('TK007', 'EK', 'P007', 'FS007');
INSERT INTO Spring25_S003_T11_Flight_Tickets VALUES ('TK008', 'SQ', 'P008', 'FS008');
INSERT INTO Spring25_S003_T11_Flight_Tickets VALUES ('TK009', 'QF', 'P009', 'FS009');
INSERT INTO Spring25_S003_T11_Flight_Tickets VALUES ('TK010', 'TK', 'P010', 'FS010');


-- Insert data into Spring25_S003_T11_Passengers_Phone_Number table
INSERT INTO Spring25_S003_T11_Passengers_Phone_Number VALUES ('123-456-7890', 'P001');
INSERT INTO Spring25_S003_T11_Passengers_Phone_Number VALUES ('234-567-8901', 'P002');
INSERT INTO Spring25_S003_T11_Passengers_Phone_Number VALUES ('345-678-9012', 'P003');
INSERT INTO Spring25_S003_T11_Passengers_Phone_Number VALUES ('456-789-0123', 'P004');
INSERT INTO Spring25_S003_T11_Passengers_Phone_Number VALUES ('567-890-1234', 'P005');
INSERT INTO Spring25_S003_T11_Passengers_Phone_Number VALUES ('678-901-2345', 'P006');
INSERT INTO Spring25_S003_T11_Passengers_Phone_Number VALUES ('789-012-3456', 'P007');
INSERT INTO Spring25_S003_T11_Passengers_Phone_Number VALUES ('890-123-4567', 'P008');
INSERT INTO Spring25_S003_T11_Passengers_Phone_Number VALUES ('901-234-5678', 'P009');
INSERT INTO Spring25_S003_T11_Passengers_Phone_Number VALUES ('012-345-6789', 'P010');
INSERT INTO Spring25_S003_T11_Passengers_Phone_Number VALUES ('090-216-3121', 'P011');
INSERT INTO Spring25_S003_T11_Passengers_Phone_Number VALUES ('070-356-1231', 'P012');

-- Insert data into Spring25_S003_T11_Passengers_Email table
INSERT INTO Spring25_S003_T11_Passengers_Email VALUES ('john.smith@email.com', 'P001');
INSERT INTO Spring25_S003_T11_Passengers_Email VALUES ('emily.johnson@email.com', 'P002');
INSERT INTO Spring25_S003_T11_Passengers_Email VALUES ('michael.williams@email.com', 'P003');
INSERT INTO Spring25_S003_T11_Passengers_Email VALUES ('sophia.brown@email.com', 'P004');
INSERT INTO Spring25_S003_T11_Passengers_Email VALUES ('daniel.jones@email.com', 'P005');
INSERT INTO Spring25_S003_T11_Passengers_Email VALUES ('olivia.garcia@email.com', 'P006');
INSERT INTO Spring25_S003_T11_Passengers_Email VALUES ('william.miller@email.com', 'P007');
INSERT INTO Spring25_S003_T11_Passengers_Email VALUES ('emma.davis@email.com', 'P008');
INSERT INTO Spring25_S003_T11_Passengers_Email VALUES ('alexander.rodriguez@email.com', 'P009');
INSERT INTO Spring25_S003_T11_Passengers_Email VALUES ('ava.martinez@email.com', 'P010');
INSERT INTO Spring25_S003_T11_Passengers_Email VALUES ('yumi.matsu@email.com', 'P011');
INSERT INTO Spring25_S003_T11_Passengers_Email VALUES ('tarakotarako@email.com', 'P012');

-- === Spring25_S003_T11_Airfare ===
INSERT INTO Spring25_S003_T11_Airfare VALUES ('AF201', 'Economy', 'DFW to DOH', 1, 'P001');
INSERT INTO Spring25_S003_T11_Airfare VALUES ('AF202', 'Business', 'DFW to LHR', 2, 'P002');
INSERT INTO Spring25_S003_T11_Airfare VALUES ('AF203', 'Economy', 'DFW to IST', 1, 'P003');
INSERT INTO Spring25_S003_T11_Airfare VALUES ('AF204', 'First', 'DFW to NRT', 3, 'P004');

-- === Pay (Passenger → Spring25_S003_T11_Airfare) ===
INSERT INTO Spring25_S003_T11_Pay VALUES (1001, 'P001', 'AF201', TO_TIMESTAMP('2025-05-17 11:01:00', 'YYYY-MM-DD HH24:MI:SS'), 3, 210);
INSERT INTO Spring25_S003_T11_Pay VALUES (1002, 'P002', 'AF202', TO_TIMESTAMP('2025-06-22 04:15:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 120);


-- === Provide (Airline provides ticket) ===
INSERT INTO Spring25_S003_T11_Provide VALUES ('AA', 'TK001');
INSERT INTO Spring25_S003_T11_Provide VALUES ('UA', 'TK002');
INSERT INTO Spring25_S003_T11_Provide VALUES ('DL', 'TK003');
INSERT INTO Spring25_S003_T11_Provide VALUES ('BA', 'TK004');
INSERT INTO Spring25_S003_T11_Provide VALUES ('DH', 'TK005');
INSERT INTO Spring25_S003_T11_Provide VALUES ('AF', 'TK006');
INSERT INTO Spring25_S003_T11_Provide VALUES ('EK', 'TK007');
INSERT INTO Spring25_S003_T11_Provide VALUES ('SQ', 'TK008');
INSERT INTO Spring25_S003_T11_Provide VALUES ('QF', 'TK009');
INSERT INTO Spring25_S003_T11_Provide VALUES ('TK', 'TK010');


-- === Purchase (Passenger purchases ticket) ===
INSERT INTO Spring25_S003_T11_Purchase VALUES ('P001', 'TK001', TO_TIMESTAMP('2025-04-21 10:20:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Spring25_S003_T11_Purchase VALUES ('P002', 'TK002', TO_TIMESTAMP('2025-06-01 08:10:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Spring25_S003_T11_Purchase VALUES ('P003', 'TK003', TO_TIMESTAMP('2025-06-01 08:10:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Spring25_S003_T11_Purchase VALUES ('P004', 'TK004', TO_TIMESTAMP('2025-06-01 08:10:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Spring25_S003_T11_Purchase VALUES ('P005', 'TK005', TO_TIMESTAMP('2025-06-01 08:10:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Spring25_S003_T11_Purchase VALUES ('P006', 'TK006', TO_TIMESTAMP('2025-06-01 08:10:00', 'YYYY-MM-DD HH24:MI:SS'));

-- === Spring25_S003_T11_Destinations ===
INSERT INTO Spring25_S003_T11_Destinations VALUES ('D001', 'John F. Kennedy International Airport', 'USA', 'New York', 'P001');
INSERT INTO Spring25_S003_T11_Destinations VALUES ('D002', 'Los Angeles International Airport', 'USA', 'Los Angeles', 'P002');
INSERT INTO Spring25_S003_T11_Destinations VALUES ('D003', 'Heathrow Airport', 'UK', 'London', 'P003');
INSERT INTO Spring25_S003_T11_Destinations VALUES ('D004', 'Charles de Gaulle Airport', 'France', 'Paris', 'P004');
INSERT INTO Spring25_S003_T11_Destinations VALUES ('D005', 'Frankfurt Airport', 'Germany', 'Frankfurt', 'P005');
INSERT INTO Spring25_S003_T11_Destinations VALUES ('D006', 'Tokyo Haneda Airport', 'Japan', 'Tokyo', 'P006');
INSERT INTO Spring25_S003_T11_Destinations VALUES ('D007', 'Sydney Airport', 'Australia', 'Sydney', 'P007');
INSERT INTO Spring25_S003_T11_Destinations VALUES ('D008', 'Dubai International Airport', 'UAE', 'Dubai', 'P008');
INSERT INTO Spring25_S003_T11_Destinations VALUES ('D009', 'Hong Kong International Airport', 'China', 'Hong Kong', 'P009');
INSERT INTO Spring25_S003_T11_Destinations VALUES ('D010', 'Singapore Changi Airport', 'Singapore', 'Singapore', 'P010');





-- === Spring25_S003_T11_Operate ===

INSERT INTO Spring25_S003_T11_Operate VALUES ('AA', 'A001');
INSERT INTO Spring25_S003_T11_Operate VALUES ('UA', 'A002');
INSERT INTO Spring25_S003_T11_Operate VALUES ('DL', 'A003');
INSERT INTO Spring25_S003_T11_Operate VALUES ('BA', 'A004');
INSERT INTO Spring25_S003_T11_Operate VALUES ('DH', 'A005');
INSERT INTO Spring25_S003_T11_Operate VALUES ('AF', 'A006');
INSERT INTO Spring25_S003_T11_Operate VALUES ('EK', 'A007');
INSERT INTO Spring25_S003_T11_Operate VALUES ('SQ', 'A008');
INSERT INTO Spring25_S003_T11_Operate VALUES ('QF', 'A009');
INSERT INTO Spring25_S003_T11_Operate VALUES ('TK', 'A010');
INSERT INTO Spring25_S003_T11_Operate VALUES ('NH', 'A011');
INSERT INTO Spring25_S003_T11_Operate VALUES ('JL', 'A012');
