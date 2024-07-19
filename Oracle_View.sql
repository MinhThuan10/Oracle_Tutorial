create table suppliers
(
supplier_id number,
supplier_name varchar2(4000),
supplier_address varchar2(4000)
)

create table orders
(
order_no number,
quantity number,
price number
)

create view sup_orders as
select suppliers.supplier_id, orders.quantity, orders.price
from suppliers
inner join orders
on suppliers.supplier_id = supplier_id
where suppliers.supplier_name = 'VOJO';

select * from sup_orders;


create or replace view sup_orders as
select suppliers.supplier_id, orders.quantity, orders.price
from suppliers
inner join orders
on suppliers.supplier_id = supplier_id
where suppliers.supplier_name = 'HCL';

SELECT * FROM sup_orders; 


drop view sup_orders;