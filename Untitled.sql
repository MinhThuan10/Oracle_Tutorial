// Before Insert/ Update/ Delete Trigger

CREATE OR REPLACE TRIGGER  "SUPPLIERS_T1"   
BEFORE  
insert or update or delete on "SUPPLIERS"  
for each row  
begin  
IF INSERTING THEN
    null;
ELSIF UPDATING THEN
    null;
ELSIF DELETING THEN
    null;
END IF; 
end;  
/  
ALTER TRIGGER  "SUPPLIERS_T1" ENABLE  
/  




CREATE OR REPLACE TRIGGER  "SUPPLIERS_T2"   
AFTER  
insert or update or delete on "SUPPLIERS"  
for each row  
begin  
IF INSERTING THEN
    null;
ELSIF UPDATING THEN
    null;
ELSIF DELETING THEN
    null;
END IF; 
end;  
/  
ALTER TRIGGER  "SUPPLIERS_T2" ENABLE  
/



Drop trigger SUPPLIERS_T1;


ALTER TABLE SUPPLIERS DISABLE ALL TRIGGERS;  

ALTER TABLE SUPPLIERS ENABLE ALL TRIGGERS;  