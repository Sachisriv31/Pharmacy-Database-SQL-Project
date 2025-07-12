SELECT * FROM Manager;
SELECT * FROM Employee;
SELECT * FROM Stock;
SELECT * FROM Medicine;
SELECT * FROM Customer;
SELECT * FROM Bill;
SELECT * FROM Cashier;
SELECT * FROM Record;

SELECT * FROM Stock WHERE D_name LIKE 'Paracetomol';
SELECT * FROM Medicine WHERE M_name LIKE 'Aspirin';

UPDATE Manager SET Mgr_address = 'Chandigarh' WHERE Mgr_id = 103;
UPDATE Customer SET Cus_fname = 'Riya', Cus_lname= 'Shah' WHERE Cus_id = 1001;

DELETE FROM Bill WHERE B_Receiptid=2003;
DELETE FROM Record WHERE TO_DATE(R_Date, 'DD-MM-YYYY') = TO_DATE('15-07-2023', 'DD-MM-YYYY');

SELECT Medicine.M_name, Stock.D_id, Stock.D_name, Stock.D_cost, Stock.D_qnty, Stock.D_company
FROM Medicine JOIN Stock ON Stock.D_name = Medicine.M_name;

ALTER TABLE Manager ADD Gender varchar(90);
ALTER TABLE Stock DROP COLUMN D_category;

SELECT SUM(M_qnty) FROM Medicine;
SELECT AVG(R_grandTOTAL) FROM Record;