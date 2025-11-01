INSERT INTO Manager VALUES (101,'Sachin','Srivastava','9457234859','Lucknow');

INSERT INTO Employee VALUES (110,'Aryan','Singh','9832849865','Delhi');
INSERT INTO Employee VALUES (111,'Tanvi','Sharma','9457134559','Jaipur');
INSERT INTO Employee VALUES (112,'Hari','Kumar','9457134889','Noida');

INSERT INTO Stock VALUES (20,'Paracetomol','Analgesic','Cipla',05,60,103);
INSERT INTO Stock VALUES (22,'Aspirin','Nonsteroidal Anti-Inflammatory Drug','Bayer',45,60,103);
INSERT INTO Stock VALUES (24,'Atorvastatin ','Statin','Sun Pharmaceutical',45,65,103);
INSERT INTO Stock VALUES (25,'Ciprofloxacin','Antibiotic','Sun Pharmaceutical',15,50,103);
INSERT INTO Stock VALUES (27,'Metformin','Antidiabetic',' Lupin Limited',20,70,103);

INSERT INTO Medicine VALUES (300,'Aspirin',5,20);
INSERT INTO Medicine VALUES (301,'Ciprofloxacin',3,25);
INSERT INTO Medicine VALUES (303,'Metformin',7,27);

INSERT INTO Customer VALUES (1001,'Raj','Sinha','Male',110,300);
INSERT INTO Customer VALUES (1002,'Pari','Rastogi','Female',111,301);
INSERT INTO Customer VALUES (1003,'Rahul','Gupta','Male',112,303);

INSERT INTO Bill VALUES (2001, 3, 100, TO_DATE('2022.07.02', 'YYYY.MM.DD'), 1001);
INSERT INTO Bill VALUES (2002, 2, 120, TO_DATE('2023.07.04', 'YYYY.MM.DD'), 1002);
INSERT INTO Bill VALUES (2003, 4, 150, TO_DATE('2023.07.16', 'YYYY.MM.DD'), 1003);

INSERT INTO Cashier VALUES (1,'Naman','Shukla','9867457891','Delhi',2001);

INSERT INTO Record VALUES (TO_DATE('2020-07-12', 'YYYY-MM-DD'), 15, 1500, 600, 103, 'Naman');
INSERT INTO Record VALUES (TO_DATE('2023-07-15', 'YYYY-MM-DD'), 20, 1600, 700, 103, 'Naman');
INSERT INTO Record VALUES (TO_DATE('2023-07-21', 'YYYY-MM-DD'), 45, 1800, 800, 103, 'Naman');

INSERT INTO Patient (FirstName, LastName, Gender, Age, Phone, Address)
VALUES ('Aarav', 'Sharma', 'Male', 32, '9876543210', 'Lucknow'),
       ('Isha', 'Verma', 'Female', 28, '9845012345', 'Delhi');

INSERT INTO Doctor (DoctorName, Specialization, Phone, Email)
VALUES ('Dr. Meera Nair', 'Cardiology', '9123456789', 'meera.nair@hospital.com'),
       ('Dr. Rohan Kapoor', 'Neurology', '9871234560', 'rohan.kapoor@hospital.com');

INSERT INTO Appointment (PatientID, DoctorID, AppointmentDate, AppointmentTime, Purpose)
VALUES (1, 1, '2025-11-02', '10:00:00', 'Routine Checkup'),
       (2, 2, '2025-11-03', '12:30:00', 'Migraine Consultation');
