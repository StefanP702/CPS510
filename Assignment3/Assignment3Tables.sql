--Create customer table
CREATE TABLE "Customer"( 
    Customer_ID INTEGER PRIMARY KEY NOT NULL, 
    F_Name VARCHAR(100) NOT NULL, 
    L_Name VARCHAR(100) NOT NULL, 
    Address VARCHAR(200) NOT NULL, 
    Email VARCHAR(100) UNIQUE NOT NULL, 
    C_Points INTEGER NOT NULL,
    P_Number VARCHAR(15) NOT NULL,
    C_Gifts VARCHAR(1000), 
    C_History VARCHAR(1000) 
); 

--Create item table
CREATE TABLE "Item"( 
    Item_ID INTEGER PRIMARY KEY NOT NULL, 
    Item_Name VARCHAR(100) NOT NULL,
    Item_Price INTEGER NOT NULL,
    Item_Quantity INTEGER NOT NULL
);

--Create store table
CREATE TABLE "Store"( 
    Branch_ID INTEGER PRIMARY KEY NOT NULL, 
    Branch_Name VARCHAR(200) NOT NULL,
    Branch_Location VARCHAR(200) NOT NULL,
    P_Number VARCHAR(15) NOT NULL, 
    Branch_Stock INTEGER NOT NULL 
);

--Create billing table
CREATE TABLE "Billing"( 
    Transaction_ID INTEGER PRIMARY KEY NOT NULL, 
    Taxes INTEGER NOT NULL, 
    Total_Amount INTEGER NOT NULL, 
    Discounts INTEGER,
    Payment_Method VARCHAR(100) NOT NULL,
    Status VARCHAR(100) NOT NULL,
    Returns VARCHAR(500),
    Transaction_Date DATE NOT NULL 
);

--Create employee table
CREATE TABLE "Employee"( 
    E_ID INTEGER PRIMARY KEY NOT NULL, 
    F_Name VARCHAR(100) NOT NULL, 
    L_Name VARCHAR(100) NOT NULL, 
    Address VARCHAR(200) NOT NULL, 
    Email VARCHAR(100) UNIQUE NOT NULL, 
    E_Hours INTEGER NOT NULL,
    P_Number VARCHAR(15) NOT NULL,
    E_Wage INTEGER NOT NULL,
    Banking_Info VARCHAR(1000) 
);

--Inserting data into Customer table
INSERT INTO "Customer"(Customer_ID, F_Name, L_Name, Address, Email, C_Points, P_Number, C_Gifts, C_History)
VALUES 
(1, 'John', 'Doe', '123 Any Street, Anytown, Anystate', 'john.doe@example.com', 500, '+1234567890', 'Gift Card, T-Shirt', 'Purchase on 2021-10-01, Purchase on 2022-01-15'); 

INSERT INTO "Customer"(Customer_ID, F_Name, L_Name, Address, Email, C_Points, P_Number, C_Gifts, C_History)
VALUES 
(2, 'Jane', 'Smith', '456 Main Street, Cityville, Mystate', 'jane.smith@example.com', 1000, '+0987654321', 'Coffee Mug', 'Purchase on 2022-05-22, Purchase on 2022-08-13'); 

INSERT INTO "Customer"(Customer_ID, F_Name, L_Name, Address, Email, C_Points, P_Number, C_Gifts, C_History)
VALUES 
(3, 'Alice', 'Johnson', '789 Side Street, Townville, Thisstate', 'alice.johnson@example.com', 250, '+1122334455', 'PS5', 'Purchase on 2022-11-07'); 

INSERT INTO "Customer"(Customer_ID, F_Name, L_Name, Address, Email, C_Points, P_Number, C_Gifts, C_History)
VALUES 
(4, 'Bob', 'Williams', '159 Wide Street, Village, Thatstate', 'bob.williams@example.com', 750, '+5566778899', 'Nike Shoes', 'Purchase on 2022-06-12');


--Inserting data into Item table
INSERT INTO "Item"(Item_ID, Item_Name, Item_Price,Item_Quantity)
VALUES 
(1, 'Coffee Tim Hortons', 9, 150); 

INSERT INTO "Item"(Item_ID, Item_Name, Item_Price,Item_Quantity)
VALUES 
(2,'Doritos Chips', 4, 170);

INSERT INTO "Item"(Item_ID, Item_Name, Item_Price,Item_Quantity)
VALUES 
(3,'Iphone Charger', 25, 100);

INSERT INTO "Item"(Item_ID, Item_Name, Item_Price,Item_Quantity)
VALUES 
(4,'Cat Food Meow Mix Original', 57, 120);


--Inserting data into Store table
INSERT INTO "Store"(Branch_ID,Branch_Name,Branch_Location,P_Number,Branch_Stock)
VALUES 
(1,'North York Branch','North York','+18084902718',10200);  

INSERT INTO "Store"(Branch_ID,Branch_Name,Branch_Location,P_Number,Branch_Stock)
VALUES 
(2,'Parkdale Branch','Parkdale','+12368123062',9606);  

INSERT INTO "Store"(Branch_ID,Branch_Name,Branch_Location,P_Number,Branch_Stock)
VALUES 
(3,'Yorkville Branch','Yorkville','+15774771343',15780); 

INSERT INTO "Store"(Branch_ID,Branch_Name,Branch_Location,P_Number,Branch_Stock)
VALUES 
(4,'Scarborough Branch','Scarborough','+13434573322',11524);  


--Inserting data into Employee table
INSERT INTO "Employee"(E_ID, F_Name, L_Name, Address, Email, E_Hours, P_Number, E_Wage, Banking_Info)
VALUES 
(1, 'Michael', 'Brown', '101 High Street, Downtown, Capitalstate', 'michael.brown@example.com', 40, '+1231231234', 20, 'Bank: AnyBank, Acc#: 123456789, Routing#: 987654321'); 

INSERT INTO "Employee"(E_ID, F_Name, L_Name, Address, Email, E_Hours, P_Number, E_Wage, Banking_Info)
VALUES 
(2, 'Emily', 'White', '202 Central Avenue, Midtown, Centralstate', 'emily.white@example.com', 35, '+2342342345', 25, 'Bank: ThisBank, Acc#: 987654321, Routing#: 123456789'); 

INSERT INTO "Employee"(E_ID, F_Name, L_Name, Address, Email, E_Hours, P_Number, E_Wage, Banking_Info)
VALUES 
(3, 'Chris', 'Davis', '303 West Road, Uptown, Weststate', 'chris.davis@example.com', 40, '+3453453456', 22, 'Bank: ThatBank, Acc#: 111222333, Routing#: 999888777');

INSERT INTO "Employee"(E_ID, F_Name, L_Name, Address, Email, E_Hours, P_Number, E_Wage, Banking_Info)
VALUES 
(4, 'Jessica', 'Taylor', '404 East Lane, Suburb, Eaststate', 'jessica.taylor@example.com', 30, '+4564564567', 23, 'Bank: OtherBank, Acc#: 444555666, Routing#: 777666555'); 

--Inserting data into billing table
INSERT INTO "Billing"(Transaction_ID, Taxes, Total_Amount, Discounts, Payment_Method, Status, Returns, Transaction_Date)
VALUES 
(21, 10, 210, 5, 'Credit Card', 'Completed', NULL, '2023-02-01'); 



SELECT * FROM "Billing"; 
