-- create database
create database deloitte;
-- rename database deloitte
ALTER database deloitte 
rename to AMX;
-- delete database
drop database AMX;
-- CREATE TABLE 
CREATE TABLE CUSTOMER(
CUST_ID INT PRIMARY KEY,
NAME VARCHAR(50) NOT NULL,
EMAIL VARCHAR(50)UNIQUE,
AGE INT CHECK (AGE BETWEEN 18 AND 70),
CITY VARCHAR(50),
SIGNUP_DATE DATE);

CREATE TABLE ORDERSS(
ORDER_ID INT PRIMARY KEY,
CUST_ID INT,
ORDER_DATE DATE,
ORDER_STATUS VARCHAR(50) DEFAULT 'PENDING',
FOREIGN KEY (CUST_ID) REFERENCES CUSTOMER(CUST_ID));

--INSERT DATA IN THE TABLE
INSERT INTO CUSTOMER (CUST_ID, NAME, EMAIL, AGE, CITY, SIGNUP_DATE)
VALUES
(101, 'Aarav Sharma', 'aarav.sharma@gmail.com', 25, 'Delhi', '2024-01-15'),
(102, 'Priya Verma', 'priya.verma@gmail.com', 28, 'Mumbai', '2024-02-10'),
(103, 'Rohan Gupta', 'rohan.gupta@gmail.com', 30, 'Bengaluru', '2024-03-05'),
(104, 'Sneha Kapoor', 'sneha.kapoor@gmail.com', 24, 'Jaipur', '2024-03-20'),
(105, 'Aditya Singh', 'aditya.singh@gmail.com', 27, 'Lucknow', '2024-04-12'),
(106, 'Neha Jain', 'neha.jain@gmail.com', 29, 'Pune', '2024-05-08'),
(107, 'Karan Malhotra', 'karan.m@gmail.com', 31, 'Chandigarh', '2024-05-25'),
(108, 'Ananya Das', 'ananya.das@gmail.com', 23, 'Kolkata', '2024-06-14'),
(109, 'Vikram Mehta', 'vikram.mehta@gmail.com', 35, 'Ahmedabad', '2024-07-03'),
(110, 'Ishita Bansal', 'ishita.b@gmail.com', 26, 'Noida', '2024-08-18');

INSERT INTO ORDERSS (ORDER_ID, CUST_ID, ORDER_DATE, ORDER_STATUS)
VALUES
(1001, 101, '2024-09-01', 'Delivered'),
(1002, 102, '2024-09-02','Delivered'),
(1003, 103, '2024-09-03', 'Shipped'),
(1004, 104, '2024-09-04', 'Cancelled'),
(1005, 105, '2024-09-05', 'Delivered'),
(1006, 101, '2024-09-06', 'Shipped'),
(1007, 106, '2024-09-07', 'Pending'),
(1008, 107, '2024-09-08', 'Delivered'),
(1009, 108, '2024-09-09', 'Delivered'),
(1010, 109, '2024-09-10', 'Cancelled'),
(1011, 110, '2024-09-11', 'Shipped'),
(1012, 103, '2024-09-12', 'Delivered'),
(1013, 104, '2024-09-13', 'Pending'),
(1014, 105, '2024-09-14', 'Delivered'),
(1015, 102, '2024-09-15', 'Shipped');
-- reanme table
ALTER TABLE CUSTOMER 
RENAME TO CUSTOMERSS;
--DELETE TABLE 
DROP TABLE ORDERSS;
-- DELETE DATA WHICH BELONG TO CITY DELHI
DELETE FROM CUSTOMERSS
WHERE CITY = 'Delhi';
-- add column 
alter table customerss
add column gender varchar(10);
-- rename column
alter table customerss
rename city to cities;
-- delete column
alter table customerss
drop column cities;
-- change data type of column gender
alter table customerss
alter column gender type text;
-- update data in table
update customerss
set name ='Khushi'
where cust_id =101;