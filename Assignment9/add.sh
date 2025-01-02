#!/bin/bash

username="hmakrod"
password="07153122"

echo "Enter Customer Details to Add"
read -p "Enter Customer ID: " customer_id
read -p "Enter Customer Name: " customer_name
read -p "Enter Customer Email: " customer_email

# Prepare SQL command
sql_command="INSERT INTO Customer (customer_id, customer_name, customer_email) VALUES ('$customer_id', '$customer_name', '$customer_email'); COMMIT"


# Debug: Print SQL command to verify its correctness
echo "Executing SQL command: $sql_command"

# Execute SQL command
echo $sql_command | sqlplus64 "$username/$password@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle.scs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl)))"

echo "Customer added successfully."
