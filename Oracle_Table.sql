//Oracle Tables
//Create Tables

CREATE TABLE customers
(
    customer_id number(10) NOT NULL,
    customer_name VARCHAR2(50) NOT NULL,
    city varchar2(50),
    CONSTRAINT customers_pk PRIMARY KEY (customer_id)
);

//Create table As
//copying all columns of another table
CREATE TABLE newcustomers
AS(SELECT * FROM customers WHERE customer_id < 5000);

//copying selected columns of another table
CREATE TABLE newcustomer2
AS(SELECT customer_id, customer_name FROM customers WHERE customer_id < 5000);

//copying selected columns from multiple tables
CREATE TABLE regularcustomers
(
    rcustomer_id NUMBER(10, 0) NOT NULL ENABLE,
    rcustomer_name VARCHAR2(50) NOT NULL ENABLE,
    rc_city VARCHAR2(50)
);

CREATE TABLE irregularcustomers
(
    ircustomer_id NUMBER(10, 0) NOT NULL ENABLE,
    ircustomer_name VARCHAR2(50) NOT NULL ENABLE,
    irc_city VARCHAR2(50)
);


CREATE TABLE newcustomers3
AS(SELECT regularcustomers.rcustomer_id, regularcustomers.rc_city, irregularcustomers.ircustomer_name 
    FROM regularcustomers, irregularcustomers
    where regularcustomers.rcustomer_id = irregularcustomers.ircustomer_id AND regularcustomers.rcustomer_id < 5000)
    
    
//Alter table
//add column in table

ALTER TABLE customers
    ADD customer_age varchar2(50);

//add multiple columns in the existing table
ALTER TABLE customers
    add (customer_type varchar2(50), customer_address varchar2(50));
    
// modify column of a table

alter table customers
modify customer_name varchar2(100);

// modify multiple columns of table
alter table customers
modify(customer_name varchar2(50), city varchar2(100));

//Drop column table
alter table customers
drop column customer_name;

//rename column of a table
alter table customers
rename column customer_age to cage;

//rename table
alter table customers
rename to retailers;

//Droptable
drop table newcustomer2 purge;

//Global Temporary tables
create global temporary table students
(
student_id numeric(10) not null,
student_name varchar2(50) not null,
student_address varchar2(50)
);
