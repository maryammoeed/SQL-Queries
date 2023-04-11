
/*creating tables*/
CREATE TABLE PLANE_TYPE (
  Model INT PRIMARY KEY,
  Capacity INT,
  Weight INT);

CREATE TABLE HANGAR (
  Number INT PRIMARY KEY,
  Capacity INT,
  Location VARCHAR(30));

CREATE TABLE AIRPLANE(
  Reg# INT PRIMARY KEY,
  OF_TYPE INT,
  STORED_IN INT,
  FOREIGN KEY (OF_TYPE) REFERENCES PLANE_TYPE(Model),
  FOREIGN KEY (STORED_IN) REFERENCES HANGAR(Number));

CREATE TABLE OWNER (
  ID INT PRIMARY KEY,
  Type VARCHAR(10),
  Name VARCHAR(30),
  Address VARCHAR(50),
  PhoneNumber VARCHAR(25));

CREATE TABLE EMPLOYEE (
  ID INT PRIMARY KEY,
  Type VARCHAR(10),
  Name VARCHAR(30),
  Address VARCHAR(50),
  PhoneNumber VARCHAR(25),
  Salary FLOAT,
  Shift VARCHAR(15));

CREATE TABLE PERSON (
  ID INT PRIMARY KEY,
  Type VARCHAR(10),
  Name VARCHAR(30),
  Address VARCHAR(50),
  Phone VARCHAR(25),
  SSN VARCHAR(20));

CREATE TABLE PILOT (
  ID INT PRIMARY KEY,
  Lic_num VARCHAR(15),
  Restr VARCHAR(65),
  FOREIGN KEY (ID) REFERENCES PERSON(ID));

CREATE TABLE CORPORATION (
  ID INT PRIMARY KEY,
  Type VARCHAR(25),
  Name VARCHAR(30),
  Address VARCHAR(50),
  Phone VARCHAR(25));

CREATE TABLE SERVICE (
  ID INT PRIMARY KEY,
  Date DATE,
  Hours INT,
  Work_code VARCHAR(30));

