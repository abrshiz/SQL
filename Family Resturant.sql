create database FamilyRestaurant;
use FamilyRestaurant;

CREATE TABLE Customer (
 Customer_ID VARCHAR(40) PRIMARY KEY,
 Customer_Name VARCHAR(40),
  Phone_num int,
  street VARCHAR(40),
  Door VARCHAR(40),
  Waiter_ID VARCHAR(40),
  Order_ID VARCHAR(40)
);

CREATE TABLE Order_ (
 Order_ID VARCHAR(40) PRIMARY KEY,
 Order_Name VARCHAR(40),
 [Order_price(ETB)] float,
 Customer_ID VARCHAR(40),
 Chef_ID VARCHAR(40)
);
CREATE TABLE Chef (
 Chef_ID VARCHAR(40) PRIMARY KEY,
 Chef_Name VARCHAR(40),
 Chef_Street VARCHAR(40) ,
 Chef_Door int,
 [Chef_Salary(ETB)] int,
   Phone_Number int,
   DoB date,
   Waiter_ID VARCHAR(40) 
 );
 
 CREATE TABLE Manager (
 Manager_ID VARCHAR(40) PRIMARY KEY,
 Manager_Name VARCHAR(40),
 Manager_Street VARCHAR(40) ,
 Manager_Door int,
 [Manager_Salary(ETB)] int,
   phone_Number int,
   DoB date,
   Supplier_ID VARCHAR(40),
   Chef_ID VARCHAR(40) 
 );
 
 CREATE TABLE cashier(
 Cashier_ID VARCHAR(40) PRIMARY KEY,
 Cashier_Name VARCHAR(40),
 Cashier_street VARCHAR(40) ,
 Cashier_Door int,
 [Cashier_Salary(ETB)] int,
   Phone_Number int,
   DoB date,
   Manager_ID VARCHAR(40) 
 );
 
 CREATE TABLE Waiter(
 Waiter_ID VARCHAR(40) PRIMARY KEY,
 Waiter_Name VARCHAR(40),
 Waiter_Street VARCHAR(40),
 Waiter_Door int,
 [Waiter_Salary(ETB)] int,
  phone_Number int,
  DoB date,
 Cashier_ID VARCHAR(40) 
  
 );

 CREATE TABLE Supplier (
 Supplier_ID VARCHAR(40) PRIMARY KEY,
 Supplier_Name VARCHAR(40),
 Supplier­­_Street VARCHAR(40),
 Supplier_Door int,
 [Supplier_Salary(ETB)] int,
  Phone_Number int,
  DoB date
  
 );

  -- inserting forign key in to Customer table
ALTER TABLE Customer
ADD FOREIGN KEY(Waiter_ID)
REFERENCES Waiter(Waiter_ID)
ON DELETE SET NULL;
ALTER TABLE Customer
ADD FOREIGN KEY(Order_ID)
REFERENCES Order_(Order_ID)
ON DELETE SET NULL;

-- inserting values to Customer table
INSERT INTO Customer VALUES('FACU0001', 'Nahom', 0987075034, 'Sheel','FADO001',NULL, NULL);
INSERT INTO Customer VALUES('FACU0002', 'Samrawit', 0911626434, 'SeIDo','FADO012',NULL, NULL);
INSERT INTO Customer VALUES('FACU0003', 'Eyuel', 0951253719, 'Gendekore','FADO007',NULL, NULL);
INSERT INTO Customer VALUES('FACU0004', 'Dagim', 0910886637, 'Meskelegna','FADO007',NULL, NULL);
INSERT INTO Customer VALUES('FACU0005', 'Makbel', 0904537541, 'Toni','FADO005',NULL, NULL);
INSERT INTO Customer VALUES('FACU0006', 'Yeabsira', 0969631190, 'Sebategna','FADO011',NULL, NULL);
INSERT INTO Customer VALUES('FACU0007', 'Eyob', 0918114791, 'Konel','FADO009',NULL, NULL);
INSERT INTO Customer VALUES('FACU0008', 'Ephrem', 0973241182, 'Konel','FADO013',NULL, NULL);
INSERT INTO Customer VALUES('FACU0009', 'Elroe', 0951155483, 'Sheel','FADO006',NULL, NULL);
INSERT INTO Customer VALUES('FACU0010', 'Abrham', 0987075109, 'Kezira','FADO004',NULL, NULL);

-- inserting values in to Waiter table
INSERT INTO Waiter VALUES('FAWAI01', 'KalkIDan','Kezira',3344,3000,0913857845,'2003-02-15',null);
INSERT INTO Waiter VALUES('FAWAI02', 'Ermiyas','Ashawa',3455,3500,0922857901,'2000-12-12',null);
INSERT INTO Waiter VALUES('FAWAI03', 'Hana','Konel',3456,3800,0910479683,'2004-11-02',null);
INSERT INTO Waiter VALUES('FAWAI04', 'Sara','Sabiyan',4567,3400,0979067959,'2005-08-13',null);
INSERT INTO Waiter VALUES('FAWAI05', 'Hewan','Sabiyan',9887,4000,0900014875,'2005-04-28',null);

