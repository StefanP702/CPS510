--Customer
INSERT INTO "Customer" VALUES (173450284, 'Julie', 'Prefetch', '26 Avenue St.', 'jp123@intel.com', 83, '$40 voucher','12 recorded transactions' );
INSERT INTO "Customer" VALUES (920273893, 'John', 'Tory', '33 Dundas St.', 'jt321@yahoo.com', 323, '$10 voucher', '22 recorded transactions');
INSERT INTO "Customer" VALUES (213210384, 'Alice', 'Jameson', '22 Main St.', 'aj@hotmail.com', 32, '$10 voucher', '32 recorded transactions');
INSERT INTO "Customer" VALUES (321303284, 'Alessandro', 'Profenna', '8 Dundas St.', 'aprofenna@gmail.com', 0, '$5 coupon', '0 recorded transations');

--Employee
INSERT INTO "Employee" VALUES (4533212, 'Jack', 'Jackson', '32 Coxwell Ave.', 'jackj@domain.com', 40, 6471111111, 24, 'TD Bank');
INSERT INTO "Employee" VALUES (2203293, 'Tai', 'Xiao-long', '53 Prince St.', 'taixl@domain.com', 32, 6371614411, 16, 'Royal Bank of Canada');
INSERT INTO "Employee" VALUES (1104392, 'Zainab', 'Fatiha', '5 Thorncliffe Park', 'zainabf@domain.com', 13, 4161314411, 12, 'Bank of Montreal');
INSERT INTO "Employee" VALUES (8324302, 'Bob', 'Builder', '93 Jump St.', 'bobb@domain.com', 40, 4161111771, 18, 'CIBC');

-- Items
INSERT INTO "Item" VALUES (139231823, 'Pool-table', 323, 6);
INSERT INTO "Item" VALUES (243023832, 'Budwiser 6pk', 30, 12);
INSERT INTO "Item" VALUES (343934849, 'Van Wiper Fluid', 45, 10);
INSERT INTO "Item" VALUES (443209434, 'Cuisinart Blender', 239, 6);

--Store
INSERT INTO "Store" VALUES (2212, 'Leadside store', 'Leaside Branch', 9098);
INSERT INTO "Store" VALUES (3213, 'Eglinton store', 'Eglinton Branch', 1034);
INSERT INTO "Store" VALUES (4431, 'Don Mills store', 'Don Mills Branch', 5054);

--Billing
-- Assuming the last field in the VALUES list is meant to be Transaction_Date
INSERT INTO "Billing" VALUES (42856, 23, 177, 0, 'Debit', 'Accepted', 'None', TO_DATE('2023-02-25', 'YYYY-MM-DD'));
INSERT INTO "Billing" VALUES (39024, 63, 485, 32, 'Cash', 'Accepted', 'None', TO_DATE('2023-09-25', 'YYYY-MM-DD'));
INSERT INTO "Billing" VALUES (80123, 362, 453, 0, 'Credit', 'Denied', 'None', TO_DATE('2023-07-25', 'YYYY-MM-DD'));
