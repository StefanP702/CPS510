SELECT F_Name, L_Name, E_Wage
FROM "Employee"
WHERE E_Wage = (SELECT MAX(E_Wage) FROM "Employee");

SELECT DISTINCT c.Customer_ID, c.F_Name, c.L_Name
FROM "Customer" c
WHERE EXISTS (
    SELECT 1
    FROM "Billing" b, "Item" i
    WHERE b.Total_Amount = i.Item_Price
      AND c.Customer_ID = b.Transaction_ID
      AND i.Item_Name = 'Doritos Chips'
);



SELECT COUNT(DISTINCT c.Customer_ID) as Total_Customers_With_Purchases
FROM "Customer" c
WHERE EXISTS (
    SELECT 1
    FROM "Billing" b
    WHERE c.Customer_ID = b.Transaction_ID
);


 
 
SELECT E_ID, F_Name, L_Name, E_Hours
FROM "Employee"
WHERE E_Hours > (
    SELECT AVG(E_Hours)
    FROM "Employee"
); 
 

SELECT Item_ID, Item_Name
FROM "Item"
MINUS
SELECT i.Item_ID, i.Item_Name
FROM "Item" i
JOIN "Billing" b ON i.Item_Price = b.Total_Amount;


SELECT 
  CASE 
    WHEN Item_Price <= 100 THEN '0-100'
    WHEN Item_Price > 100 AND Item_Price <= 200 THEN '101-200'
    WHEN Item_Price > 200 AND Item_Price <= 300 THEN '201-300'
    ELSE '301+' 
  END as Price_Range, 
  COUNT(*) as Item_Count
FROM "Item"
GROUP BY 
  CASE 
    WHEN Item_Price <= 100 THEN '0-100'
    WHEN Item_Price > 100 AND Item_Price <= 200 THEN '101-200'
    WHEN Item_Price > 200 AND Item_Price <= 300 THEN '201-300'
    ELSE '301+' 
  END;



SELECT L_Name, SUM(C_Points) as Total_Loyalty_Points
FROM "Customer"
GROUP BY L_Name;


SELECT c.Customer_ID, c.F_Name || ' ' || c.L_Name as Full_Name, SUM(b.Total_Amount) as Total_Spent
FROM "Customer" c
JOIN "Billing" b ON c.Customer_ID = b.Transaction_ID
GROUP BY c.Customer_ID, c.F_Name, c.L_Name;

