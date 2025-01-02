CREATE TABLE bank_account 
(
    id NUMBER PRIMARY KEY,
    account_number INTEGER,
    account_name VARCHAR2(100),
    balance DOUBLE PRECISION,
    created_date DATE
);
 
 -- Inserting sample values into the bank_account table
INSERT INTO bank_account (id, account_number, account_name, balance, created_date)
VALUES (1, 12345678, 'John Doe', 10000.50, SYSDATE);

INSERT INTO bank_account (id, account_number, account_name, balance, created_date)
VALUES (2, 23456789, 'Jane Smith', 15000.75, SYSDATE);

INSERT INTO bank_account (id, account_number, account_name, balance, created_date)
VALUES (3, 34567890, 'Bob Brown', 5000.25, SYSDATE);

