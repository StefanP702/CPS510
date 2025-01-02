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

--Inserting data into billing table
INSERT INTO "Billing"(Transaction_ID, Taxes, Total_Amount, Discounts, Payment_Method, Status, Returns, Transaction_Date)
VALUES 
(1, 50, 1050, 0, 'Credit Card', 'Completed', NULL, TO_DATE('2023-10-11','YYYY-MM-DD'));


--Inserting data into billing table
INSERT INTO "Billing"(Transaction_ID, Taxes, Total_Amount, Discounts, Payment_Method, Status, Returns, Transaction_Date)
VALUES 
(2, 30, 530, 20,'Cash','Pending', NULL, TO_DATE('2023-10-11','YYYY-MM-DD'));


--Inserting data into billing table
INSERT INTO "Billing"(Transaction_ID, Taxes, Total_Amount, Discounts, Payment_Method, Status, Returns, Transaction_Date)
VALUES 
(3, 40, 840, 10, 'Debit Card', 'Completed', 'Defective Item', TO_DATE('2023-10-12','YYYY-MM-DD'));


--Inserting data into billing table
INSERT INTO "Billing"(Transaction_ID, Taxes, Total_Amount, Discounts, Payment_Method, Status, Returns, Transaction_Date)
VALUES 
(4, 40, 840, 10, 'Debit Card', 'Credit Card', 'Defective Item', TO_DATE('2023-10-11','YYYY-MM-DD'));



SELECT * FROM "Billing";  
