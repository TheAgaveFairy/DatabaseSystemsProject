DROP TABLE IF EXISTS EMPLOYEE;
DROP TABLE IF EXISTS LOCATION;
CREATE TABLE LOCATION (
    LOCATION_ID INT PRIMARY KEY AUTO_INCREMENT,
    LOCATION_NAME VARCHAR(45),
    LOCATION_ADDRESS VARCHAR(100)
);

CREATE TABLE EMPLOYEE (
    EMPLOYEE_ID INT PRIMARY KEY AUTO_INCREMENT,
    EMPLOYEE_NAME VARCHAR(45) NOT NULL,
    EMPLOYEE_ROLE VARCHAR(45),
    LOCATION INT,
    EMPLOYEE_HOURLY_RATE FLOAT,
    CONSTRAINT FK_LOCATION FOREIGN KEY (LOCATION) REFERENCES LOCATION(LOCATION_ID)
);
INSERT INTO LOCATION (LOCATION_NAME, LOCATION_ADDRESS) VALUES
('Airport', '9800 Airport Blvd, San Antonio, TX 78216'),
('Pleasant Valley', '4500 Pleasant Valley Rd, San Antonio, TX 78222'),
('Oak Hill', '123 Oak Hill Rd, San Antonio, TX 78256'),
('Warehouse', '700 Warehouse Dr, San Antonio, TX 78218');

INSERT INTO EMPLOYEE (EMPLOYEE_NAME, EMPLOYEE_ROLE, LOCATION, EMPLOYEE_HOURLY_RATE) VALUES
('John Smith', 'Manager', 1, 35.50),
('Sarah Johnson', 'Employee', 2, 18.75),
('David Lee', 'Wine Buyer', 3, 27.00),
('Emily Davis', 'Assistant Manager', 1, 22.50),
('Michael Brown', 'Warehouse Supervisor', 4, 15.25),
('Jessica Taylor', 'Employee', 3, 19.00),
('Daniel Martinez', 'Manager', 2, 36.75),
('Laura Garcia', 'Assistant Supervisor', 4, 24.00),
('James Wilson', 'Wine Buyer', 1, 28.50),
('Sophia Harris', 'Employee', 2, 17.50),
('Jacob White', 'Warehouse Worker', 4, 16.00),
('Olivia Thomas', 'Employee', 1, 18.25),
('Ethan Lewis', 'Manager', 3, 37.00),
('Isabella Walker', 'Assistant Manager', 2, 23.50),
('Matthew Robinson', 'Warehouse Worker', 4, 15.75),
('Mia Scott', 'Employee', 1, 19.50),
('Alexander Green', 'Wine Buyer', 2, 26.50),
('Emma Young', 'Employee', 2, 16.50),
('Benjamin Hall', 'Manager', 1, 35.00),
('Ava King', 'Assistant Manager', 2, 21.75),
('Lucas Wright', 'Warehouse Worker', 4, 15.00),
('Charlotte Lopez', 'Employee', 3, 18.00),
('Mason Hill', 'Assistant Supervisor', 4, 37.50),
('Amelia Adams', 'Employee', 2, 17.25),
('Henry Baker', 'Wine Buyer', 1, 27.25),
('Ella Gonzalez', 'Assistant Manager', 3, 22.00),
('Sebastian Perez', 'Warehouse Worker', 4, 16.25),
('Harper Carter', 'Manager', 2, 36.25),
('Jack Turner', 'Warehouse Worker', 4, 15.50),
('Lily Collins', 'Employee', 3, 18.50),
('William Ramirez', 'Assistant Manager', 2, 23.25),
('Abigail Parker', 'Wine Buyer', 3, 26.75),
('Logan Evans', 'Manager', 1, 35.75),
('Chloe Edwards', 'Employee', 3, 17.75),
('Elijah Stewart', 'Warehouse Worker', 4, 16.75),
('Avery Morris', 'Assistant Manager', 3, 22.25),
('Grace Rivera', 'Employee', 2, 18.50),
('Jackson Murphy', 'Assistant Manager', 1, 26.50),
('Sofia Flores', 'Warehouse Worker', 4, 15.75),
('Jayden Kelly', 'Employee', 2, 17.00),
('Layla Cooper', 'Manager', 3, 35.75);




