Use dreamhome;
INSERT INTO BRANCH(branchNo,street,city,postcode)
VALUES ('B005','22 Deer Rd','London','SW1 4EH');
INSERT INTO BRANCH(branchNo,street,city,postcode)
VALUES 
('B007','16 Argyll St','Aberdeen','AB2 3SU'),
('B003','163 Main St','Glasgow','Gil 9QX'),
('B004','32 Manse Rd','Bristol','BS99 1NZ'),
('B002','56 Clover Dr','London','NW10 6EU');

INSERT INTO STAFF (staffNo, fName, lName, position, sex, DoB, salary, branchNo)
VALUES ('SL21', 'John', 'White', 'Manager', 'M', '1945-10-01', '30000', 'B005');
INSERT INTO STAFF (staffNo, fName, lName, position, sex, DoB, salary, branchNo)
VALUES ('SG37', 'Ann', 'Beech', 'Assistant', 'F', '1960-11-10', '12000', 'B003');
INSERT INTO STAFF (staffNo, fName, lName, position, sex, DoB, salary, branchNo)
VALUES ('SG14', 'David', 'Ford', 'Superviser', 'M', '1958-05-24', '18000', 'B003');
INSERT INTO STAFF (staffNo, fName, lName, position, sex, DoB, salary, branchNo)
VALUES ('SA9', 'Mary', 'Howe', 'Assistant', 'F', '1970-02-19', '9000', 'B007');
INSERT INTO STAFF (staffNo, fName, lName, position, sex, DoB, salary, branchNo)
VALUES ('SG5', 'Susan', 'Brand', 'Manager', 'F', '1940-07-03', '24000', 'B003');
INSERT INTO STAFF (staffNo, fName, lName, position, sex, DoB, salary, branchNo)
VALUES ('SL41', 'Julie', 'Lee', 'Assistant', 'F', '1965-06-13', '9000', 'B005');
SELECT * FROM STAFF;
INSERT INTO PRIVATEOWNER (ownerNo, fName, lName, address, telNo)
VALUES ('CO46', 'Joe', 'Keogh', '2 Fergus Dr,Aberdeen AB2 7SX', '01224-861212');
INSERT INTO PRIVATEOWNER (ownerNo, fName, lName, address, telNo)
VALUES ('CO87', 'Carol', 'Farrel', '6 Achray St,Glasgow G32 9DX', '0141-357-7419');
INSERT INTO PRIVATEOWNER (ownerNo, fName, lName, address, telNo)
VALUES ('CO40', 'Tina', 'Murphy', '63 Well St,Glasgow G42', '0141-943-1728');
INSERT INTO PRIVATEOWNER (ownerNo, fName, lName, address, telNo)
VALUES ('CO93', 'Tony', 'Shaw', '12 Park Pl,Glasgow G4 0QR', '0141-225-7025');
SELECT * FROM PRIVATEOWNER;
INSERT INTO PROPERTYFORRENT (propertyNo, street, city, postcode, type, rooms, rent, ownerNo, staffNo, branchNo)
VALUES ('PA14', '16 Holhead', 'Aberdeen', 'AB7 5SU', 'House', '6', '650', 'CO46', 'SA9', 'B007');
INSERT INTO PROPERTYFORRENT (propertyNo, street, city, postcode, type, rooms, rent, ownerNo, staffNo, branchNo)
VALUES ('PL94', '6 Argyll St', 'London', 'NW2', 'Flat', '4', '400', 'CO87', 'SA9', 'B007');
INSERT INTO PROPERTYFORRENT (propertyNo, street, city, postcode, type, rooms, rent, ownerNo, staffNo, branchNo)
VALUES ('PG4', '6 Lawrence St', 'Glasgow', 'G11 9QX', 'Flat', '3', '350', 'CO40', null, 'B003');
INSERT INTO PROPERTYFORRENT (propertyNo, street, city, postcode, type, rooms, rent, ownerNo, staffNo, branchNo)
VALUES ('PG36', '2 Manor Rd', 'Glasgow', 'G32 4QX', 'Flat', '3', '375', 'CO93', 'SG37', 'B003');
INSERT INTO PROPERTYFORRENT (propertyNo, street, city, postcode, type, rooms, rent, ownerNo, staffNo, branchNo)
VALUES ('PG21', '18 Dale Rd', 'Glasgow', 'G12', 'House', '5', '600', 'CO87', 'SG37', 'B003');
INSERT INTO PROPERTYFORRENT (propertyNo, street, city, postcode, type, rooms, rent, ownerNo, staffNo, branchNo)
VALUES ('PG16', '5 Novar Dr', 'Glasgow', 'G12 9AX', 'Flat', '4', '450', 'CO93', 'SG14', 'B003');
SELECT * FROM PROPERTYFORRENT;
INSERT INTO CLIENT (clientNo, fName, lName, telNo, prefType, maxRent)
VALUES ('CR76', 'John', 'Kay', '0207-774-5632', 'Flat', '425');
INSERT INTO CLIENT (clientNo, fName, lName, telNo, prefType, maxRent)
VALUES ('CR56', 'Aline', 'Stewart', '0141-848-1825', 'Flat', '350');
INSERT INTO CLIENT (clientNo, fName, lName, telNo, prefType, maxRent)
VALUES ('CR74', 'Mike', 'Ritchie', '01475-392178', 'House', '750');
INSERT INTO CLIENT (clientNo, fName, lName, telNo, prefType, maxRent)
VALUES ('CR62', 'Mary', 'Tregear', '01224-196720', 'Flat', '600');
SELECT * FROM CLIENT;

