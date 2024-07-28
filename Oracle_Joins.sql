select customers.id, newcustomers3.rc_city
from customers inner join newcustomers3
on customers.id = newcustomers3.rcustomer_id;

select customers.id, newcustomers3.rc_city
from customers left outer join newcustomers3
on customers.id = newcustomers3.rcustomer_id;

select customers.id, newcustomers3.rc_city
from customers right outer join newcustomers3
on customers.id = newcustomers3.rcustomer_id;

select customers.id, newcustomers3.rc_city
from customers full outer join newcustomers3
on customers.id = newcustomers3.rcustomer_id;


//Equi join

select customers.id, newcustomers3.rc_city
from customers, newcustomers3
where customers.id = newcustomers3.rcustomer_id;


//Self join - tu join voi chinh no
select a.id, b.age
from customers a, customers b
where a.id < b.id;

// Cross : lay het cac cot trong bang
select * from customers, newcustomers3;


//Anti tra ve bang1 vaf ko co trong bang 2
select customers.id, customers.age
from customers
where not exists
(
select 1
from newcustomers3
where newcustomers3.rcustomer_id = customers.id
)
order by customers.id;


//Semi join tra ve 1 ket qua thoi
select customers.id, customers.age
from customers
where exists
(
select 1
from newcustomers3
where newcustomers3.rcustomer_id = customers.id
)
order by customers.id