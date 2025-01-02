--Create customer table
create table "Customer"(
    Customer_ID INTEGER PRIMARY KEY NOT NULL,
    F_Name VARCHAR (100) NOT NULL,
    L_Name VARCHAR (100) NOT NULL,
    Address VARCHAR (200) NOT NULL,
    Email VARCHAR (100) NOT NULL,
    C_Points INTEGER NOT NULL,
    C_Gifts VARCHAR (1000),
    C_History VARCHAR (1000)
);

--Create item table
create table "Item" (
    Item_ID INTEGER PRIMARY KEY NOT NULL,
    Item_Name VARCHAR (100) NOT NULL,
    Item_Price INTEGER NOT NULL,
    Item_Quantity INTEGER NOT NULL
);

--Create Store table
create table "Store" (
    Branch_ID INTEGER PRIMARY KEY NOT NULL,
    Branch_Name VARCHAR (200) NOT NULL,
    Branch_Location VARCHAR (200) NOT NULL,
    Branch_Stock INTEGER NOT NULL
);

--create Billing Table
create table "Billing" (
    Transaction_ID INTEGER PRIMARY KEY NOT NULL,
    Taxes INTEGER NOT NULL,
    Total_Amount INTEGER NOT NULL,
    Discounts INTEGER,
    Payment_Method VARCHAR (100) NOT NULL,
    Status VARCHAR (100) NOT NULL,
    Returns VARCHAR (500),
    Transaction_Date DATE NOT NULL
);

--Create Employee Table
create table "Employee" (
    E_ID INTEGER PRIMARY KEY NOT NULL,
    F_Name VARCHAR (100) NOT NULL,
    L_Name VARCHAR (100) NOT NULL,
    Address VARCHAR (200) NOT NULL,
    Email VARCHAR (100) NOT NULL,
    E_Hours INTEGER NOT NULL,
    P_Number INTEGER NOT NULL,
    E_Wage INTEGER NOT NULL,
    Banking_Info VARCHAR (1000)
);