INSERT INTO VIEWING (clientNo,propertyNo, viewDate, comment)
VALUES ('CR56', 'PA14', '1904-05-24', 'too small'),
	   ('CR76', 'PG4', '1904-04-20', 'too remote'),
       ('CR56', 'PG4', '1904-05-26', null),
       ('CR62', 'PA14', '1904-05-14', 'no dining room'),
       ('CR56', 'PG36', '1904-04-28', null);
SELECT * FROM VIEWING;
INSERT INTO REGISTRATION (clientNo, branchNo, staffNo, dateJoined)
VALUES ('CR76', 'B005', 'SL41', '1904-01-02'),
	   ('CR56', 'B003', 'SG37', '1903-04-11'),
       ('CR74', 'B003', 'SG37', '1902-11-16'),
       ('CR62', 'B007', 'SA9', '1903-03-07');
SELECT * FROM REGISTRATION;

SELECT * FROM STAFF;

SELECT fName,lName, position, salary 
FROM STAFF 
WHERE salary BETWEEN 8000 AND 20000;

SELECT * 
FROM STAFF 
WHERE BranchNo IN ('B003', 'B007');

SELECT DISTINCT position 
FROM STAFF;

SELECT branchNo, street 
FROM BRANCH 
WHERE city = 'London';

SELECT * 
FROM STAFF 
WHERE fName LIKE '%an%';

SELECT clientNo, fName, lName 
FROM CLIENT
ORDER BY lName;


SELECT propertyNo, street, city, postcode
FROM PROPERTYFORRENT
WHERE staffNo IS NULL;

SELECT branchNo, COUNT(*) AS PropertyCount
FROM PROPERTYFORRENT
GROUP BY branchNo;

SELECT *
FROM PROPERTYFORRENT
ORDER BY rent DESC;

SELECT propertyNo, street, city, rent * 12 AS AnnualRent
FROM PROPERTYFORRENT;

SELECT staffNo, fName, lName, position, salary
FROM STAFF
WHERE position != 'Manager' AND salary >= 12000;

SELECT COUNT(*) AS ManagerCount
FROM STAFF
WHERE position = 'Manager';

SELECT AVG(salary) AS AverageSalary
FROM STAFF;

SELECT branchNo, AVG(salary) AS AverageSalary
FROM STAFF
GROUP BY branchNo;

SELECT branchNo, COUNT(*) AS StaffCount, AVG(salary) AS AverageSalary
FROM STAFF
GROUP BY branchNo
HAVING COUNT(*) > 1;

SELECT MAX(salary) AS HighestSalary, MIN(salary) AS LowestSalary, 
       MAX(salary) - MIN(salary) AS SalaryDifference
FROM STAFF;

SELECT COUNT(*) AS PropertiesWith3Rooms
FROM PROPERTYFORRENT
WHERE rooms = 3;

SELECT position, AVG(salary) AS AverageSalary
FROM STAFF
WHERE position IN ('Assistant', 'Manager')
GROUP BY position;

SELECT propertyNo, street, city, ROUND(rent / 4, 2) AS WeeklyRent
FROM PROPERTYFORRENT;

SELECT propertyNo, street, city
FROM PROPERTYFORRENT
WHERE propertyNo NOT IN (
    SELECT DISTINCT propertyNo
    FROM VIEWING
);
