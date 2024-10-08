-- Create a login for Bob
CREATE LOGIN Bob_Pulson
WITH PASSWORD = 'MrF!x!tB0B';

-- Create a user for Bob
USE Bob Database;
CREATE USER Bob_P FOR LOGIN Bob_Pulson;

-- Grant Bob the ability to view data in all tables
GRANT SELECT ON CUSTOMER TO Bob_P;
GRANT SELECT ON BID TO Bob_P;
GRANT SELECT ON REPAIR TO Bob_P;
GRANT SELECT ON SUPPLIER TO Bob_P;
GRANT SELECT ON CUSTOMER_PAYMENT TO Bob_P;
GRANT SELECT ON MATERIAL TO Bob_P;
GRANT SELECT ON SUPPLIER_PAYMENT TO Bob_P;

-- Grant Bob the ability to insert, update, delete data in all tables
GRANT INSERT, UPDATE, DELETE ON CUSTOMER TO Bob_P;
GRANT INSERT, UPDATE, DELETE ON BID TO Bob_P;
GRANT INSERT, UPDATE, DELETE ON REPAIR TO Bob_P;
GRANT INSERT, UPDATE, DELETE ON SUPPLIER TO Bob_P;
GRANT INSERT, UPDATE, DELETE ON CUSTOMER_PAYMENT TO Bob_P;
GRANT INSERT, UPDATE, DELETE ON MATERIAL TO Bob_P;
GRANT INSERT, UPDATE, DELETE ON SUPPLIER_PAYMENT TO Bob_P;

--Create a login for Wendy
CREATE LOGIN Wendy_Simpson
WITH PASSWORD = '$id3kickWendy';

-- Create a user for Wendy
USE Bob Database;
CREATE USER Wendy_S FOR LOGIN Wendy_Simpson;

-- Grant Wendy the ability to view all data in all tables
GRANT SELECT ON CUSTOMER TO Wendy_S;
GRANT SELECT ON BID TO Wendy_S;
GRANT SELECT ON REPAIR TO Wendy_S;
GRANT SELECT ON SUPPLIER TO Wendy_S;
GRANT SELECT ON CUSTOMER_PAYMENT TO Wendy_S;
GRANT SELECT ON MATERIAL TO Wendy_S;
GRANT SELECT ON SUPPLIER_PAYMENT TO Wendy_S;

-- Grant Wendy the ability to insert supplier detail information into the SUPPLIER table
GRANT INSERT ON SUPPLIER TO Wendy_S;
