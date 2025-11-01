
CREATE TABLE Patient (
    PatientID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Gender ENUM('Male', 'Female', 'Other'),
    Age INT CHECK (Age BETWEEN 0 AND 120),
    Phone VARCHAR(15),
    Address VARCHAR(100)
);

CREATE TABLE Doctor (
    DoctorID INT AUTO_INCREMENT PRIMARY KEY,
    DoctorName VARCHAR(100) NOT NULL,
    Specialization VARCHAR(100),
    Phone VARCHAR(15),
    Email VARCHAR(100)
);


CREATE TABLE Appointment (
    AppointmentID INT AUTO_INCREMENT PRIMARY KEY,
    PatientID INT,
    DoctorID INT,
    AppointmentDate DATE,
    AppointmentTime TIME,
    Purpose VARCHAR(255),
    FOREIGN KEY (PatientID) REFERENCES Patient(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctor(DoctorID)
);


CREATE TABLE Manager (
    Mgr_id NUMBER PRIMARY KEY NOT NULL,
    Mgr_fname varchar(50) NOT NULL,
    Mgr_lname varchar(50) NOT NULL,
    Mgr_phone varchar(50) NOT NULL,
    Mgr_address  varchar(50)
);
CREATE TABLE Employee (
    E_id NUMBER(10) PRIMARY KEY,
    E_fname VARCHAR(50) NOT NULL,
    E_lname VARCHAR(50) NOT NULL,
    E_phone VARCHAR(50) NOT NULL,
    E_address VARCHAR(50)
);
CREATE TABLE Stock(
    D_ID number(10),
    D_name varchar(50) NOT NULL,
    D_category varchar(50) NOT NULL,
    D_company varchar(50) NOT NULL,
    D_qnty  NUMBER NOT NULL,
    D_cost NUMBER NOT NULL,
    Mgr_id Number(10),
    Primary Key(D_ID),
    Foreign Key(Mgr_id) references Manager(Mgr_id)
);
CREATE TABLE Medicine (
    M_id Number(10),
    M_name varchar(50) NOT NULL,
    M_qnty  int NOT NULL,
    Primary Key(M_id),
    D_id Number(10),
    FOREIGN KEY(D_id) REFERENCES Stock(D_id)
);
CREATE TABLE Customer (
    Cus_id NUMBER(10) PRIMARY KEY,
    Cus_fname VARCHAR(50) NOT NULL,
    Cus_lname VARCHAR(50) NOT NULL,
    Cus_gender VARCHAR(50),
    E_id NUMBER(10),
    M_id NUMBER(10),
    FOREIGN KEY (E_id) REFERENCES Employee(E_id),
    FOREIGN KEY (M_id) REFERENCES Medicine(M_id)
);
CREATE TABLE Bill (
    B_receiptId NUMBER(10) PRIMARY KEY,
    B_quantity NUMBER NOT NULL,
    B_totalAmount NUMBER NOT NULL,
    B_date DATE NOT NULL,
    Cust_id NUMBER(10),
    FOREIGN KEY (Cust_id) REFERENCES Customer (Cus_id)
);
CREATE TABLE Cashier (
    C_id NUMBER(10) PRIMARY KEY,
    C_fname VARCHAR(50) NOT NULL,
    C_lname VARCHAR(50) NOT NULL,
    C_phone VARCHAR(50) NOT NULL,
    C_address VARCHAR(50),
    B_receiptId NUMBER(10),
    FOREIGN KEY (B_receiptId) REFERENCES Bill (B_receiptId)
);
CREATE TABLE Record (
    R_date DATE PRIMARY KEY NOT NULL,
    R_totalItems NUMBER NOT NULL,
    R_grandTotal NUMBER NOT NULL,
    R_totalProfit NUMBER NOT NULL,
    Mgr_id NUMBER(10),
    C_fname VARCHAR(50),
    FOREIGN KEY (Mgr_id) REFERENCES Manager (Mgr_id),
    FOREIGN KEY (C_fname) REFERENCES Cashier (C_fname)
);
