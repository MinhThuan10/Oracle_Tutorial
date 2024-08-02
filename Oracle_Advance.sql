create table "user" (id number(10) primary key,name varchar2(100)); 

CREATE OR REPLACE PROCEDURE "INSERTUSER" (
    id IN NUMBER,
    name IN VARCHAR2
)
IS
BEGIN
    INSERT INTO "user" (id, name) VALUES (id, name);
END;
/

SET SERVEROUTPUT ON;

DROP PROCEDURE "INSERTUSER"


BEGIN    
   insertuser(101,'Rahul');  
   dbms_output.put_line('record inserted successfully');    
END;    
/  

select * from "user";

DROP PROCEDURE pro1


//Function

create or replace function adder (n1 in number, n2 in number)
return number
is
n3 number(8);
begin
n3 := n1+n2;
return n3;
end;
/


declare
    n3 number(2);
begin
    n3 := adder(11, 22);
    dbms_output.put_line('Addtion id: ' || n3);
end;
/

DECLARE  
   a number;  
   b number;  
   c number;  
FUNCTION findMax(x IN number, y IN number)   
RETURN number  
IS  
    z number;  
BEGIN  
   IF x > y THEN  
      z:= x;  
   ELSE  
      Z:= y;  
   END IF;  
  
   RETURN z;  
END;   
BEGIN  
   a:= 23;  
   b:= 45;  
  
   c := findMax(a, b);  
   dbms_output.put_line(' Maximum of (23,45): ' || c);  
END;  
/  



CREATE OR REPLACE FUNCTION totalCustomers  
RETURN number IS  
   total number(2) := 0;  
BEGIN  
   SELECT count(*) into total  
   FROM customers;  
    RETURN total;  
END;  
/ 


DECLARE  
   c number(2);  
BEGIN  
   c := totalCustomers();  
   dbms_output.put_line('Total no. of Customers: ' || c);  
END;  
/  




DECLARE  
   num number;  
   factorial number;  
  
FUNCTION fact(x number)  
RETURN number   
IS  
   f number;  
BEGIN  
   IF x=0 THEN  
      f := 1;  
   ELSE  
      f := x * fact(x-1);  
   END IF;  
RETURN f;  
END;  
  
BEGIN  
   num:= 6;  
   factorial := fact(num);  
   dbms_output.put_line(' Factorial '|| num || ' is ' || factorial);  
END;  
/  


// Cursor

CURSOR c1  
IS  
SELECT course_id  
FROM courses  
WHERE course_name = name_in;  