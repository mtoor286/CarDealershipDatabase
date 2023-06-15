
-- Table 1 :

    CREATE TABLE dealerships (
    dealership_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    address VARCHAR(50),
    phone VARCHAR(12)
    );

    INSERT INTO dealerships (name, address, phone)
    VALUES
    ('Moon Motors', '123 Smith Rd', '980-123-1234'),
    ('VIP Motors', '456 Kingston Rd', '980-456-4567'),
    ('RoCar', '789 Plaza St', '980-789-7890'),
    ('SunCity Motors', '102 Sprirt St', '980-246-2468'),
    ('Class Cars', '304 Hunters Rd', '980-135-1357');

-- Table 2 :

    CREATE TABLE vehicles (
    VIN VARCHAR(20) NOT NULL PRIMARY KEY,
    SOLD BOOLEAN DEFAULT FALSE,
    color VARCHAR(20),
    vehicle_type VARCHAR(20)
    );

    INSERT INTO vehicles (VIN, SOLD, color, vehicle_type)
     VALUES
     ('1QGCM826331H23459', TRUE, 'Red', 'Coupe'),
     ('7S1WC5G00F1234567', FALSE, 'Blue', 'Sedan'),
     ('4NZCM7AJ9DM123456', FALSE, 'Red', 'SUV'),
     ('2W3BMHB68B1234563', TRUE, 'Silver', 'Convertible'),
     ('6K08C321758923431', TRUE, 'Black', 'Coupe'),
     ('9A5LC123416129450', FALSE, 'White', 'Sedan');

-- Table 3 :

    CREATE TABLE inventory (
    dealership_id INT,
    VIN VARCHAR(20),
    PRIMARY KEY (dealership_id, VIN),
    FOREIGN KEY (dealership_id) REFERENCES dealerships (dealership_id),
    FOREIGN KEY (VIN) REFERENCES vehicles (VIN)
    );

    INSERT INTO inventory (dealership_id, VIN)
    VALUES
    (1, '1QGCM826331H23459'),
    (1, '7S1WC5G00F1234567'),
    (1, '4NZCM7AJ9DM123456'),
    (1, '2W3BMHB68B1234563'),
    (1, '6K08C321758923431'),
    (1, '9A5LC123416129450');

-- Table 4 :

    CREATE TABLE sales_contracts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    VIN VARCHAR(20),
    sale_date DATE,
    FOREIGN KEY (VIN) REFERENCES vehicles(VIN)
    );

    INSERT INTO sales_contracts (VIN, sale_date)
    VALUES
    ('1QGCM826331H23459', '2023-01-19'),
    ('7S1WC5G00F1234567', '2023-04-08'),
    ('4NZCM7AJ9DM123456', '2023-05-16'),
    ('2W3BMHB68B1234563', '2023-07-09'),
    ('6K08C321758923431', '2023-09-28'),
    ('9A5LC123416129450', '2023-11-06');