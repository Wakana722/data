-- Spring25_S003_T11_projectDBdrop.sql

ALTER TABLE Spring25_S003_T11_Passengers
DROP CONSTRAINT SYS_C00938680;  
ALTER TABLE Spring25_S003_T11_Passengers
DROP COLUMN Tickets_ID;

-- Drop tables in reverse order of their creation to avoid foreign key constraint issues

-- Drop Operate table
DROP TABLE Spring25_S003_T11_Operate;

-- Drop Destinations table
DROP TABLE Spring25_S003_T11_Destinations;

-- Drop Purchase table
DROP TABLE Spring25_S003_T11_Purchase;

-- Drop Provide table
DROP TABLE Spring25_S003_T11_Provide;

-- Drop Pay table
DROP TABLE Spring25_S003_T11_Pay;

-- Drop Airfare table
DROP TABLE Spring25_S003_T11_Airfare;

-- Drop Passengers_Email table
DROP TABLE Spring25_S003_T11_Passengers_Email;

-- Drop Passengers_Phone_Number table
DROP TABLE Spring25_S003_T11_Passengers_Phone_Number;

-- Drop Flight Tickets table
DROP TABLE Spring25_S003_T11_Flight_Tickets;

-- Drop Aircraft_Seat_Class table
DROP TABLE Spring25_S003_T11_Aircraft_Seat_Class;

-- Drop Aircraft table
DROP TABLE Spring25_S003_T11_Aircraft;

-- Drop Flight Schedule table
DROP TABLE Spring25_S003_T11_Flight_Schedule;

-- Drop Airlines table
DROP TABLE Spring25_S003_T11_Airlines;

-- Drop Passengers table
DROP TABLE Spring25_S003_T11_Passengers;

-- Verification message
SELECT 'All International Flight Management System tables have been dropped successfully!' FROM dual;
