select * from dba_data_files ;

select tablespace_name, bigfile  from dba_tablespaces ;

show parameter control


SELECT * FROM v$parameter 
where regexp_like(name, 'control');

show parameter control

select * from v$log;


create table hr.emp2 tablespace users as select * from hr.employees ;

commit;

create table hr.big tablespace users as select * from dba_objects ;

insert into hr.big select * from hr.big ;

SELECT * FROM HR.COUNTRIES;


select * from v$bgprocess 
where paddr <>'00'; 
