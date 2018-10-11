
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

alter table student1.memb2 enable row movement ;
flashback table student1.memb2 to timestamp to_timestamp('11.10.18 11:58:16,000000000') ;

select * from student1.memb2;


sho parameter undo

select 60*60*8 from dual ;
alter system set undo_retention=28800 ;




alter user dbsnmp identified by oracle account unlock ;



alter database enable block change tracking ;




select * from dba_profiles;


create sequence student1.memb2_seq start with 510 ;

insert into student1.memb2( memberid, lastname) 
values( student1.memb2_seq.nextval, 'Pupkin') ;

insert into student1.memb2( memberid, lastname) 
values( student1.memb2_seq.nextval, 'Mupkin') ;

select student1.memb2_seq.currval from dual ;




create user user_pw identified by 123 ;
grant connect to user_pw ;

connect user_pw/123@db0
select * from user_users ;

show parameter prefix
show parameter auth
create user ops$user1 identified externally ;

grant create session to  ops$user1 ;

create user glob_vpup identified globally as 'cn=Vasiliy Pupkin,ou=academy,o=lanit' ;


alter user user_pw identified by abc123 ;


select * from dba_source
where regexp_like (name , 'verify','i') ;


grant connect ,resource to user2 identified by 123; 

connect user2/123@db0
select * from user_users ;


