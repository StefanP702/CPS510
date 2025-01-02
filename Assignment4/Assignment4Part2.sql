--9. Create a View for Unique Customer Names and Emails
CREATE VIEW "CustomerEmailsView" AS
SELECT DISTINCT F_Name, L_Name, Email
FROM "Customer";

--10. Create a View for Transaction Details in October 2023
CREATE VIEW "OctoberTransactionsView" AS
SELECT DISTINCT c.F_Name, c.L_Name, c.Customer_ID, b.Transaction_ID, b.Total_Amount
FROM "Customer" c
JOIN "Billing" b ON c.Customer_ID = b.Customer_ID
WHERE EXTRACT(MONTH FROM b.Transaction_Date) = 10 AND EXTRACT(YEAR FROM b.Transaction_Date) = 2023; 

--11. Retrieve the Total Amount Spent by Each Customer 
SELECT c.Customer_ID, c.F_Name, c.L_Name, SUM(b.Total_Amount) AS Total_Spent
FROM "Customer" c
JOIN "Billing" b ON c.Customer_ID = b.Customer_ID
GROUP BY c.Customer_ID, c.F_Name, c.L_Name
ORDER BY Total_Spent DESC; 

--12. List Stores that Need Restocking with Stock Details 
SELECT Branch_ID, Branch_Name,
  CASE
    WHEN Branch_Stock = 0 THEN 'The Store Needs a Restocking'
    ELSE 'The Store does not need a new shipment'
  END AS Stock_Details
FROM "Store"; 

--13. Create a view that displays the stock status for each store branch.
CREATE VIEW StoreStockStatus AS
SELECT Branch_ID, Branch_Name, Branch_Stock,
       CASE
          WHEN Branch_Stock = 0 THEN 'Out of Stock'
          WHEN Branch_Stock < 10 THEN 'Low Stock'
          ELSE 'In Stock'
       END AS Stock_Status
FROM "Store";

--14. Create a view that provides a summary of employee information, including their name, total hours worked, and total wage earned.
CREATE VIEW EmployeeSummary AS
SELECT E_ID, F_Name, L_Name, SUM(E_Hours) AS Total_Hours_Worked, SUM(E_Wage) AS Total_Wage_Earned
FROM "Employee"
GROUP BY E_ID, F_Name, L_Name; 


