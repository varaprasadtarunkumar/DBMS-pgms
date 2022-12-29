set serveroutput on
declare
c number;
i number;
svar number;
begin
select count(rollno) into c from students_517;
i :=1;
while i <c loop
select length(name) into svar from students_517 where rollno=i;
dbms_output.put_line(svar);
i :=i+1;
end loop;
end;
/
