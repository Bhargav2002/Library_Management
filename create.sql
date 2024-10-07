-- Create table for Student
CREATE DATABASE IF NOT EXISTS Library;
USE Library;
CREATE TABLE IF NOT EXISTS Student (
    Student_ID INT PRIMARY KEY,
    FName VARCHAR(50),
    MName VARCHAR(50),
    LName VARCHAR(50),
    Course_Department VARCHAR(50),
    Email VARCHAR(100),
    Phone_Number VARCHAR(15)
);

-- Create table for Employee
CREATE TABLE IF NOT EXISTS Employee (
    Emp_ID VARCHAR(10) PRIMARY KEY,
    EFName VARCHAR(50),
    EMName VARCHAR(50),
    ELName VARCHAR(50),
    Designation VARCHAR(100),
    Emp_Email VARCHAR(100),
    Emp_Contact_Number VARCHAR(15),
    D_Id INT,
    FOREIGN KEY (D_Id) REFERENCES Department(Dept_ID)
);

-- Create table for Department
CREATE TABLE IF NOT EXISTS Department (
    Dept_ID INT PRIMARY KEY,
    Dept_Name VARCHAR(100)
);

-- Create table for Book
CREATE TABLE IF NOT EXISTS Book (
    Book_ID VARCHAR(10) PRIMARY KEY,
    Title VARCHAR(100),
    Author VARCHAR(100),
    Year INT,
    Subject_Matter VARCHAR(20),
    Availability BOOLEAN,
    FOREIGN KEY (Subject_Matter) REFERENCES Rack_info(Sub_Matter)
);

-- Create table for Rack_info
CREATE TABLE IF NOT EXISTS Rack_info (
    Sub_Matter VARCHAR(20) PRIMARY KEY,
    Rack_Number INT
);

-- Create table for Issued_books
CREATE TABLE IF NOT EXISTS Issued_books (
    B_ID VARCHAR(10),
    S_ID INT,
    Due_Date DATE,
    Returned BOOLEAN,
    PRIMARY KEY (B_ID, S_ID, Due_Date)
);

-- Create table for Issued_by
CREATE TABLE IF NOT EXISTS Issued_by (
    ID VARCHAR(10),
    E_ID VARCHAR(10),
    Issued_Date DATE,
    PRIMARY KEY (ID, E_ID, Issued_Date)
);

-- Create table for Fine
CREATE TABLE IF NOT EXISTS Fine (
    Std_ID INT,
    Bk_ID VARCHAR(10),
    Fine_Amnt INT,
    PRIMARY KEY (Std_ID, Bk_ID, Fine_Amnt)
);


CREATE TABLE IF NOT EXISTS User_aut(
	U_name VARCHAR(20),
	U_pass VARCHAR(20),
	U_role INT,
    PRIMARY KEY (U_name,U_role),
    FOREIGN KEY (U_role) REFERENCES  Role_Desc(Role_Num)
);
CREATE TABLE IF NOT EXISTS Role_Desc(
Role_Num INT,
Role_Description VARCHAR(100),
primary key (Role_Num)
);

