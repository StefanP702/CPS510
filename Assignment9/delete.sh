#!/bin/bash

# Oracle credentials
username="hmakrod"
password="07153122"

# Prompt for Customer ID
read -p "Enter Customer ID to Delete: " customer_id

# Prepare SQL command
sql_command="DELETE FROM Customer WHERE customer_id = '$customer_id'; COMMIT"


# Debug: Print SQL command to verify its correctness
echo "Executing SQL command: $sql_command"


# Execute SQL command
echo $sql_command | sqlplus64 "$username/$password@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle.scs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl)))"

echo "Customer deleted successfully."
