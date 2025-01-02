--1.	Retrieve unique customer names and their email addresses
SELECT DISTINCT F_Name, L_Name, Email
FROM "Customer";

--2.    Retrieve ID's for customers with who bought in September 2023
SELECT DISTINCT c.F_Name, c.L_Name, c.Customer_ID
FROM "Customer" c
JOIN "Billing" b ON c.Customer_ID = b.Customer_ID
WHERE EXTRACT(MONTH FROM b.Transaction_Date) = 9 AND EXTRACT(YEAR FROM b.Transaction_Date) = 2023;

--3.    Retrieve the costs of purchases using discounts
SELECT DISTINCT Transaction_ID, Total_Amount AS Cost
FROM "Billing"
WHERE Discounts > 0
ORDER BY Cost;

--4.    Find The Transaction ID's for Accepted Transactions
SELECT DISTINCT Transaction_ID
FROM "Billing"
WHERE STATUS = 'Accepted'
ORDER BY Transaction_Date;

--5.    Find Employee First Names Starting With 'B'
SELECT DISTINCT F_Name
FROM "Employee"
WHERE F_Name LIKE 'B%';

--6.    Find Employee Info for those who worked 30 hours or more
SELECT DISTINCT E_ID, F_Name, L_Name, E_Hours
FROM "Employee"
WHERE E_Hours >= 30
ORDER BY E_Hours;

--7.    List Items with Quantity in Stock:
SELECT DISTINCT Item_Name, SUM(Item_Quantity) AS Total_Stock
FROM "Item" GROUP BY Item_Name;

--8.    Find Locations that need urgent restocking
SELECT DISTINCT Branch_ID, Branch_Name,
CASE WHEN Branch_Stock = 0 THEN 'The Store Needs a Restocking'
ELSE 'The Store does not need a new shipment'
END AS Stock_Details
FROM "Store";