-- inserting values in to Order_ table
INSERT INTO Order_ VALUES('FAMPI11', 'Pizza',349.99,'FACU0001',null);
INSERT INTO Order_ VALUES('FAMBU55', 'Burger',249.99,'FACU0010',null);
INSERT INTO Order_ VALUES('FAMSH03', 'Shiro',89.99,'FACU0003',null);
INSERT INTO Order_ VALUES('FAMPA14', 'Pasta',119.99,'FACU0004',null);
INSERT INTO Order_ VALUES('FAMKI17',   'Kitfo',599.99,'FACU0005',null);
INSERT INTO Order_ VALUES('FAMMI19', 'Minchet',259.99,'FACU0006',null);
INSERT INTO Order_ VALUES('FAMDO21', 'Doro',449.99,'FACU0009',null);


-- updating Customer table(Waiter_ID)
UPDATE Customer
SET Waiter_ID = 'FAWAI03'
WHERE Customer_ID = 'FACU0001' or Customer_ID = 'FACU0006';
UPDATE Customer
SET Waiter_ID = 'FAWAI02'
WHERE Customer_ID = 'FACU0002' or Customer_ID = 'FACU0009';
UPDATE Customer
SET Waiter_ID ='FAWAI05'
WHERE Customer_ID ='FACU0003' or Customer_ID = 'FACU0010';
UPDATE Customer
SET Waiter_ID = 'FAWAI04'
WHERE Customer_ID ='FACU0004' or Customer_ID = 'FACU0008' ;
UPDATE Customer
SET Waiter_ID ='FAWAI01'
WHERE Customer_ID = 'FACU0005' or Customer_ID = 'FACU0007';

-- updating Customer table (Order_ID)
UPDATE Customer
SET Order_ID = 'FAMPI11'
WHERE Customer_ID = 'FACU0001' or Customer_ID = 'FACU0007' or Customer_ID= 'FACU0008';
UPDATE Customer
SET Order_ID = 'FAMSH03'
WHERE Customer_ID = 'FACU0003';
UPDATE Customer
SET Order_ID = 'FAMPA14'
WHERE Customer_ID = 'FACU0004' ;
UPDATE Customer
SET Order_ID = 'FAMKI17'
WHERE Customer_ID = 'FACU0005';
UPDATE Customer
SET Order_ID = 'FAMMI19'
WHERE Customer_ID = 'FACU0006';
UPDATE Customer
SET Order_ID = 'FAMDO21'
WHERE Customer_ID = 'FACU0009';
UPDATE Customer
SET Order_ID = 'FAMBU55'
WHERE Customer_ID = 'FACU0010'or Customer_ID='FACU0002';


-- inserting a values into Chef table
INSERT INTO Chef VALUES('FACH001', 'Yohanes','Sabiyan',4433,7000,0945879625,'2000-03-12','FAWAI02');
INSERT INTO Chef VALUES('FACH002', 'Kebede','Konel',5544,5000,0911028963,'2001-05-13','FAWAI05');
INSERT INTO Chef VALUES('FACH003', 'Mesay','Konel',1112,10000,0997102874,'1995-11-09','FAWAI03');
INSERT INTO Chef VALUES('FACH004', 'Henok','Sheel',2343,9000,0978693104,'1999-10-03','FAWAI01');

-- updating Order(chif_ID)
UPDATE Order_
SET Chef_ID = 'FACH001'
WHERE Order_ID = 'FAMPI11' or Order_ID = 'FAMPA14' ;
UPDATE Order_
SET Chef_ID = 'FACH002'
WHERE Order_ID ='FAMBU55' or Order_ID = 'FAMMI19' ;
UPDATE Order_
SET Chef_ID = 'FACH003'
WHERE Order_ID = 'FAMSH03' or Order_ID = 'FAMKI17';
UPDATE Order_
SET Chef_ID = 'FACH004'
WHERE Order_ID = 'FAMDO21';

-- inserting a values into Cashier
INSERT INTO Cashier VALUES('FACA001', 'Simret','Gende Tesfa',5444,4500,0913698745,'2001-03-10',null);
INSERT INTO Cashier VALUES('FACA002', 'Ephrem','Marmarsa',7446,4500,0913968701,'1999-02-08',null);

-- updating Waiter(Cashier_ID)
UPDATE Waiter
SET Cashier_ID = 'FACA001'
WHERE Waiter_ID= 'FAWAI01' or Waiter_ID= 'FAWAI02' or Waiter_ID= 'FAWAI04';
UPDATE Waiter
SET Cashier_ID = 'FACA002'
WHERE Waiter_ID= 'FAWAI03' or Waiter_ID= 'FAWAI05';
 
  -- updating Cashier(Manager_ID)
 UPDATE Cashier
SET Manager_ID = 'FAMA01'
WHERE Cashier_ID= 'FACA001';
UPDATE Cashier
SET Manager_ID = 'FAMA02'
WHERE Cashier_ID= 'FACA002';

-- inserting values into Supplier table
INSERT INTO Supplier VALUES('FASU01', 'Bekelle','Kezira',2232,20000,0978963317,'2001-08-13');
INSERT INTO Supplier VALUES('FASU02', 'Lema','Sabiyan',2134,30000,0900045684,'1999-09-11');
INSERT INTO Supplier VALUES('FASU03', 'Selam','Gendekore',4345,50000,0983330539,'2001-03-03');

-- inserting values into Manager table
INSERT INTO Manager VALUES('FAMA01', 'Bilal','Kezira',4445,8500,0908796969,'1995-02-01','FASU01','FACH001');
INSERT INTO Manager VALUES('FAMA02', 'Biniyam','Toni',4467,9000,0911158968,'1998-02-17','FASU03','FACH002');




select*from Customer;
select*from Order_;
select*from Supplier;
select*from Manager;
select*from Chef;
select*from Cashier;
select*from Waiter;


