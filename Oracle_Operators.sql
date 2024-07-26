select id
from customers
union
select rcustomer_id
from newcustomers3;


select id, name
from customers
where id < 5
union
select rcustomer_id, ircustomer_name
from newcustomers3
where newcustomers3.ircustomer_name = 'abc'
order by 1;


select id
from customers
union all
select rcustomer_id
from newcustomers3;


select id
from customers
INTERSECT
select rcustomer_id
from newcustomers3;


select id, name
from customers
where id < 5
INTERSECT
select rcustomer_id, ircustomer_name
from newcustomers3
where newcustomers3.ircustomer_name = 'abc';


select id
from customers
Minus
select rcustomer_id
from newcustomers3;