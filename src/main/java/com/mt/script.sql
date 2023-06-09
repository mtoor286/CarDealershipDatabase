
-- Table 1:
CREATE TABLE Dealerships(
	id int NOT NULL,
    name varchar(50),
    address varchar(50),
    phone int,
    zip int,
    PRIMARY KEY(id)
);
INSERT INTO Dealerships VALUES(1, 'RoCars', '123 Kingston rd', 9801231234, 28476);
INSERT INTO Dealerships VALUES(2, 'RoCars', '581 Erwin rd', 9809876007, 27314);

--  Table 2:
CREATE TABLE Vehicles(
    vin int,
    name varchar(12),
    year int,
    sold varchar(12),
    PRIMARY KEY(vin)
);
INSERT INTO Vehicles VALUES(12345, 'Civic Type-R', 2020, 'yes');
INSERT INTO Vehicles VALUES(13579, 'Toyota Supra', 2021, 'yes');
INSERT INTO Vehicles VALUES(24680, 'Nissan GTR', 2019, 'no');
INSERT INTO Vehicles VALUES(12457, 'Audi R8', 2013, 'no');
INSERT INTO Vehicles VALUES(23568, 'BMW m3', 2022, 'yes');
INSERT INTO Vehicles VALUES(19876, 'Hummer EV', 2022, 'no');

-- Table 3:
CREATE TABLE Inventory(
	id int NOT NULL,
    vin varchar(12),
    dealershipId int
    PRIMARY KEY(id)
);
INSERT INTO Inventory VALUES(3, 24680, 1);
INSERT INTO Inventory VALUES(4, 12457, 2);
INSERT INTO Inventory VALUES(6, 19876, 1);

-- Table 4:
CREATE TABLE Sales_Contract(
	id int NOT NULL,
    nameOnContract varchar(12),
    phone int,
    vinOfVehicleAcquired int,
    PRIMARY KEY(id)
);
INSERT INTO Sales_Contract VALUES(1, 'Alex ', 9801234567, 12345);
INSERT INTO Sales_Contract VALUES(2, 'Smith', 3070071234, 13579);
INSERT INTO Sales_Contract VALUES(5, 'John', 9801239876, 23568);