CREATE TABLE OWNS (
  AIRPLANE_RegNum INT,
  OWNER_ID INT,
  Pdate DATE,
  PRIMARY KEY (AIRPLANE_RegNum, OWNER_ID),
  FOREIGN KEY (AIRPLANE_RegNum) REFERENCES AIRPLANE(Reg#),
  FOREIGN KEY (OWNER_ID) REFERENCES OWNER(ID));

CREATE TABLE MAINTAIN (
  EMPLOYEE_ID INT,
  SERVICE_ID INT,
  PRIMARY KEY (EMPLOYEE_ID, SERVICE_ID),
  FOREIGN KEY (EMPLOYEE_ID) REFERENCES EMPLOYEE(ID),
  FOREIGN KEY (SERVICE_ID) REFERENCES SERVICE(ID));

CREATE TABLE FLIES (
  PILOT_ID INT,
  PLANE_TYPE_Model INT,
  PRIMARY KEY (PILOT_ID, PLANE_TYPE_Model),
  FOREIGN KEY (PILOT_ID) REFERENCES PILOT(ID),
  FOREIGN KEY (PLANE_TYPE_Model) REFERENCES PLANE_TYPE(Model));

CREATE TABLE WORKS_ON (
  EMPLOYEE_ID INT,
  PLANE_TYPE_Model INT,
  PRIMARY KEY (EMPLOYEE_ID, PLANE_TYPE_Model),
  FOREIGN KEY (EMPLOYEE_ID) REFERENCES EMPLOYEE(ID),
  FOREIGN KEY (PLANE_TYPE_Model) REFERENCES PLANE_TYPE(Model));

/*inserting values*/
INSERT INTO PLANE_TYPE (Model, Capacity, Weight)
VALUES
(21, 2100, 90000),
(1, 100, 2000),
(2, 200, 4000),
(3, 300, 6000),
(4, 400, 8000),
(5, 500, 10000),
(6, 600, 12000),
(7, 700, 14000),
(8, 800, 16000),
(9, 900, 18000),
(10, 1000, 20000),
(11, 1100, 22000),
(12, 1200, 24000),
(13, 1300, 26000),
(14, 1400, 28000),
(15, 1500, 30000),
(16, 1600, 32000),
(17, 1700, 34000),
(18, 1800, 36000),
(19, 1900, 38000),
(20, 2000, 40000);


INSERT INTO AIRPLANE (Reg#, OF_TYPE, STORED_IN) VALUES
(21, 2, 19),
(1, 1, 10),
(2, 2, 10),
(3, 3, 11),
(4, 4, 11),
(5, 5, 12),
(6, 6, 12),
(7, 7, 13),
(8, 8, 13),
(9, 9, 14),
(10, 10, 14),
(11, 11, 15),
(12, 12, 15),
(13, 13, 16),
(14, 14, 16),
(15, 15, 17),
(16, 16, 17),
(17, 17, 18),
(18, 18, 18),
(19, 19, 19),
(20, 20, 19);

INSERT INTO HANGAR (Number, Capacity, Location)
VALUES
(1, 50, 'New York'),
(2, 75, 'Los Angeles'),
(3, 100, 'Chicago'),
(4, 125, 'Houston'),
(5, 150, 'Miami'),
(6, 175, 'San Francisco'),
(7, 200, 'Dallas'),
(8, 225, 'Seattle'),
(9, 250, 'Atlanta'),
(10, 275, 'Boston'),
(11, 300, 'Washington DC'),
(12, 325, 'Denver'),
(13, 350, 'Phoenix'),
(14, 375, 'Las Vegas'),
(15, 400, 'New Orleans'),
(16, 425, 'Portland'),
(17, 450, 'San Diego'),
(18, 475, 'Minneapolis'),
(19, 500, 'Philadelphia'),
(20, 525, 'Detroit');


update HANGAR
set location = '123 Main St, Anytown USA'
where Number =1;

update HANGAR
set location = '456 Elm St, Anytown USA'
where Number =2;

update HANGAR
set location = '789 Oak St, Anytown USA'
where Number =3;

update HANGAR
set location = '321 Maple Ave, Anytown, USA'
where Number =4;

update HANGAR
set location = '654 Pine St, Anytown, USA'
where Number =5;

update HANGAR
set location = '987 Cedar St, Anytown, USA'
where Number=6;

update HANGAR
set location = '159 Birch St, Anytown, USA'
where Number =7;

update HANGAR
set location = '753 Spruce St, Anytown, USA'
where Number =8;

update HANGAR
set location = '246 Oakwood Ave, Anytown, USA'
where Number =9;

update HANGAR
set location = '369 Willow St, Anytown, USA'
where Number=10;

update HANGAR
set location = '582 Cherry St, Anytown, USA'
where Number=11;

update HANGAR
set location = '975 Maple Ave, Anytown, USA'
where Number=12;

update HANGAR
set location = '314 Elm St, Anytown, USA'
where Number=13;

update HANGAR
set location = '628 Pine St, Anytown, USA'
where Number=14;

update HANGAR
set location = '853 Cedar St, Anytown, USA'
where Number=15;

update HANGAR
set location = '942 Birch St, Anytown, USA'
where Number=16;

update HANGAR
set location = '777 Elm St, Anytown USA'
where Number=17;

update HANGAR
set location = '888 Oak St, Anytown USA'
where Number=18;

update HANGAR
set location = '999 Pine St, Anytown USA'
where Number=19;

update HANGAR
set location = '1111 Maple St, Anytown USA'
where Number=20;


INSERT INTO OWNER (ID, Type, Name, Address, PhoneNumber) VALUES
(1021, 'Company', 'YOYO Corporation', '4545 Maple St, Anytown USA', '555-0233'),
(1001, 'Individual', 'John Smith', '123 Main St, Anytown USA', '555-1234'),
(1002, 'Individual', 'Jane Doe', '456 Elm St, Anytown USA', '555-5678'),
(1003, 'Individual', 'Bob Johnson', '789 Oak St, Anytown USA', '555-9012'),
(1004, 'Individual', 'Samantha Williams', '321 Pine St, Anytown USA', '555-3456'),
(1005, 'Individual', 'Mike Davis', '654 Maple St, Anytown USA', '555-7890'),
(1006, 'Company', 'ABC Corp', '1001 Main St, Anytown USA', '555-1111'),
(1007, 'Company', 'XYZ Inc', '2002 Elm St, Anytown USA', '555-2222'),
(1008, 'Company', 'Acme Enterprises', '3003 Oak St, Anytown USA', '555-3333'),
(1009, 'Company', 'Smith & Co', '4004 Pine St, Anytown USA', '555-4444'),
(1010, 'Company', 'Johnson & Sons', '5005 Maple St, Anytown USA', '555-5555'),
(1011, 'Individual', 'David Lee', '111 Main St, Anytown USA', '555-1212'),
(1012, 'Individual', 'Amy Chen', '222 Elm St, Anytown USA', '555-2323'),
(1013, 'Individual', 'Juan Rodriguez', '333 Oak St, Anytown USA', '555-3434'),
(1014, 'Individual', 'Maria Hernandez', '444 Pine St, Anytown USA', '555-4545'),
(1015, 'Individual', 'Kim Nguyen', '555 Maple St, Anytown USA', '555-5656'),
(1016, 'Company', 'Doe Inc', '666 Main St, Anytown USA', '555-6767'),
(1017, 'Company', 'Johnson Enterprises', '777 Elm St, Anytown USA', '555-7878'),
(1018, 'Company', 'Smith Corporation', '888 Oak St, Anytown USA', '555-8989'),
(1019, 'Company', 'Acme Co', '999 Pine St, Anytown USA', '555-9090'),
(1020, 'Company', 'XYZ Corporation', '1111 Maple St, Anytown USA', '555-0202');



INSERT INTO EMPLOYEE (ID, Type, Name, Address, PhoneNumber, Salary, Shift)
VALUES
  (1001, 'Pilot', 'John Smith', '123 Main St, Anytown, USA', '555-1234', 80000, 'Day'),
  (1002, 'Pilot', 'Jane Doe', '456 Oak Ave, Anytown, USA', '555-5678', 80000, 'Night'),
  (1003, 'Mechanic', 'Bob Johnson', '789 Elm St, Anytown, USA', '555-9012', 50000, 'Day'),
  (1004, 'Mechanic', 'Sara Lee', '246 Walnut Dr, Anytown, USA', '555-3456', 50000, 'Night'),
  (1005, 'Manager', 'Mark Williams', '369 Pine Ln, Anytown, USA', '555-7890', 100000, 'Day'),
  (1006, 'Manager', 'Mary Brown', '258 Cedar Rd, Anytown, USA', '555-2345', 100000, 'Night'),
  (1007, 'Pilot', 'Tom Wilson', '741 Cherry St, Anytown, USA', '555-6789', 80000, 'Day'),
  (1008, 'Pilot', 'Linda Baker', '852 Maple Ave, Anytown, USA', '555-0123', 80000, 'Night'),
  (1009, 'Mechanic', 'Mike Jones', '963 Birch Blvd, Anytown, USA', '555-4567', 50000, 'Day'),
  (1010, 'Mechanic', 'Jenny Lee', '159 Dogwood Dr, Anytown, USA', '555-8901', 50000, 'Night'),
  (1011, 'Manager', 'Peter Davis', '753 Oakwood Ave, Anytown, USA', '555-2345', 100000, 'Day'),
  (1012, 'Manager', 'Olivia Clark', '951 Pinehurst Dr, Anytown, USA', '555-6789', 100000, 'Night'),
  (1013, 'Pilot', 'Samuel Kim', '357 Hilltop Rd, Anytown, USA', '555-0123', 80000, 'Day'),
  (1014, 'Pilot', 'Emily Wilson', '246 Maplewood Ave, Anytown, USA', '555-4567', 80000, 'Night'),
  (1015, 'Mechanic', 'Andrew Lee', '159 Hillcrest Dr, Anytown, USA', '555-8901', 50000, 'Day'),
  (1016, 'Mechanic', 'Maria Garcia', '753 Forest Rd, Anytown, USA', '555-2345', 50000, 'Night'),
  (1017, 'Manager', 'David Lee', '951 Brookside Ave, Anytown, USA', '555-6789', 100000, 'Day'),
  (1018, 'Manager', 'Sophia Kim', '357 Cherry Blossom Dr, Anytown, USA', '555-0123', 100000, 'Night'),
  (1019, 'Pilot', 'Chris Davis', '246 Sunset Blvd, Anytown, USA', '555-4567', 80000, 'Day'),
  (1020, 'Pilot', 'Julia Johnson', '159 Appleton St, Anytown, USA', '555-8901', 80000, 'Night');

 INSERT INTO PERSON (ID, Type, Name, Address, Phone, SSN) VALUES
(1001, 'Pilot', 'John Smith', '123 Main St, Anytown USA', '555-1234', '123-45-6789'),
(1002, 'Employee', 'Jane Doe', '456 Elm St, Anytown USA', '555-5678', '234-56-7890'),
(1003, 'Owner', 'Bob Johnson', '789 Oak St, Anytown USA', '555-9012', '345-67-8901'),
(1004, 'Pilot', 'Amy Lee', '321 Maple Ave, Anytown USA', '555-3456', '456-78-9012'),
(1005, 'Employee', 'Mike Brown', '654 Pine St, Anytown USA', '555-7890', '567-89-0123'),
(1006, 'Owner', 'Sara Wilson', '987 Cedar St, Anytown USA', '555-2345', '678-90-1234'),
(1007, 'Pilot', 'David Kim', '159 Birch St, Anytown USA', '555-6789', '789-01-2345'),
(1008, 'Employee', 'Karen Chen', '753 Spruce St, Anytown USA', '555-0123', '890-12-3456'),
(1009, 'Owner', 'Tom Jackson', '246 Oakwood Ave, Anytown USA', '555-4567', '901-23-4567'),
(1010, 'Pilot', 'Emily Davis', '369 Willow St, Anytown USA', '555-8901', '012-34-5678'),
(1011, 'Employee', 'Steve Smith', '582 Cherry St, Anytown USA', '555-2345', '123-45-6789'),
(1012, 'Owner', 'Kate White', '975 Maple Ave, Anytown USA', '555-6789', '234-56-7890'),
(1013, 'Pilot', 'Kevin Kim', '314 Elm St, Anytown USA', '555-0123', '345-67-8901'),
(1014, 'Employee', 'Lisa Chen', '628 Pine St, Anytown USA', '555-4567', '456-78-9012'),
(1015, 'Owner', 'Dave Johnson', '853 Cedar St, Anytown USA', '555-8901', '567-89-0123'),
(1016, 'Pilot', 'Julia Lee', '942 Birch St, Anytown USA', '555-2345', '678-90-1234'),
(1017, 'Employee', 'Chris Brown', '751 Spruce St, Anytown USA', '555-6789', '789-01-2345'),
(1018, 'Owner', 'Emma Wilson', '468 Oakwood Ave, Anytown USA', '555-0123', '890-12-3456'),
(1019, 'Pilot', 'Oliver Jackson', '159 Willow St, Anytown USA', '555-4567', '901-23-4567'),
(1020, 'Employee', 'Grace Davis', '753 Cherry St, Anytown USA', '555-8901', '012-34-5678');

update person
set address = '123 Main St, Anytown, USA'
where id =1001;

update person
set address = '456 Elm St, Anytown, USA'
where id =1002;

update person
set address = '789 Oak St, Anytown, USA'
where id =1003;

update person
set address = '321 Maple Ave, Anytown, USA'
where id =1004;

update person
set address = '654 Pine St, Anytown, USA'
where id =1005;

update person
set address = '987 Cedar St, Anytown, USA'
where id =1006;

update person
set address = '159 Birch St, Anytown, USA'
where id =1007;

update person
set address = '753 Spruce St, Anytown, USA'
where id =1008;

update person
set address = '246 Oakwood Ave, Anytown, USA'
where id =1009;

update person
set address = '369 Willow St, Anytown, USA'
where id =1010;

update person
set address = '582 Cherry St, Anytown, USA'
where id =1011;

update person
set address = '975 Maple Ave, Anytown, USA'
where id =1012;

update person
set address = '314 Elm St, Anytown, USA'
where id =1013;

update person
set address = '628 Pine St, Anytown, USA'
where id =1014;

update person
set address = '853 Cedar St, Anytown, USA'
where id =1015;

update person
set address = '942 Birch St, Anytown, USA'
where id =1016;

update person
set address = '751 Spruce St, Anytown, USA'
where id =1017;

update person
set address = '468 Oakwood Ave, Anytown, USA'
where id =1018;

update person
set address = '159 Willow St, Anytown, USA'
where id =1019;

update person
set address = '753 Cherry St, Anytown, USA'
where id =1020;
select * from person;

INSERT INTO CORPORATION(ID, Type, Name, Address, Phone) VALUES
(1, 'LLC', 'Acme Aviation', '123 Main St, Anytown USA', '555-1234'),
(2, 'Corporation', 'Jet Set', '456 Market St USA', '555-5678'),
(3, 'LLC', 'Skyward Bound', '789 Oak St USA', '555-9012'),
(4, 'Corporation', 'Airborne Express', '345 Elm St USA', '555-3456'),
(5, 'LLC', 'Fly High', '678 Pine St USA', '555-7890'),
(6, 'Corporation', 'Sky King', '910 Maple St USA', '555-2345'),
(7, 'LLC', 'Wing It', '1212 Spruce St USA', '555-6789'),
(8, 'Corporation', 'Aero Dynamics', '1414 Cedar St USA', '555-0123'),
(9, 'LLC', 'Skyways', '1616 Birch St USA', '555-4567'),
(10, 'Corporation', 'Aviation Enterprises', '1818 Ash St USA', '555-8901'),
(11, 'LLC', 'High Flyers', '2020 Oakwood Ave USA', '555-2345'),
(12, 'Corporation', 'Fly Guys', '2222 Elmwood Dr USA', '555-6789'),
(13, 'LLC', 'Airtime', '2424 Pinecrest Dr USA', '555-0123'),
(14, 'Corporation', 'Aero Service', '2626 Cedarwood Ln USA', '555-4567'),
(15, 'LLC', 'Wing and a Prayer', '2828 Birchwood Pl USA', '555-8901'),
(16, 'Corporation', 'Airborne', '3030 Ashwood Dr USA', '555-2345'),
(17, 'LLC', 'Skyward', '3232 Elmwood Pl USA', '555-6789'),
(18, 'Corporation', 'Flyte Time', '3434 Pine Ln USA', '555-0123'),
(19, 'LLC', 'Skyview', '3636 Cedar Dr USA', '555-4567'),
(20, 'Corporation', 'Aviation Solutions', '3838 Birch Ln USA', '555-8901');


update corporation
set id=1001
where id=1;

update corporation
set id=1002
where id=2;

update corporation
set id=1003
where id=3;

update corporation
set id=1004
where id=4;

update corporation
set id=1005
where id=5;

update corporation
set id=1006
where id=6;

update corporation
set id=1007
where id=7;

update corporation
set id=1008
where id=8;

update corporation
set id=1009
where id=9;

update corporation
set id=1010
where id=10;

update corporation
set id=1011
where id=11;

update corporation
set id=1012
where id=12;

update corporation
set id=1013
where id=13;

update corporation
set id=1014
where id=14;

update corporation
set id=1015
where id=15;

update corporation
set id=1016
where id=16;

update corporation
set id=1017
where id=17;

update corporation
set id=1018
where id=18;

update corporation
set id=1019
where id=19;

update corporation
set id=1020
where id=20;


update corporation
set address = '123 Main St, Anytown USA'
where id =1;

update corporation
set address = '456 Market St, Anytown, USA'
where id =2;

update corporation
set address = '789 Oak St, Anytown, USA'
where id =3;

update corporation
set address = '345 Elm St, Anytown, USA'
where id =4;

update corporation
set address = '678 Pine St, Anytown, USA'
where id =5;

update corporation
set address = '910 Maple St, Anytown, USA'
where id =6;

update corporation
set address = '1212 Spruce St, Anytown, USA'
where id =7;

update corporation
set address = '1414 Cedar St, Anytown, USA'
where id =8;

update corporation
set address = '1616 Birch St, Anytown, USA'
where id =9;

update corporation
set address = '1818 Ash St, Anytown, USA'
where id =10;

update corporation
set address = '2020 Oakwood Ave, Anytown, USA'
where id =11;

update corporation
set address = '2222 Elmwood Dr, Anytown, USA'
where id =12;

update corporation
set address = '2424 Pinecrest Dr, Anytown, USA'
where id =13;

update corporation
set address = '2626 Cedarwood Ln, Anytown, USA'
where id =14;

update corporation
set address = '2828 Birchwood Pl, Anytown, USA'
where id =15;

update corporation
set address = '3030 Ashwood Dr, Anytown, USA'
where id =16;

update corporation
set address = '3232 Elmwood Pl, Anytown, USA'
where id =17;

update corporation
set address = '3434 Pine Ln, Anytown, USA'
where id =18;

update corporation
set address = '3636 Cedar Dr, Anytown, USA'
where id =19;

update corporation
set address = '3838 Birch Ln, Anytown, USA'
where id =20;

select * from corporation;

INSERT INTO OWNS (AIRPLANE_RegNum, OWNER_ID, Pdate) VALUES
(1, 1001, '2022-01-01'),
(2, 1002, '2022-02-01'),
(3, 1003, '2022-03-01'),
(4, 1004, '2022-04-01'),
(5, 1005, '2022-05-01'),
(6, 1006, '2022-06-01'),
(7, 1007, '2022-07-01'),
(8, 1008, '2022-08-01'),
(9, 1009, '2022-09-01'),
(10, 1010, '2022-10-01'),
(1, 1011, '2022-11-01'),
(2, 1012, '2022-12-01'),
(3, 1013, '2023-01-01'),
(4, 1014, '2023-02-01'),
(5, 1015, '2023-03-01'),
(6, 1016, '2023-04-01'),
(7, 1017, '2023-05-01'),
(8, 1018, '2023-06-01'),
(9, 1019, '2023-07-01'),
(10, 1020, '2023-08-01');


update OWNS
set AIRPLANE_RegNum = 11
where OWNER_ID =1011;

update OWNS
set AIRPLANE_RegNum = 12
where OWNER_ID =1012;

update OWNS
set AIRPLANE_RegNum = 13
where OWNER_ID =1013;

update OWNS
set AIRPLANE_RegNum = 14
where OWNER_ID =1014;

update OWNS
set AIRPLANE_RegNum = 15
where OWNER_ID =1015;

update OWNS
set AIRPLANE_RegNum = 16
where OWNER_ID =1016;

update OWNS
set AIRPLANE_RegNum = 17
where OWNER_ID =1017;

update OWNS
set AIRPLANE_RegNum = 18
where OWNER_ID =1018;

update OWNS
set AIRPLANE_RegNum = 19
where OWNER_ID =1019;

update OWNS
set AIRPLANE_RegNum = 20
where OWNER_ID =1020;


update SERVICE
set Date = '2023-03-25'
where id =1;

INSERT INTO SERVICE (ID, Date, Hours, Work_code)
VALUES 
(1, '2023-03-25', 5, 'WC1'),
(2, '2022-01-11', 7, 'WC2'),
(3, '2022-01-12', 4, 'WC3'),
(4, '2022-01-13', 2, 'WC4'),
(5, '2022-01-14', 3, 'WC5'),
(6, '2022-01-15', 6, 'WC6'),
(7, '2022-01-16', 8, 'WC7'),
(8, '2022-01-17', 2, 'WC8'),
(9, '2022-01-18', 9, 'WC9'),
(10, '2022-01-19', 7, 'WC10'),
(11, '2022-01-20', 6, 'WC11'),
(12, '2022-01-21', 3, 'WC12'),
(13, '2022-01-22', 5, 'WC13'),
(14, '2022-01-23', 1, 'WC14'),
(15, '2022-01-24', 4, 'WC15'),
(16, '2022-01-25', 2, 'WC16'),
(17, '2022-01-26', 3, 'WC17'),
(18, '2022-01-27', 8, 'WC18'),
(19, '2022-01-28', 5, 'WC19'),
(20, '2022-01-29', 7, 'WC20');


update SERVICE
set date = '2022-01-01'
where ID =1;

update SERVICE
set date = '2022-02-01'
where ID =2;

update SERVICE
set date = '2022-03-01'
where ID =3;

update SERVICE
set date = '2022-04-01'
where ID =4;

update SERVICE
set date = '2022-05-01'
where ID =5;

update SERVICE
set date = '2022-06-01'
where ID =6;

update SERVICE
set date = '2022-07-01'
where ID =7;

update SERVICE
set date = '2022-08-01'
where ID =8;

update SERVICE
set date = '2022-09-01'
where ID =9;

update SERVICE
set date = '2022-10-01'
where ID =10;


update SERVICE
set date = '2022-11-01'
where ID =11;

update SERVICE
set date = '2022-12-01'
where ID =12;

update SERVICE
set date = '2023-01-01'
where ID =13;

update SERVICE
set date = '2023-02-01'
where ID =14;

update SERVICE
set date = '2023-03-01'
where ID =15;

update SERVICE
set date = '2023-04-01'
where ID =16;

update SERVICE
set date = '2023-05-01'
where ID =17;

update SERVICE
set date = '2023-06-01'
where ID =18;

update SERVICE
set date = '2023-07-01'
where ID =19;

update SERVICE
set date = '2023-08-01'
where ID =20;



INSERT INTO MAINTAIN (EMPLOYEE_ID, SERVICE_ID) VALUES 
(1001, 1),
(1002, 2),
(1003, 3),
(1004, 4),
(1005, 5),
(1006, 6),
(1007, 7),
(1008, 8),
(1009, 9),
(1010, 10),
(1011, 11),
(1012, 12),
(1013, 13),
(1014, 14),
(1015, 15),
(1016, 16),
(1017, 17),
(1018, 18),
(1019, 19),
(1020, 20);


INSERT INTO PILOT(ID, Lic_num, Restr) VALUES
(1001, 'L0001', 'None'),
(1002, 'L0002', 'Near-sighted'),
(1003, 'L0003', 'Color-blind'),
(1004, 'L0004', 'None'),
(1005, 'L0005', 'None'),
(1006, 'L0006', 'Hearing-impaired'),
(1007, 'L0007', 'None'),
(1008, 'L0008', 'None'),
(1009, 'L0009', 'None'),
(1010, 'L0010', 'None'),
(1011, 'L0011', 'None'),
(1012, 'L0012', 'None'),
(1013, 'L0013', 'None'),
(1014, 'L0014', 'None'),
(1015, 'L0015', 'None'),
(1016, 'L0016', 'None'),
(1017, 'L0017', 'None'),
(1018, 'L0018', 'None'),
(1019, 'L0019', 'None'),
(1020, 'L0020', 'None');

INSERT INTO FLIES (PILOT_ID, PLANE_TYPE_Model)
VALUES 
(1001, 10),
(1001, 11),
(1001, 12),

(1001, 1),
(1002, 2),
(1003, 3),
(1004, 4),
(1005, 5),
(1006, 6),
(1007, 7),
(1008, 8),
(1009, 9),
(1010, 10),
(1011, 11),
(1012, 12),
(1013, 13),
(1014, 14),
(1015, 15),
(1016, 16),
(1017, 17),
(1018, 18),
(1019, 19),
(1020, 20);


INSERT INTO WORKS_ON (EMPLOYEE_ID, PLANE_TYPE_Model)
VALUES 
(1001, 1),
(1002, 2),
(1003, 3),
(1004, 4),
(1005, 5),
(1006, 6),
(1007, 7),
(1008, 8),
(1009, 9),
(1010, 10),
(1011, 11),
(1012, 12),
(1013, 13),
(1014, 14),
(1015, 15),
(1016, 16),
(1017, 17),
(1018, 18),
(1019, 19),
(1020, 20);


update WORKS_ON
set PLANE_TYPE_Model = 21
where EMPLOYEE_ID =1020;

