
show parameter create
alter system set db_create_file_dest='/u01/data' ;


create tablespace omf_demo ;

alter tablespace omf_demo add datafile size 10m ;

select file#, name from v$datafile;

select * from dba_data_files; 


show parameter recovery

show parameter control



select * from student1.memb2;


 update student1.memb2 set salary=36000;
 
 commit;
 
select * from student1.memb2;

select * from student1.memb2 
        as of timestamp sysdate - 2;
        
 
select m2.lastname, m2.salary, versions_starttime, versions_endtime, versions_operation  
from student1.memb2
        versions between scn minvalue and maxvalue  m2 
where lastname='Zona' ; 
