//Oracle queries
//select
select * from newcustomers;

//insert
insert into newcustomers values(101, 'rahul', 'delhi');

// Update
update newcustomers set customer_name = 'bob', city = 'london' where customer_id = 101;

// delete
delete from newcustomers where customer_id = 101;

//truncae
truncate table newcustomers;

//drop

drop table newcustomers;

//create
create table customers
(
id number(10) not null,
name varchar2(50) not null,
city varchar2(50),
constraint new_customers_pk PRIMARY key (id)
);

//alter query
alter table customers
add age varchar2(50);

//////Oracle select
SELECT * FROM customers;

select name, city, age
from customers
where age < 25
order by age asc;

select customers.name, courses.train
from courses inner join customers on courses.course_id = course_id
order by name;

///////////Orecle insert
insert into customers (id, name, city, age)
values (1, 'thuan', 'HoChiMinh', '18');

//insert bay select statement
insert into customers (age, city)
select age, address
from newcustomers3
where age > 20;


select count(*)
from customers
where age > 20;


////////Insert all staement

insert all
into customers(id, name, city, age) values (2, 'huyen', 'gialai', '19')
into customers(id, name, city, age) values (3, 'anh', 'daklak', '20')
select * from dual;

//////////////upfate table

update customers
set name = 'trang',
    city = 'quannam'
where id = '3';

update customers
set name = (select supplier_name from suppliers where suppliers.supplier_name = customers.name)
where age < 25;


/////////////delete
delete from cusomers
where name = 'trang';


delete from customers
where name = 'trang' and id > 1;

/////////////truncate table

truncate table  customers;

delete table customers;